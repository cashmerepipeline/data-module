use std::path::PathBuf;
use dependencies_sync::{tokio::fs, log::error};
use dependencies_sync::rust_i18n::{self, t};
use cash_result::{OperationResult, operation_failed};

/// 使用dependencies_sync::tokio异步删除指定目录下和指定列表中的文件夹和文件
pub async fn delete_version_folder_entries(
    version_path: &PathBuf,
    entries: &Vec<String>,
) -> Result<(), OperationResult> {
    for entry in entries {
        let entry_path = version_path.join(entry);
        if entry_path.is_dir() {
            if let Err(e) = fs::remove_dir_all(entry_path).await{
                error!("{}: {}", t!("删除文件夹失败"), e);

                return Err(operation_failed(
                    "delete_version_folder_entries",
                    format!("{}: {}", t!("删除文件夹失败"), e),
                ));
            };
        } else {
            if let Err(e) = fs::remove_file(entry_path).await{
                error!("{}: {}", t!("删除文件失败"), e);
                
                return Err(operation_failed(
                    "delete_version_folder_entries",
                    format!("{}: {}", t!("删除文件失败"), e),
                ));
            };
        }
    }
    Ok(())
}