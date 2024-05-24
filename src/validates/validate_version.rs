use dependencies_sync::{
    bson::doc,
    rust_i18n::{self, t},
    tonic::Status,
};
use managers::entity_interface::EntityInterface;

use crate::ids_codes::field_ids::*;
use crate::ids_codes::manage_ids::*;

/// zh: 验证版本是否有效
pub async fn validate_version(stage: &str, version: &str) -> Result<(), Status> {
    let majordomo_arc = majordomo::get_majordomo();
    let versino_manager = majordomo_arc.get_manager_by_id(VERSIONS_MANAGE_ID).unwrap();

    let query_doc = doc! {
        VERSIONS_STAGE_ID_FIELD_ID.to_string(): stage,
        VERSIONS_VERSION_FIELD_ID.to_string(): version
    };

    if versino_manager.entity_exists(&query_doc).await.is_none() {
        return Err(Status::not_found(format!(
            "{}: {}",
            t!("版本不存在"),
            version
        )));
    };

    Ok(())
}
