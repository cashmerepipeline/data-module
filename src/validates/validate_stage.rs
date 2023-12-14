use dependencies_sync::{
    bson::doc,
    rust_i18n::{self, t},
    tonic::Status,
};
use managers::ManagerTrait;

use crate::ids_codes::field_ids::*;
use crate::ids_codes::manage_ids::*;

// zh: 验证stage是否有效
pub async fn validate_stage(data_id: &str, stage: &str) -> Result<String, Status> {
    let majordomo_arc = majordomo::get_majordomo();
    let stage_manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();
    let _versino_manager = majordomo_arc.get_manager_by_id(VERSIONS_MANAGE_ID).unwrap();

    let query_doc = doc! {
    STAGES_DATA_ID_FIELD_ID.to_string(): data_id,
        STAGES_STAGE_FIELD_ID.to_string(): stage
    };

    let stage_id = if let Some(id) = stage_manager.entity_exists(&query_doc).await {
        id
    } else {
        return Err(Status::not_found(format!(
            "{}: {}",
            t!("阶段不存在"),
            stage
        )));
    };

    Ok(stage_id)
}
