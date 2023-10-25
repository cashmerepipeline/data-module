use std::io::SeekFrom;
use std::path::PathBuf;

use dependencies_sync::log::info;
use dependencies_sync::log::{error};
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::bytes;

use dependencies_sync::tokio::fs::File;
use dependencies_sync::tokio::io::{AsyncReadExt, AsyncSeekExt};
use dependencies_sync::tokio::sync::mpsc::Sender;
use dependencies_sync::tokio;

use cash_result::{Failed, OperationResult};

#[derive(Debug, Default)]
/// 上传代理
pub struct DownloadDelegator{
    pub transfer_chunk_size: usize,
}

impl DownloadDelegator {
    pub async fn check_request_file_exists(
        &self,
        data_id: &String,
        specs: &String,
        stage: &String,
        version: &String,
        sub_path: &String,
        file_name: &String,
    ) -> Result<PathBuf, OperationResult> {
        let data_root = &configs::get_data_server_configs().root_dir_path;

        let mut file_pathbuf = PathBuf::new();
        file_pathbuf.push(data_root);
        file_pathbuf.push(data_id);
        file_pathbuf.push(specs);
        file_pathbuf.push(stage);
        file_pathbuf.push(version);
        file_pathbuf.push(sub_path);
        file_pathbuf.push(file_name);

        if file_pathbuf.exists() {
            Ok(file_pathbuf)
        } else {
            Err(OperationResult::Failed(Failed {
                operation: "check_request_file_exists".to_string(),
                details: t!("文件不存在"),
            }))
        }
    }

    /// 绑定文件发送流
    pub async fn bind_file_stream_sender(
        &self,
        data_file_path: PathBuf,
        start_index: u64,
        ftx: Sender<Vec<u8>>,
    ) -> Result<(), OperationResult> {
        let file_path_str = String::from(data_file_path.to_str().unwrap());
        let mut data_file = match File::open(data_file_path).await {
            Ok(f) => f,
            Err(_e) => {
                return Err(OperationResult::Failed(Failed {
                    operation: "create_send_file_stream".to_string(),
                    details: format!("{}: {}", t!("打开文件失败"), file_path_str),
                }));
            }
        };

        let chunk_size = configs::get_data_server_configs().transfer_chunk_size as usize;
        // 缓存容量, 为 chunk_size*5，满后写入临时文件,缓存长度是5
        let capacity = chunk_size * 5;
        info!(
            "{}: {}, {}: {}",
            t!("缓存大小为"),
            t!("块大小为"),
            capacity,
            chunk_size
        );

        tokio::spawn(async move {
            let mut buffer = bytes::BytesMut::with_capacity(capacity);
            let meta_size = data_file.metadata().await.unwrap().len();
            let mut total_size = 0u64;

            if let Err(e) = data_file
                .seek(SeekFrom::Start(chunk_size as u64 * start_index))
                .await
            {
                error!("{}: {}, {}", t!("设置读取位置失败"), file_path_str, e.to_string());
                error!("{}: {}", t!("发送文件失败"), file_path_str);
                return ;
            };

            // let send_buffer = async |buffer: &bytes::BytesMut| {
            //     for chunk in buffer.chunks(chunk_size).next() {
            //         match ftx.send(chunk.to_vec()).await {
            //             Err(e) => log::error!("{}: {}", t!("发送数据块失败"), file_path_str),
            //             _ => (),
            //         }
            //     }
            // };

            while let Ok(n) = data_file.read_buf(&mut buffer).await {
                info!(
                    "{}: {:?}, {}, {}",
                    t!("读取到数据块"),
                    file_path_str,
                    buffer.len(),
                    n
                );

                // 缓存满，发送
                if buffer.len() == capacity {
                    // send_buffer(&buffer);
                    // buffer.chunks(chunk_size).by_ref().for_each(|chunk|{
                    //     match ftx.send(chunk.to_vec()).await {
                    //         Err(e) => log::error!("{}: {}", t!("发送数据块失败"), file_path_str),
                    //         _ => (),
                    //     }
                    // });
                    while let Some(chunk) = buffer.chunks(chunk_size).next() {
                        match ftx.send(chunk.to_vec()).await {
                            Err(e) => error!("{}: {}, {}", t!("发送数据块失败"), file_path_str, e.to_string()),
                            _ => (),
                        }
                    }

                    // for chunk in buffer.chunks(chunk_size).by_ref() {
                    //     match ftx.send(chunk.to_vec()).await {
                    //         Err(e) => log::error!("{}: {}", t!("发送数据块失败"), file_path_str),
                    //         _ => (),
                    //     }
                    // }
                    buffer.clear()
                }

                // 读取到文件末尾, 退出
                if n == 0 {
                    if !buffer.is_empty() {
                        // send_buffer(&buffer).await;
                        for chunk in buffer.chunks(chunk_size).by_ref() {
                            match ftx.send(chunk.to_vec()).await {
                                Err(e) => error!("{}: {}, {}", t!("变送数据失败"), file_path_str, e.to_string()),
                                _ => (),
                            }
                        }
                    }

                    break;
                }

                total_size += n as u64;
            }

            info!(
                "{}: {}-{}-{}",
                t!("发送文件完成"),
                file_path_str,
                total_size,
                meta_size
            );
        });

        Ok(())
    }
}
