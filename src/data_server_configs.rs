use std::{collections::HashMap, sync::OnceLock};

use dependencies_sync::rust_i18n::{self, t};

use configs::{get_config, ConfigTrait};
use serde_derive::{Deserialize, Serialize};

pub const DATA_SERVER_CONFIGS_NAME: &str = "data_server";
static DATA_SERVER_CONFIGS: OnceLock<DataServerConfigs> = OnceLock::new();

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct DataServerConfigs {
    // 数据根目录，数据服务文件存储根目录
    pub root_dir_path: String,
    // 文件最大大小
    pub max_file_size: u64,
    // 文件集最大数量
    pub max_set_size: u32,
    // 文件序列最大数量
    pub max_sequence_length: u32,
    // 上传数据块最大数量
    pub transfer_chunk_size: u32,
    // 文件传输超时设置，根据实际文件大小设置，0为不限定时间
    pub transfer_timeout: u32,
    // 最大文件上传连接
    pub max_file_upload_number: u16,
    // 最大文件下载连接
    pub max_file_download_number: u16,
    // 内部网络访问路径，window需要设置共享盘符，posix需要设置挂载路径
    pub internal_root_dir_map: HashMap<String, String>,
    // zh: 文件路径形式，默认为: {"manage": "manage_id", "specs": "specs_id", "data": "data_id", "stage":"stage", "version": "version"}
    pub file_path_format: HashMap<String, String>,
}

impl ConfigTrait for DataServerConfigs {
    fn name() -> &'static str {
        DATA_SERVER_CONFIGS_NAME
    }

    fn get() -> &'static Self {
        if let Some(configs) = DATA_SERVER_CONFIGS.get() {
            return configs;
        } else {
            let configs = get_config::<DataServerConfigs>().expect(t!("取得配置失败").as_str());
            DATA_SERVER_CONFIGS.set(configs).expect("设置配置失败");
        }

        DATA_SERVER_CONFIGS.get().unwrap()
    }
}

impl Default for DataServerConfigs {
    fn default() -> Self {
        let mut internal_root_dir_map = HashMap::new();
        internal_root_dir_map.insert("windows".to_string(), "C:/data_root/".to_string());
        internal_root_dir_map.insert("linux".to_string(), "/mnt/data_root".to_string());
        internal_root_dir_map.insert("macos".to_string(), "/mnt/data_root".to_string());

        let mut file_path_format = HashMap::new();
        file_path_format.insert("specs".to_string(), "specs_id".to_string());
        file_path_format.insert("data".to_string(), "data_id".to_string());
        file_path_format.insert("stage".to_string(), "stage".to_string());
        file_path_format.insert("version".to_string(), "version".to_string());

        DataServerConfigs {
            root_dir_path: "data_root".to_string(),
            max_file_size: 16_777_216,
            max_set_size: 1000,
            max_sequence_length: 10000,
            transfer_chunk_size: 1024 * 128,
            transfer_timeout: 0,
            max_file_upload_number: 256,
            max_file_download_number: 256,
            internal_root_dir_map,
            file_path_format,
        }
    }
}
