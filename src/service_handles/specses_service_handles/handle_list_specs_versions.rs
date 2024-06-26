use std::collections::HashMap;

use dependencies_sync::bson::{self, doc, spec};
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::log;
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tonic::async_trait;
use dependencies_sync::tonic::{Request, Response, Status};

use manage_define::general_field_ids::ID_FIELD_ID;
use request_utils::request_account_context;
use service_utils::types::UnaryResponseResult;

use crate::ids_codes::field_ids::*;
use crate::managers::specses_manager;
use crate::protocols::*;
use crate::service_handles::utils::get_stage_versions;
use majordomo::{self, get_majordomo};

use crate::ids_codes::manage_ids::*;
use managers::entity_interface::EntityInterface;
use validates::validate_entity_id;

#[async_trait]
pub trait HandleListSpecsVersions {
    /// 取得产品分页
    async fn handle_list_specs_versions(
        &self,
        request: Request<ListSpecsVersionsRequest>,
    ) -> UnaryResponseResult<ListSpecsVersionsResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_list_specs_versions)
            .await
    }
}

async fn validate_view_rules(
    request: Request<ListSpecsVersionsRequest>,
) -> Result<Request<ListSpecsVersionsRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = SPECSES_MANAGE_ID;
        let (_account_id, _groups, role_group) = request_account_context(request.metadata())?;
        if let Err(e) =
            view::validates::validate_collection_can_write(&manage_id, &role_group).await
        {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<ListSpecsVersionsRequest>,
) -> Result<Request<ListSpecsVersionsRequest>, Status> {
    let specs_id = &request.get_ref().specs_id;

    validate_entity_id(SPECSES_MANAGE_ID, specs_id).await?;

    Ok(request)
}

async fn handle_list_specs_versions(
    request: Request<ListSpecsVersionsRequest>,
) -> Result<Response<ListSpecsVersionsResponse>, Status> {
    let (_account_id, _groups, _role_groupp) = request_account_context(request.metadata())?;

    let specs_id = &request.get_ref().specs_id;

    let majordomo_arc = get_majordomo();
    let specses_manager = majordomo_arc.get_manager_by_id(SPECSES_MANAGE_ID).unwrap();
    let data_manager = majordomo_arc.get_manager_by_id(DATAS_MANAGE_ID).unwrap();
    let stages_manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();
    let versions_manager = majordomo_arc.get_manager_by_id(VERSIONS_MANAGE_ID).unwrap();

    let specs_entity = specses_manager
        .get_entity_by_id(specs_id, &vec![], &vec![])
        .await
        .unwrap();
    let manage_id = specs_entity
        .get_str(SPECSES_MANAGE_ID_FIELD_ID.to_string())
        .unwrap();

    let mut datas = vec![];
    let mut match_doc = doc! {};
    match_doc.insert(DATAS_SPECS_ID_FIELD_ID.to_string(), specs_id);
    
    if let Err(err) = data_manager
        .get_entities_by_filter(&Some(match_doc))
        .await
        .map(|docs| {
            docs.iter().for_each(|doc| datas.push(doc.clone()));
        })
    {
        log::error!("{}: {}", t!("取得规格数据失败"), specs_id);
        return Err(Status::data_loss(format!(
            "{}: {}",
            t!("取得规格数据失败"),
            err.details()
        )));
    };

    let mut versions = vec![];
    if !datas.is_empty() {
        for doc in datas.iter() {
            let data_id = doc.get_str(ID_FIELD_ID.to_string()).unwrap();
            let mut match_doc = doc! {};
            match_doc.insert(STAGES_DATA_ID_FIELD_ID.to_string(), data_id);

            let stages = match stages_manager
                .get_entities_by_filter(&Some(match_doc))
                .await
            {
                Ok(r) => r,
                Err(err) => {
                    log::error!("{}: {}, {}", t!("取得数据阶段失败"), data_id, err.details());
                    return Err(Status::data_loss(format!(
                        "{}: {}",
                        t!("取得数据阶段失败"),
                        err.details()
                    )));
                }
            };

            for doc in stages.iter() {
                if let Ok(vs) = get_stage_versions(manage_id, specs_id, &data_id, doc).await {
                    versions.extend(vs);
                }
            }
        }
    }

    Ok(Response::new(ListSpecsVersionsResponse { versions }))
}
