use dependencies_sync::bson::{self, doc};
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;

use dependencies_sync::tonic::{Request, Response, Status};
use majordomo::{self, get_majordomo};
use crate::protocols::*;
use crate::ids_codes::field_ids::*;
use manage_define::general_field_ids::*;
use crate::ids_codes::manage_ids::*;
use managers::ManagerTrait;
use request_utils::request_account_context;


use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleSetStageCurrentVersion {
    async fn handle_set_stage_current_version(
        &self,
        request: Request<SetStageCurrentVersionRequest>,
    ) -> UnaryResponseResult<SetStageCurrentVersionResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_set_stage_current_version)
            .await
    }
}

async fn validate_view_rules(
    request: Request<SetStageCurrentVersionRequest>,
) -> Result<Request<SetStageCurrentVersionRequest>, Status> {
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
    request: Request<SetStageCurrentVersionRequest>,
) -> Result<Request<SetStageCurrentVersionRequest>, Status> {
    Ok(request)
}

async fn handle_set_stage_current_version(
    request: Request<SetStageCurrentVersionRequest>,
) -> UnaryResponseResult<SetStageCurrentVersionResponse> {
    let (account_id, _groups, _role_group) = request_account_context(request.metadata())?;

    let stage_id = &request.get_ref().stage_id;
    let target_version = &request.get_ref().target_version;

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();

    let stage_entity = match manager.get_entity_by_id(stage_id).await {
        Ok(e) => e,
        Err(e) => {
            // 不存在
            return Err(Status::aborted(format!(
                "{} {}",
                e.operation(),
                e.details()
            )));
        }
    };

    if !stage_entity
        .get_array(STAGES_VERSIONS_FIELD_ID.to_string())
        .unwrap()
        .iter()
        .map(|v| bson::from_bson::<Version>(v.clone()).unwrap())
        .any(|v| v.name == *target_version)
    {
        return Err(Status::invalid_argument("版本不存在"));
    };

    let query_doc = doc! {
        ID_FIELD_ID.to_string():stage_id,
    };

    let mut modify_doc = bson::Document::new();
    modify_doc.insert(STAGES_CURRENT_VERSION_FIELD_ID.to_string(), target_version);

    let result = manager
        .update_entity_field(query_doc, &mut modify_doc, &account_id)
        .await;

    match result {
        Ok(_r) => Ok(Response::new(SetStageCurrentVersionResponse {
            result: "ok".to_string(),
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
