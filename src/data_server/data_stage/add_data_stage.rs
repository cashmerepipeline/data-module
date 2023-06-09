use std::path::PathBuf;

use cash_result::{operation_failed, OperationResult};
use dependencies_sync::tokio::{fs, fs::File};

use super::DataStage;

pub async fn add_data_stage(
    data_root_dir: &String,
    new_stage: &String,
) -> Result<DataStage, OperationResult> {
    let mut data_root_path = PathBuf::new();
    data_root_path.push(data_root_dir);

    let mut stage_path = PathBuf::new();
    stage_path.push(data_root_dir);
    stage_path.push(new_stage);

    // 空文件，用于占位
    if !stage_path.exists() && File::create(stage_path.clone()).await.is_err() {
        return Err(operation_failed(
            "add_data_stage",
            t!("创建阶段连接文件失败"),
        ));
    }
    //  数据文件夹
    if !stage_path.exists() && fs::create_dir_all(stage_path.clone()).await.is_err() {
        return Err(operation_failed("add_data_stage", t!("创建阶段文件夹失败")));
    }

    Ok(DataStage::from_path_file(data_root_dir, new_stage))
}
