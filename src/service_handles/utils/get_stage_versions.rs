use std::collections::HashMap;

use dependencies_sync::bson;
use dependencies_sync::bson::doc;
use dependencies_sync::bson::Document;
use dependencies_sync::log;
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tonic::Status;

use majordomo::get_majordomo;
use manage_define::general_field_ids::ID_FIELD_ID;
use managers::ManagerTrait;

use crate::ids_codes::field_ids::STAGES_STAGE_FIELD_ID;
use crate::ids_codes::field_ids::VERSIONS_FILES_FIELD_ID;
use crate::ids_codes::field_ids::VERSIONS_STAGE_ID_FIELD_ID;
use crate::ids_codes::field_ids::VERSIONS_VERSION_FIELD_ID;
use crate::ids_codes::manage_ids::VERSIONS_MANAGE_ID;
use crate::protocols::FileInfo;
use crate::protocols::Version;

pub async fn get_stage_versions(
    manage_id: &str,
    specs_id: &str,
    data_id: &str,
    stage_doc: &Document,
) -> Result<Vec<Version>, Status> {
    let stage_id = stage_doc.get_str(ID_FIELD_ID.to_string()).unwrap();
    let stage = stage_doc
        .get_str(STAGES_STAGE_FIELD_ID.to_string())
        .unwrap();
    let mut match_doc = doc! {};
    match_doc.insert(VERSIONS_STAGE_ID_FIELD_ID.to_string(), stage_id);

    let majordomo_arc = get_majordomo();
    let versions_manager = majordomo_arc.get_manager_by_id(VERSIONS_MANAGE_ID).unwrap();

    let mut versions = vec![];
    if let Err(err) = versions_manager
        .get_entities_by_filter(&Some(match_doc))
        .await
        .map(|docs| {
            docs.iter().for_each(|doc| {
                let binding = Document::new();
                let files_doc = doc
                    .get_document(VERSIONS_FILES_FIELD_ID.to_string())
                    .unwrap_or(&binding);
                let files: HashMap<String, FileInfo> =
                    bson::from_document(files_doc.clone()).unwrap_or_default();

                let version = Version {
                    manage_id: manage_id.to_string(),
                    specs_id: specs_id.to_string(),
                    data_id: data_id.to_string(),
                    stage: stage.to_string(),
                    version: doc
                        .get_str(VERSIONS_VERSION_FIELD_ID.to_string())
                        .unwrap()
                        .to_string(),
                    files,
                };

                versions.push(version);
            });
        })
    {
        log::error!(
            "{}: {}, {}",
            t!("取得阶段版本失败"),
            stage_id,
            err.details()
        );
        return Err(Status::data_loss(format!(
            "{}: {}",
            t!("取得阶段版本失败"),
            err.details()
        )));
    }

    Ok(versions)
}
