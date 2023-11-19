use dependencies_sync::bson::{self, doc};
use dependencies_sync::tonic::async_trait;
use dependencies_sync::futures::TryFutureExt;
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
pub trait HandleAddStageVersion {
    async fn handle_add_stage_version(
        &self,
        request: Request<AddStageVersionRequest>,
    ) -> UnaryResponseResult<AddStageVersionResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_add_stage_version)
            .await
    }
}

async fn validate_view_rules(
    request: Request<AddStageVersionRequest>,
) -> Result<Request<AddStageVersionRequest>, Status> {
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
    request: Request<AddStageVersionRequest>,
) -> Result<Request<AddStageVersionRequest>, Status> {
    Ok(request)
}

async fn handle_add_stage_version(
    request: Request<AddStageVersionRequest>,
) -> Result<Response<AddStageVersionResponse>, Status> {
    let (account_id, _groups, _role_group) = request_account_context(request.metadata())?;

    let stage_id = &request.get_ref().stage_id;
    let version = &request.get_ref().version;

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();

    let query_doc = doc! {
        ID_FIELD_ID.to_string():stage_id,
    };

    // TODO: 检查版本是否已存在，如果已存在则返回已存在

    let field_key = format!("{}.versions", STAGES_VERSIONS_FIELD_ID);
    let mut modify_doc = bson::Document::new();
    modify_doc.insert(field_key, version);

    let result = manager
        .add_to_array_field(query_doc, modify_doc, &account_id)
        .await;

    match result {
        Ok(_r) => Ok(Response::new(AddStageVersionResponse {
            result: "ok".to_string(),
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
