use cash_result::{operation_failed, OperationResult};
use configs::ConfigTrait;
use dependencies_sync::{
    bson::doc,
    rust_i18n::{self, t},
};
use managers::ManagerTrait;

use crate::{ids_codes::field_ids::*, ids_codes::manage_ids::*, DataServerConfigs};

/// zh: 当前只支持stage和version的id和名
pub async fn resolve_data_dir_path(
    specs_id: &str,
    data_id: &str,
    stage: &str,
    version: &str,
) -> Result<String, OperationResult> {
    let format_map = &DataServerConfigs::get().file_path_format;
    let mut file_path = String::new();

    // manage
    if format_map["manage"] == "manage_id" {
        let majordomo_arc = majordomo::get_majordomo();
        let manager = majordomo_arc.get_manager_by_id(SPECSES_MANAGE_ID).unwrap();
        let specs_entity = manager.get_entity_by_id(&specs_id.to_string(), &vec![]).await.unwrap();
        let manage_id = specs_entity
            .get_i32(SPECSES_MANAGE_ID_FIELD_ID.to_string())
            .unwrap();

        file_path.push_str(&format!("{}", manage_id));
    }

    // specs
    if format_map["specs"] == "specs_id" {
        if file_path.is_empty() {
            file_path.push_str(specs_id);
        } else {
            file_path.push_str(&format!("/{}", specs_id));
        }
    }

    // data
    if format_map["data"] == "data_id" {
        file_path.push_str(&format!("/{}", data_id));
    }

    // stage
    if format_map["stage"] == "stage" {
        file_path.push_str(&format!("/{}", stage));
    } else if format_map["stage"] == "stage_id" {
        let majordomo_arc = majordomo::get_majordomo();
        let manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();
        let query_doc = doc! {
          STAGES_DATA_ID_FIELD_ID.to_string(): data_id.clone(),
          STAGES_STAGE_FIELD_ID.to_string(): stage.clone(),
        };
        let stage_id = match manager.entity_exists(&query_doc).await {
            Some(id) => id,
            None => {
                return Err(operation_failed(
                    "resolve_data_file_path",
                    format!("{}: {}, {}", t!("取得阶段编号失败"), data_id, stage),
                ))
            }
        };

        file_path.push_str(&format!("/{}", stage_id));
    }

    // version
    if format_map["version"] == "version" {
        file_path.push_str(&format!("/{}", version));
    } else if format_map["version"] == "version_id" {
        let majordomo_arc = majordomo::get_majordomo();
        let stage_manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();
        let version_manager = majordomo_arc.get_manager_by_id(VERSIONS_MANAGE_ID).unwrap();

        let query_doc = doc! {
          STAGES_DATA_ID_FIELD_ID.to_string(): data_id.clone(),
          STAGES_STAGE_FIELD_ID.to_string(): stage.clone(),
        };
        let stage_id = stage_manager.entity_exists(&query_doc).await.unwrap();

        let query_doc = doc! {
          VERSIONS_STAGE_ID_FIELD_ID.to_string(): stage.clone(),
          VERSIONS_VERSION_FIELD_ID.to_string(): version.clone(),
        };

        let version_id = match version_manager.entity_exists(&query_doc).await {
            Some(id) => id,
            None => {
                return Err(operation_failed(
                    "resolve_data_file_path",
                    format!("{}: {}, {}", t!("取得版本编号失败"), stage_id, version),
                ));
            }
        };

        file_path.push_str(&format!("/{}", version_id));
    }

    Ok(file_path)
}
