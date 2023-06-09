use configs::DataServerConfigs;
use std::sync::Arc;

///  数据服务器
#[derive(Debug, Default)]
pub struct DataServer {
    pub root_dir_path: String,
    pub max_file_size: u64,
    pub max_set_size: u32,
    pub max_sequence_length: u32,
    pub transfer_chunck_size: u32,
    // 最大文件上传连接
    pub max_upload_connections_number: u16,
    // 最大文件下载连接
    pub max_file_download_number: u16,
}

/// 数据服务器实例
static mut DATA_SERVER: Option<Arc<DataServer>> = None;

pub fn get_data_server() -> Arc<DataServer> {
    let data_configs = configs::get_data_server_configs();
    unsafe {
        // 有数据
        if DATA_SERVER.is_none() {
            DATA_SERVER.replace(init_data_server(data_configs));
        }
        DATA_SERVER.clone().unwrap()
    }
}


/// 初始化数据服务器
fn init_data_server(data_server_configs: &DataServerConfigs) -> Arc<DataServer> {
    let data_server = DataServer {
        root_dir_path: data_server_configs.root_dir_path.clone(),
        max_file_size: data_server_configs.max_file_size,
        max_set_size: data_server_configs.max_set_size,
        max_sequence_length: data_server_configs.max_sequence_length,
        transfer_chunck_size: data_server_configs.transfer_chunk_size,
        max_upload_connections_number: data_server_configs.max_file_upload_number,
        max_file_download_number: data_server_configs.max_file_download_number,
    };

    Arc::new(data_server)
}
