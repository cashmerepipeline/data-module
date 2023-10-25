use std::path::PathBuf;

use dependencies_sync::tokio::fs;
use dependencies_sync::rust_i18n::{self, t};

use cash_result::{operation_failed, OperationResult};

use super::DataServer;

impl DataServer {
    pub async fn get_data_stages(&self, data_id: &String) -> Result<Vec<String>, OperationResult> {
        let mut data_root_path = PathBuf::new();
        data_root_path.push(&self.root_dir_path);
        data_root_path.push(data_id);
        let mut entity_stream = match fs::read_dir(data_root_path).await {
            Ok(es) => es,
            Err(_e) => {
                return Err(operation_failed(
                    "get_data_stages",
                    format!("{}: {}", t!("读取数据目录内容失败"), data_id),
                ))
            }
        };

        let mut stage_links = vec![];
        while let Ok(e) = entity_stream.next_entry().await {
            if let Some(de) = e {
                if de.path().extension().unwrap() == "stg" {
                    stage_links.push(String::from(de.file_name().to_str().unwrap()));
                }
            }
        }

        Ok(stage_links)
    }
}
