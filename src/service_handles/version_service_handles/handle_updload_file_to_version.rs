use configs::ConfigTrait;

use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tokio_stream::{wrappers::ReceiverStream, StreamExt};
use dependencies_sync::tonic::async_trait;
use dependencies_sync::tonic::{Response, Status};
use dependencies_sync::{tokio, tokio::sync::mpsc};

use data_server::file_utils::check_chunk_md5;
use data_server::ResumePoint;
use dependencies_sync::log::{debug, error, info};

use validates::validate_entity_id;

use crate::data_server::data::get_data_data_type;
use crate::data_server::version::{add_file_to_data_path, resolve_data_dir_path};
use crate::data_server_configs::DataServerConfigs;

use crate::ids_codes::manage_ids::*;
use crate::protocols::*;
use crate::validates::{validate_stage, validate_subpath, validate_version};

use crate::data_server::{self, get_upload_delegator};
use request_utils::request_account_context;

use service_utils::types::{RequestStream, ResponseStream, StreamResponseResult};

#[async_trait]
pub trait HandleUploadFileToVersion {
    async fn handle_upload_file_to_version(
        &self,
        request: RequestStream<UploadFileToVersionRequest>,
    ) -> StreamResponseResult<UploadFileToVersionResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_upload_file_to_version)
            .await
    }
}

async fn validate_view_rules(
    request: RequestStream<UploadFileToVersionRequest>,
) -> Result<RequestStream<UploadFileToVersionRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = DATAS_MANAGE_ID;
        let (_account_id, _groups, role_group) = request_account_context(request.metadata())?;
        if let Err(e) =
            view::validates::validate_collection_can_write(&manage_id, &role_group).await
        {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: RequestStream<UploadFileToVersionRequest>,
) -> Result<RequestStream<UploadFileToVersionRequest>, Status> {
    Ok(request)
}

