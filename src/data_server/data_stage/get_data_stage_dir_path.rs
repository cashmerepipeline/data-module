use std::path::PathBuf;
use crate::data_server::get_data_server;

pub fn get_data_stage_dir_path(data_id: &String, stage: &String) -> PathBuf{
    let data_root_dir = &get_data_server().root_dir_path;

    let mut stage_dir_path = PathBuf::new();
    stage_dir_path.push(data_root_dir);
    stage_dir_path.push(data_id);
    stage_dir_path.push(stage);

    stage_dir_path
}