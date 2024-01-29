use dependencies_sync::bson::{self, Document};
use dependencies_sync::futures::{TryFutureExt, StreamExt};
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tonic::async_trait;
use dependencies_sync::tonic::{Request, Response, Status};
use validates::validate_entity_id;

use crate::ids_codes::field_ids::*;
use crate::ids_codes::version_field_ids::{VERSIONS_MANAGE_ID_FIELD_ID, VERSIONS_SPECS_ID_FIELD_ID};
use crate::managers::{datas_manager, specses_manager};
use crate::protocols::*;
use crate::service_handles::utils::get_stage_versions;
use majordomo::{self, get_majordomo};

use crate::ids_codes::manage_ids::*;
use managers::ManagerTrait;
use request_utils::request_account_context;

use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleListStageVersions {
    async fn handle_list_stage_versions(
        &self,
        request: Request<ListStageVersionsRequest>,
    ) -> UnaryResponseResult<ListStageVersionsResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_list_stage_versions)
            .await
    }
}

async fn validate_view_rules(
    request: Request<ListStageVersionsRequest>,
) -> Result<Request<ListStageVersionsRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = STAGES_MANAGE_ID;
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
    request: Request<ListStageVersionsRequest>,
) -> Result<Request<ListStageVersionsRequest>, Status> {
    let stage_id = &request.get_ref().stage_id;
    
    validate_entity_id(STAGES_MANAGE_ID, stage_id).await?;

    Ok(request)
}

async fn handle_list_stage_versions(
    request: Request<ListStageVersionsRequest>,
) -> Result<Response<ListStageVersionsResponse>, Status> {
    let (_account_id, _groups, _role_group) = request_account_context(request.metadata())?;

    let stage_id = &request.get_ref().stage_id;

    let majordomo_arc = get_majordomo();
    let specses_manager = majordomo_arc.get_manager_by_id(SPECSES_MANAGE_ID).unwrap();
    let datas_manager = majordomo_arc.get_manager_by_id(DATAS_MANAGE_ID).unwrap();
    let stage_manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();
    let versions_manager = majordomo_arc.get_manager_by_id(VERSIONS_MANAGE_ID).unwrap();
    
    let stage_doc = stage_manager.get_entity_by_id(&stage_id, &vec![], &vec![]).await.unwrap();

    let data_id = stage_doc.get_str(STAGES_DATA_ID_FIELD_ID.to_string()).unwrap();
    let data_doc = match datas_manager.get_entity_by_id(&data_id, &vec![], &vec![]).await {
        Err(err) => return Err(Status::aborted(format!("{}: {}, {}", t!("取得数据失败"), data_id, err.details()))),
        Ok(r) => r,
    };

    let specs_id = data_doc.get_str(DATAS_SPECS_ID_FIELD_ID.to_string()).unwrap();
    let specs_doc = match specses_manager.get_entity_by_id(&specs_id, &vec![], &vec![]).await{
        Err(err) => return Err(Status::aborted(format!("{}: {}, {}", t!("取得规范失败"), specs_id, err.details()))),
        Ok(r) => r,
    };

    let manage_id = specs_doc.get_str(SPECSES_MANAGE_ID_FIELD_ID.to_string()).unwrap();
    
    let result = get_stage_versions(manage_id, specs_id, data_id, &stage_doc).await;

    match result {
        Ok(versions) => {
            Ok(Response::new(ListStageVersionsResponse { versions }))
        }
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            t!("取得版本失败"),
            stage_id,
        ))),
    }
}
