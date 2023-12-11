use cash_result::{operation_failed, OperationResult};
use configs::ConfigTrait;
use std::ffi::OsStr;
use std::path::{Path, PathBuf};

use dependencies_sync::bytes::{self, BufMut};
use dependencies_sync::log::{debug, info, error};

use dependencies_sync::fs4;
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tokio;
use dependencies_sync::tokio::fs;
use dependencies_sync::tokio::fs::{File, OpenOptions};
use dependencies_sync::tokio::io::{AsyncWriteExt, BufWriter};
use dependencies_sync::tokio::sync::mpsc;
use dependencies_sync::tokio::sync::mpsc::Sender;


use crate::protocols::FileInfo;
use crate::DataServerConfigs;

use super::UploadDelegator;

impl UploadDelegator {
    /// 准备文件上传
    /// 成功返回 （上传文件目录，上传文件路径）
    pub fn prepare_file_uploading(
        &self,
        specs_id: &String,
        data_id: &String,
        stage: &String,
        version: &String,
        sub_path: &String,
        file_info: &FileInfo,
        _request_size: u64,
    ) -> Result<(PathBuf, PathBuf), OperationResult> {
        let data_root = &DataServerConfigs::get().root_dir_path;

        let mut data_dir_path = PathBuf::new();
        data_dir_path.push(data_root);
        data_dir_path.push(specs_id);
        data_dir_path.push(data_id);
        data_dir_path.push(stage);
        data_dir_path.push(version);
        data_dir_path.push(sub_path);

        let file_ext = match Path::new(&file_info.file_name).extension(){
            Some(ext) => ext,
            None => OsStr::new(""),
        };

        let file_name = match Path::new(&file_info.file_name).file_name(){
            Some(name) => name,
            None => {
                error!("{}: {}", t!("无效文件名"), file_info.file_name);
                return Err(operation_failed("prepare_file_uploading", t!("无效文件名")));
            },
        };

        let mut file_pathbuf = data_dir_path.clone();
        file_pathbuf.push(file_name);
        file_pathbuf.set_extension(file_ext);

        Ok((data_dir_path.to_path_buf(), file_pathbuf))
    }

    /// 取得上传目标文件，根据条件是否断点续传
    pub async fn get_upload_target_file(
        &self,
        data_folder: &PathBuf,
        data_file_path: &PathBuf,
    ) -> Result<File, OperationResult> {
        debug!(
            "{}: {}",
            t!("开始创建文件"),
            data_file_path.to_str().unwrap()
        );

        if fs::create_dir_all(data_folder).await.is_err() {
            return Err(operation_failed(
                "get_upload_target_file",
                format!("{}: {}", t!("创建目录失败"), data_folder.to_str().unwrap()),
            ));
        };

        let resume_file_path = data_file_path.with_extension("resume");

        // zh: 如果文件已存在，则以追加的方式打开
        if data_file_path.exists() {
            if resume_file_path.exists() {
                debug!(
                    "{}, {}: {}, ",
                    t!("文件已存在"),
                    t!("以追加方式打开文件"),
                    data_file_path.to_str().unwrap()
                );

                match OpenOptions::new().append(true).open(&data_file_path).await {
                    Ok(f) => Ok(f),
                    Err(_e) => Err(operation_failed(
                        "get_upload_target_file",
                        format!(
                            "{}: {}",
                            t!("打开文件失败"),
                            data_file_path.to_str().unwrap()
                        ),
                    )),
                }
            } else {
                // zh: 如果文件已存在，但是没有续传点文件，则截断文件，从头开始写入
                debug!(
                    "{}, {}, {}, {}: {}",
                    t!("文件已存在"),
                    t!("没有续传点文件"),
                    t!("截断文件"),
                    t!("从头开始写入"),
                    data_file_path.to_str().unwrap()
                );

                match OpenOptions::new()
                    .write(true)
                    .truncate(true)
                    .open(&data_file_path)
                    .await
                {
                    Ok(f) => Ok(f),
                    Err(_e) => Err(operation_failed(
                        "get_upload_target_file",
                        format!(
                            "{}: {}",
                            t!("打开文件失败"),
                            data_file_path.to_str().unwrap()
                        ),
                    )),
                }
            }
        } else {
            // zh: 如果文件不存在，则创建文件
            let data_file = match File::create(&data_file_path).await {
                Ok(f) => f,
                Err(_e) => {
                    return Err(operation_failed(
                        "get_upload_target_file",
                        format!(
                            "{}: {}",
                            t! {"创建文件失败"},
                            data_file_path.to_str().unwrap()
                        ),
                    ));
                }
            };

            debug!(
                "{}: {}",
                t!("创建文件成功"),
                data_file_path.to_str().unwrap()
            );

            Ok(data_file)
        }
    }

    /// 检查磁盘空间是否足够
    pub async fn check_disk_space_enough(&self, file_size: u64) -> bool {
        let data_root = &DataServerConfigs::get().root_dir_path;
        let data_root_path = Path::new(data_root);

        let available_space = match fs4::available_space(data_root_path) {
            Ok(m) => m,
            Err(_e) => {
                return false;
            }
        };

        if available_space < file_size {
            return false;
        }

        true
    }

    pub async fn get_receive_file_stream_sender(
        &self,
        data_file: File,
        data_file_path: String,
    ) -> Result<Sender<Vec<u8>>, OperationResult> {
        // 使用缓存减少磁盘操作
        // 缓存, 最大为640kb = 1024*128*5，满后写入临时文件,缓存长度是5
        // 每块最大为128kb
        let capacity = 5;
        let chunk_size = self.transfer_chunk_size;

        let mut buffer = bytes::BytesMut::with_capacity(capacity * self.transfer_chunk_size);
        let mut writer = BufWriter::new(data_file);

        debug!("{}: {}", t!("创建文件写入流"), data_file_path);

        let (ftx, mut frx) = mpsc::channel::<Vec<u8>>(5);

        let mut total_size = 0u64;
        // 发出线程后不能等待写入完成，否则会卡死，一直等待数据写入
        tokio::spawn(async move {
            while let Some(part) = frx.recv().await {
                debug!("{}", t!("文件流接收到数据块到缓存"));
                total_size += part.len() as u64;

                // 缓存未满，写入缓存
                if buffer.len() < capacity * chunk_size {
                    buffer.put(&part[..]);
                    continue;
                } else {
                    // 缓存已满，写入文件
                    if writer.write_all(&buffer).await.is_err() {
                        return Err(operation_failed(
                            "create_recieve_data_file_stream",
                            t!("流数据写入文件错误"),
                        ));
                    };

                    // 重置缓存
                    buffer.clear();
                    buffer.put(&part[..]);
                }
            }

            // 剩余数据写入文件
            if writer.write_all(&buffer).await.is_err() {
                return Err(operation_failed(
                    "create_recieve_data_file_stream",
                    t!("流数据写入文件错误"),
                ));
            };
            // 刷出文件，关闭缓存
            if writer.flush().await.is_err() {
                return Err(operation_failed(
                    "create_recieve_data_file_stream",
                    t!("流数据写入文件错误"),
                ));
            };

            info!(
                "{}: {}-{}",
                t!("数据流完成写入文件"),
                data_file_path,
                total_size
            );
            Ok(())
        });

        Ok(ftx)
    }
}
