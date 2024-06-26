use dependencies_sync::bson::{self, doc};
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;

use majordomo::{self, get_majordomo};
use crate::protocols::*;
use crate::ids_codes::field_ids::*;
use manage_define::general_field_ids::*;
use crate::ids_codes::manage_ids::*;
use managers::entity_interface::EntityInterface;

use dependencies_sync::tonic::{Request, Response, Status};
use request_utils::request_account_context;


use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleRemoveStageVersion {
    async fn handle_remove_stage_version(
        &self,
        request: Request<RemoveStageVersionRequest>,
    ) -> UnaryResponseResult<RemoveStageVersionResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_remove_stage_version)
            .await
    }
}

async fn validate_view_rules(
    request: Request<RemoveStageVersionRequest>,
) -> Result<Request<RemoveStageVersionRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = STAGES_MANAGE_ID;
        let (_account_id, _groups, role_group) = request_account_context(request.metadata())?;
        if let Err(e) =
            view::validates::validate_entity_can_write(&manage_id, &role_group).await
        {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<RemoveStageVersionRequest>,
) -> Result<Request<RemoveStageVersionRequest>, Status> {
    Ok(request)
}

async fn handle_remove_stage_version(
    request: Request<RemoveStageVersionRequest>,
) -> Result<Response<RemoveStageVersionResponse>, Status> {
    let (account_id, _groups, _role_group) = request_account_context(request.metadata())?;

    let stage_id = &request.get_ref().stage_id;
    let version = &request.get_ref().version;

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();

    let query_doc = doc! {
        ID_FIELD_ID.to_string():stage_id,
        format!("{}.name", STAGES_VERSIONS_FIELD_ID):version,
    };

    let field_key = format!("{}.$.removed", STAGES_VERSIONS_FIELD_ID);
    let mut modify_doc = bson::Document::new();
    modify_doc.insert(field_key, true);

    let result = manager
        .update_array_element_field(query_doc, modify_doc, &account_id)
        .await;

    match result {
        Ok(_r) => Ok(Response::new(RemoveStageVersionResponse {
            result: "ok".to_string(),
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