async fn handle_upload_file_to_version(
    request: RequestStream<UploadFileToVersionRequest>,
) -> StreamResponseResult<UploadFileToVersionResponse> {
    let (account_id, _groups, _role_group) = request_account_context(request.metadata())?;

    let mut in_stream = request.into_inner();
    let first_request = if let Some(in_data) = in_stream.next().await {
        if let Ok(r) = in_data {
            r
        } else {
            return Err(Status::data_loss(t!("请求数据错误")));
        }
    } else {
        return Err(Status::data_loss(t!("数据流错误")));
    };

    let specs_id = first_request.specs_id.clone();
    let data_id = first_request.data_id.clone();
    let stage = first_request.stage.clone();
    let version = first_request.version.clone();
    let sub_path = first_request.sub_path.clone();
    let file_info = first_request.file_info.clone().unwrap();

    validate_entity_id(SPECSES_MANAGE_ID, &specs_id).await?;
    validate_entity_id(DATAS_MANAGE_ID, &data_id).await?;
    let stage_id = validate_stage(&data_id, &stage).await?;
    validate_version(&stage_id, &version).await?;
    validate_subpath(&sub_path)?;

    let data_type = if let Ok(r) = get_data_data_type(&data_id).await {
        r
    } else {
        return Err(Status::data_loss(t!("数据类型取得失败，数据错误")));
    };

    // TODO: 查询目标文件md5，如果相等，直接返回成功
    // 对于大文件生成md5比较耗时，所以客户端可以根据需要优化md5的生成, 一般不需要全文件md5

    let data_dir_path = match resolve_data_dir_path(&specs_id, &data_id, &stage, &version).await {
        Ok(p) => p,
        Err(e) => {
            error!("{}: {}", t!("获取数据路径失败"), e.details());
            return Err(Status::aborted(t!("获取数据路径失败").to_string()));
        }
    };

    let delegator_arc = if let Some(d) = get_upload_delegator() {
        d
    } else {
        return Err(Status::aborted(format!(
            "{}, {}",
            t!("获取文件上传代理失败"),
            t!("请重试上传或者等待3分钟后重试")
        )));
    };

    let (data_folder, data_file_path) = match delegator_arc.prepare_file_uploading(
        &data_dir_path,
        &sub_path,
        &file_info,
        file_info.size,
    ) {
        Ok(r) => r,
        Err(e) => {
            error!("{}: {}", t!("准备上传文件失败"), e.details());

            return Err(Status::aborted(format!(
                "{}-{}",
                e.details(),
                e.operation()
            )));
        }
    };

    // 磁盘空间是否足够
    if !delegator_arc.check_disk_space_enough(file_info.size).await {
        error!("{}: {}", t!("磁盘空间不足"), t!("无法上传文件"));

        return Err(Status::aborted(format!(
            "{}, {}",
            t!("磁盘空间不足"),
            t!("无法上传文件")
        )));
    };

    // 创建文件夹和文件
    let data_file = match delegator_arc
        .get_upload_target_file(&data_folder, &data_file_path)
        .await
    {
        Ok(f) => f,
        Err(e) => {
            error!("{}: {}", t!("获取上传文件失败"), e.details());

            return Err(Status::aborted(format!(
                "{}-{}",
                e.details(),
                e.operation()
            )));
        }
    };

    // zh: 接收文件流
    let ftx = match delegator_arc
        .get_receive_file_stream_sender(data_file, data_file_path.to_str().unwrap().to_string())
        .await
    {
        Ok(s) => s,
        Err(e) => {
            return Err(Status::aborted(format!(
                "{}-{}",
                e.operation(),
                e.details()
            )));
        }
    };

    //  zh: 续传起始数据块编号，如果没有续传从1开始
    let resume_point = delegator_arc
        .check_and_read_resume_point(&data_file_path)
        .await;

    let (mut next_chunk_index, mut resume_chunk_md5) = if let Ok(r) = resume_point {
        (r.chunk_index + 1, r.chunk_md5)
    } else {
        // 读取失败，从1开始
        (1, "".to_string())
    };

    info!(
        "{}: {}--{}",
        t!("开始接收文件"),
        &data_id,
        &file_info.file_name
    );

    // 交互流
    let (resp_tx, resp_rx) = mpsc::channel(5);

    if let Ok(_r) = resp_tx
        .send(Ok(UploadFileToVersionResponse {
            next_chunk_index: next_chunk_index as u64,
        }))
        .await
    {
        info!("{}: {}", t!("返回起始包编号"), &next_chunk_index);
    } else {
        return Err(Status::aborted("返回起始包编号失败。"));
    };

    // 2. 接收线程, 等待客户端发送完成后发出关闭信号后结束退出
    // 最大等待时长从设置读取，根据情况设定
    tokio::spawn(async move {
        let file_name = file_info.file_name.clone();
        let data_id = first_request.data_id.clone();
        let max_file_size = DataServerConfigs::get().max_file_size;
        let mut retry_count = 0u16;
        let mut total_transfered = 0u64;

        // 发送到文件写入流
        while let Some(result) = in_stream.next().await {
            match result {
                Ok(v) => {
                    debug!(
                        "{}: {}-{}-{}-{}",
                        t!("接收到数据块"),
                        v.data_id,
                        file_name,
                        v.current_chunk_index,
                        v.chunk.len()
                    );

                    // 文件最大限制坚持
                    total_transfered += v.chunk.len() as u64;
                    if total_transfered > max_file_size {
                        error!(
                            "{}: {}-{}-{}-{}",
                            t!("文件大小超过限制"),
                            v.data_id,
                            file_name,
                            v.current_chunk_index,
                            v.chunk.len()
                        );
                        return Err(Status::aborted(t!("文件超出最大限制")));
                    }

                    if v.current_chunk_index == 0 {
                        info!("{}, {}", t!("文件传输完"), t!("开始校验文件"));
                        // TODO: 文件校验, 失败
                        // 成功退出
                        break;
                    } else {
                        // 数据块校验, 如果失败则重发
                        if check_chunk_md5(&v.chunk_md5, &v.chunk) {
                            debug!("{}, {}", t!("数据块校验成功"), t!("发送到文件写入流"));

                            if let Ok(r) = ftx.send(v.chunk).await {
                                r
                            } else {
                                resp_tx
                                    .send(Err(Status::data_loss(t!("发送文件流失败"))))
                                    .await
                                    .expect("反馈错误失败。");
                                return Err(Status::data_loss(t!("发送文件流失败。")));
                            }
                            // 下一个数据块编号, 如果超过最大值则返回0，标志文件传输完成
                            next_chunk_index += 1;
                            resume_chunk_md5 = v.chunk_md5;
                            retry_count = 0;
                        } else {
                            info!("{}, {}", t!("数据块校验失败"), t!("重发数据块"));

                            // 不改变数据块编号
                            retry_count += 1;
                            // 重试次数超过5次则退出
                            if retry_count > 5 {
                                resp_tx
                                    .send(Err(Status::data_loss(format!(
                                        "{}, {}",
                                        t!("数据块校验失败"),
                                        t!("重试次数超过5次")
                                    ))))
                                    .await
                                    .expect(t!("反馈错误失败").as_ref());
                                return Err(Status::data_loss(format!(
                                    "{}, {}",
                                    t!("数据块校验失败"),
                                    t!("重试次数超过5次")
                                )));
                            }
                        }

                        if next_chunk_index as u64 > v.total_chunks {
                            debug!(
                                "{}, {}: {}",
                                t!("文件传输完"),
                                t!("返回0, 标志文件传输完成"),
                                file_name
                            );
                            next_chunk_index = 0;
                        }

                        if resp_tx
                            .send(Ok(UploadFileToVersionResponse {
                                next_chunk_index: next_chunk_index as u64,
                            }))
                            .await
                            .is_err()
                        {
                            resp_tx
                                .send(Err(Status::data_loss(t!("返回下一个包编号错误"))))
                                .await
                                .expect(t!("反馈错误失败").as_ref());
                            return Err(Status::data_loss(t!("返回下一个数据包编号失败")));
                        };
                    }
                }
                Err(_err) => {
                    // 记录续传点
                    if let Err(e) = delegator_arc
                        .record_resume_point(
                            &data_file_path,
                            ResumePoint {
                                chunk_index: next_chunk_index - 1,
                                chunk_md5: resume_chunk_md5,
                            },
                        )
                        .await
                    {
                        error!("{}: {}", t!("记录续件文件失败"), e.details());
                    }

                    resp_tx
                        .send(Err(Status::data_loss(t!("接收上传流发生错误"))))
                        .await
                        .expect("反馈错误失败。");
                    return Err(Status::data_loss(t!("接收文件上传错误")));
                }
            }
        }

        // zh: 文件上传成功结束
        match delegator_arc
            .delete_resume_point_file(&data_file_path)
            .await
        {
            Err(e) => {
                error!("{}: {}", t!("删除续件文件失败"), e.details());
                error!(
                    "{}: {}",
                    t!("需要手动删除续传文件"),
                    &data_file_path.clone().set_extension("resume")
                );
            }
            Ok(_) => {
                info!("{}: {}--{}。", t!("传输文件结束"), data_id, file_name);
            }
        }

        // 将文件添加到版本的文件表,
        if data_type != DataType::SequenceData {
            add_file_to_data_path(
                &stage,
                &version,
                data_file_path.to_str().unwrap(),
                &file_info,
                &account_id,
            )
            .await;
        }

        Ok(())
    });

    let resp_stream = ReceiverStream::new(resp_rx);

    Ok(Response::new(
        Box::pin(resp_stream) as ResponseStream<UploadFileToVersionResponse>
    ))
}
