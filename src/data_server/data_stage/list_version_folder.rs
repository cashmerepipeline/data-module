use std::path::PathBuf;
use dependencies_sync::tokio::fs;

use cash_result::{OperationResult, operation_failed};

/// 使用tokio列出目录下的文件夹和文件，并返回
pub async fn list_version_foler(folder_path: PathBuf)->Result<(Vec<String>, Vec<String>), OperationResult>{
    let mut files = vec![];
    let mut folders = vec![];
    
    let mut entries = match fs::read_dir(folder_path).await{
        Ok(entries) => entries,
        Err(err) => {
            return Err(operation_failed("list_version_foler", format!("读取目录失败: {}", err)));
        }
    };

    while let Some(entry) = entries.next_entry().await.unwrap() {
        let path = entry.path();
        let file_name = path.file_name().unwrap().to_str().unwrap().to_string();
        if path.is_dir() {
            folders.push(file_name);
        } else {
            files.push(file_name);
        }
    }

    Ok((folders, files))
}
