use dependencies_sync::{tokio, tokio::sync::mpsc};

use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tokio_stream::{wrappers::ReceiverStream, StreamExt};
use dependencies_sync::tonic::{Response, Status};

use dependencies_sync::log::{error, info};
use dependencies_sync::tonic::async_trait;

use crate::data_server::file_utils::get_chunk_md5;
use crate::data_server::get_download_delegator;
use crate::data_server::version::resolve_data_dir_path;
use crate::ids_codes::manage_ids::{DATAS_MANAGE_ID, SPECSES_MANAGE_ID};
use crate::protocols::*;
use crate::validates::{validate_stage, validate_subpath, validate_version};
use validates::validate_entity_id;

use request_utils::request_account_context;

use service_utils::types::{RequestStream, ResponseStream, StreamResponseResult};

#[async_trait]
pub trait HandleDownloadFileFromVersion {
    async fn handle_download_file_from_version(
        &self,
        request: RequestStream<DownloadFileFromVersionRequest>,
    ) -> StreamResponseResult<DownloadFileFromVersionResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_download_file_from_version)
            .await
    }
}

async fn validate_view_rules(
    request: RequestStream<DownloadFileFromVersionRequest>,
) -> Result<RequestStream<DownloadFileFromVersionRequest>, Status> {
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
    request: RequestStream<DownloadFileFromVersionRequest>,
) -> Result<RequestStream<DownloadFileFromVersionRequest>, Status> {
    Ok(request)
}

async fn handle_download_file_from_version(
    request: RequestStream<DownloadFileFromVersionRequest>,
) -> StreamResponseResult<DownloadFileFromVersionResponse> {
    let (_account_id, _groups, _role_group) = request_account_context(request.metadata())?;

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
    let file_name = first_request.file_name.clone();
    let chunk_index = first_request.chunk_index;

    validate_entity_id(SPECSES_MANAGE_ID, &specs_id).await?;
    validate_entity_id(DATAS_MANAGE_ID, &data_id).await?;
    let stage_id = validate_stage(&data_id, &stage).await?;
    validate_version(&stage_id, &version).await?;
    validate_subpath(&sub_path)?;

    let data_dir_path = match resolve_data_dir_path(&specs_id, &data_id, &stage, &version).await {
        Ok(p) => p,
        Err(e) => {
            error!("{}: {}", t!("获取数据路径失败"), e.details());
            return Err(Status::aborted(t!("获取数据路径失败").to_string()));
        }
    };

    // 交互流
    let (resp_tx, resp_rx) = mpsc::channel(5);

    let delegator = if let Some(d) = get_download_delegator() {
        d
    } else {
        return Err(Status::aborted(t!(
            "获取文件下载代理失败, 请重试或者等待3分钟后重试"
        )));
    };

    let file_path = match delegator
        .check_request_file_exists(&data_dir_path, &sub_path, &file_name)
        .await
    {
        Ok(r) => r,
        Err(e) => {
            return Err(Status::aborted(format!(
                "{}-{}",
                e.details(),
                e.operation()
            )));
        }
    };

    // 绑定文件流
    let (ftx, mut frx) = mpsc::channel(5);
    match delegator
        .bind_file_stream_sender(file_path, chunk_index, ftx)
        .await
    {
        Ok(_s) => _s,
        Err(e) => {
            return Err(Status::aborted(format!(
                "{}-{}",
                e.operation(),
                e.details()
            )));
        }
    };

    // TODO: 续传检查
    //  起始数据块编号
    let mut current_chunk_index = chunk_index;

    info!(
        "{}: {data_id}--{stage}--{version}--{sub_path}--{file_name}",
        t!("开始发送文件"),
    );

    tokio::spawn(async move {
        let file_name = file_name.clone();
        let data_id = first_request.data_id.clone();

        let mut current_chunk = vec![];

        // TODO: 添加文件信息
        // 第一个包只包含文件信息，不包含数据
        let first_resp = DownloadFileFromVersionResponse {
            data_id: data_id.clone(),
            chunk_index: 0,
            chunk_md5: get_chunk_md5(&current_chunk),
            chunk: vec![],
        };

        if let Err(e) = resp_tx.send(Ok(first_resp.clone())).await {
            return Err(Status::aborted(format!("{}: {e}", t!("返回文件信息错误"))));
        };

        while let Some(request) = in_stream.next().await {
            match request {
                Ok(r) => {
                    // 如果请求编号为0，表示请求有错误，发送结束标识
                    if r.chunk_index == 0 {
                        current_chunk = vec![];
                        current_chunk_index = 0;
                    } else {
                        // 检查数据块编号,如果不是当前编号，发送新数据块
                        if r.chunk_index != current_chunk_index {
                            if let Some(chunk) = frx.recv().await {
                                current_chunk = chunk;
                                current_chunk_index = r.chunk_index;
                            } else {
                                // 到达文件末尾，发送结束标记
                                current_chunk = vec![];
                                current_chunk_index = 0;
                            }
                            info!(
                                "{}: {data_id}, {current_chunk_index}, {}, {}",
                                t!("发送数据块"),
                                t!("块大小"),
                                current_chunk.len()
                            );
                        } else {
                            // 重发数据块
                            info!(
                                "{}: {}-{}-{}",
                                t!("重新发送数据块"),
                                data_id,
                                current_chunk_index,
                                &current_chunk.len()
                            );
                        }
                    }

                    let current_resp = DownloadFileFromVersionResponse {
                        data_id: data_id.clone(),
                        chunk_index: current_chunk_index,
                        chunk_md5: get_chunk_md5(&current_chunk),
                        chunk: current_chunk.clone(),
                    };

                    if resp_tx.send(Ok(current_resp.clone())).await.is_err() {
                        resp_tx
                            .send(Err(Status::data_loss("发送下一个块错误。")))
                            .await
                            .expect("反馈错误失败。");

                        return Err(Status::data_loss(format!(
                            "发送数据包失败。{}",
                            current_chunk_index
                        )));
                    };
                }
                Err(e) => {
                    return Err(Status::data_loss(format!("下载请求错误。{}", e)));
                }
            }
        }

        // 文件上传结束后必须返还代理，否则将丢失代理

        info!("发送文件结束{}--{}。", data_id, file_name);
        Ok(())
    });

    let resp_stream = ReceiverStream::new(resp_rx);

    Ok(Response::new(
        Box::pin(resp_stream) as ResponseStream<DownloadFileFromVersionResponse>
    ))
}
