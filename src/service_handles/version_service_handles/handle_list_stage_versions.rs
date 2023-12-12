use dependencies_sync::bson::{self, Document};
use dependencies_sync::futures::{TryFutureExt, StreamExt};
use dependencies_sync::tonic::async_trait;
use dependencies_sync::tonic::{Request, Response, Status};

use crate::ids_codes::field_ids::*;
use crate::protocols::*;
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
    Ok(request)
}

async fn handle_list_stage_versions(
    request: Request<ListStageVersionsRequest>,
) -> Result<Response<ListStageVersionsResponse>, Status> {
    let (_account_id, _groups, _role_group) = request_account_context(request.metadata())?;

    let stage_id = &request.get_ref().stage_id;

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(VERSIONS_MANAGE_ID).unwrap();

    let mut filter_doc = Document::new();
    filter_doc.insert(VERSIONS_STAGE_ID_FIELD_ID.to_string(), stage_id);

    let result = manager.get_entities_by_filter(&Some(filter_doc)).await;

    match result {
        Ok(entities) => {
            let versions: Vec<Vec<u8>> = entities
                .iter()
                .map(|x| bson::to_vec(x).unwrap())
                .collect();
            Ok(Response::new(ListStageVersionsResponse { versions }))
        }
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}