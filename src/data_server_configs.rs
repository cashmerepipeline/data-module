use std::collections::HashMap;

use configs::ConfigTrait;
use serde_derive::{Serialize, Deserialize};

pub const DATA_SERVER_CONFIGS_NAME : &str = "data_server";

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct DataServerConfigs {
    // 数据根目录
    pub root_dir_path: String,
    // 文件最大大小
    pub max_file_size: u64,
    // 文件集最大数量
    pub max_set_size: u32,
    // 文件序列最大数量
    pub max_sequence_length: u32,
    // 上传数据块最大数量
    pub transfer_chunk_size: u32,
    // 最大文件上传连接
    pub max_file_upload_number: u16,
    // 最大文件下载连接
    pub max_file_download_number: u16,
    pub internal_root_dir_map: HashMap<String, String>
}

impl ConfigTrait for DataServerConfigs {
    fn name() -> &'static str {
        return DATA_SERVER_CONFIGS_NAME;
    }
}

impl Default for DataServerConfigs {
    fn default() -> Self {
        let mut internal_root_dir_map = HashMap::new();
        internal_root_dir_map.insert("windows".to_string(), "C:/data_root/".to_string());
        internal_root_dir_map.insert("linux".to_string(), "/mnt/data_root".to_string());
        internal_root_dir_map.insert("macos".to_string(), "/mnt/data_root".to_string());

        DataServerConfigs {
            root_dir_path: "data_root".to_string(),
            max_file_size: 16_777_216,
            max_set_size: 1000,
            max_sequence_length: 10000,
            transfer_chunk_size: 1024 * 128,
            max_file_upload_number: 256,
            max_file_download_number: 256,
            internal_root_dir_map: internal_root_dir_map
        }
    }
    
}