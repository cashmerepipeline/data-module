use std::path::PathBuf;
use dependencies_sync::tokio::fs;
use dependencies_sync::rust_i18n::{self, t};

use cash_result::{operation_failed, OperationResult};

use crate::protocols::DataType;

/// data stage
pub struct DataStage {
    data_root_dir: PathBuf,
    stage_dir_path: PathBuf,
    stage_link_path: PathBuf,
}

impl DataStage {
    pub fn from_path_file(data_root_dir: &String, stage: &String) -> DataStage {
        let mut root_pathbuf = PathBuf::new();
        root_pathbuf.push(data_root_dir);

        let mut stage_dir_path = PathBuf::new();
        stage_dir_path.push(data_root_dir);
        stage_dir_path.push(stage);

        let mut stage_link_path = PathBuf::new();
        stage_link_path.push(data_root_dir);
        stage_link_path.push(stage);
        stage_link_path.set_extension("stg");

        DataStage {
            data_root_dir: root_pathbuf,
            stage_dir_path,
            stage_link_path,
        }
    }

    /// 添加文件到阶段
    pub async fn add_stage_version_data(&self) {}

    /// 变更阶段数据版本连接
    /// target_version: 连接目标为文件名或者目录名
    pub async fn change_stage_link_to_version(
        &self,
        _target_version: &String,
        data_type: Option<DataType>,
    ) -> Result<(), OperationResult> {
        let mut target_version_path = PathBuf::from(&self.stage_dir_path);
        target_version_path.push(target_version_path.clone());

        #[cfg(not(target_os = "windows"))]
        if fs::symlink(&self.stage_dir_path, &target_version_path)
            .await
            .is_err()
        {
            return Err(operation_failed(
                "change_stage_link_to_version",
                "更新阶段版本软连接失败",
            ));
        }

        #[cfg(target_os = "windows")]
        if let Some(t) = data_type {
            if t == DataType::FileData {
                if fs::symlink_file(target_version_path, self.stage_link_path.clone())
                    .await
                    .is_err()
                {
                    return Err(operation_failed(
                        "change_stage_link_to_version",
                        t!("更新阶段版本软连接失败"),
                    ));
                };
            } else if fs::symlink_dir(target_version_path, self.stage_link_path.clone())
                .await
                .is_err()
            {
                return Err(operation_failed(
                    "change_stage_link_to_version",
                    t!("更新阶段版本软连接失败"),
                ));
            }
        }

        Ok(())
    }
}
