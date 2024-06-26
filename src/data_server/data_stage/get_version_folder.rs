use std::path::PathBuf;

use dependencies_sync::rust_i18n::{self, t};
use cash_result::{operation_failed, OperationResult};
use crate::DataServerConfigs;
use configs::ConfigTrait;


pub fn get_version_folder(
    specs_id: &String,
    data_id: &String,
    stage_id: &String,
    version: &String,
) -> Result<PathBuf, OperationResult> {
    let data_root = &DataServerConfigs::get().root_dir_path;

    // TODO: 目录规则解析出specs、stage、version

    let mut folder_pathbuf = PathBuf::new();
    folder_pathbuf.push(data_root);
    folder_pathbuf.push(specs_id);
    folder_pathbuf.push(data_id);
    folder_pathbuf.push(stage_id);
    folder_pathbuf.push(version);

    if !folder_pathbuf.exists() {
        return Err(operation_failed(
            "get_version_folder",
            format!(
                "{}: {}",
                t!("目录不存在"),
                &folder_pathbuf.to_str().unwrap()
            ),
        ));
    }

    Ok(folder_pathbuf)
}
