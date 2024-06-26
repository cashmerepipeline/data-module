use cash_result::{add_call_name_to_chain, OperationResult};
use configs::ConfigTrait;
use dependencies_sync::{
    bson::{self, doc},
    log,
    rust_i18n::{self, t},
};
use majordomo::get_majordomo;
use manage_define::general_field_ids::ID_FIELD_ID;
use managers::entity_interface::EntityInterface;

use crate::{
    ids_codes::{
        field_ids::{VERSIONS_FILES_FIELD_ID, VERSIONS_STAGE_ID_FIELD_ID, VERSIONS_VERSION_FIELD_ID},
        manage_ids::VERSIONS_MANAGE_ID,
    },
    protocols::FileInfo, DataServerConfigs,
};

/// zh: 和数据类型相关，序列文件不需要加入
pub async fn add_file_to_data_path(
    stage_id: &str,
    version: &str,
    file_path: &str,
    file_info: &FileInfo,
    account_id: &str,
) -> Result<(), OperationResult> {
    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(VERSIONS_MANAGE_ID).unwrap();

    let query_doc = doc! {
        VERSIONS_STAGE_ID_FIELD_ID.to_string():stage_id,
        VERSIONS_VERSION_FIELD_ID.to_string():version,
    };

    let file_doc = doc! {file_path:bson::to_document(&file_info.clone()).unwrap()};
    let mut modify_doc = bson::Document::new();
    let key = format!("{}.{}", VERSIONS_FILES_FIELD_ID, file_info.md5);
    modify_doc.insert(key, bson::to_bson(file_info).unwrap());

    if let Err(err) = manager
        .update_entity_map_field(query_doc, modify_doc, account_id)
        .await
    {
        log::error!("{}: {}", t!("添加文件路径到版本失败"), version);
        let err = add_call_name_to_chain(err, "add_file_to_data_path".to_string());
        Err(err)
    } else {
        Ok(())
    }
}
