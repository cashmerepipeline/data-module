use dependencies_sync::tonic::async_trait;
use dependencies_sync::bson::{self, Document};
use dependencies_sync::tonic::{Request, Response, Status};
use dependencies_sync::futures::TryFutureExt;

use majordomo::{self, get_majordomo};
use crate::protocols::*;
use crate::ids_codes::field_ids::*;

use crate::ids_codes::manage_ids::*;
use managers::ManagerTrait;
use request_utils::request_account_context;



use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleListStages {
    async fn handle_list_stages(
        &self,
        request: Request<ListStagesRequest>,
    ) -> UnaryResponseResult<ListStagesResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_list_stages)
            .await
    }
}


async fn validate_view_rules(
    request: Request<ListStagesRequest>,
) -> Result<Request<ListStagesRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = STAGES_MANAGE_ID;
        let (_account_id, _groups, role_group) = request_account_context(request.metadata())?;
        if let Err(e) = view::validates::validate_collection_can_write(&manage_id, &role_group).await {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<ListStagesRequest>,
) -> Result<Request<ListStagesRequest>, Status> {
    Ok(request)
}

async fn handle_list_stages(
    request: Request<ListStagesRequest>,
) -> Result<Response<ListStagesResponse>, Status> {
    let (_account_id, _groups, _role_group) = request_account_context(request.metadata())?;

    let data_id = &request.get_ref().data_id;

    

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc
        .get_manager_by_id(STAGES_MANAGE_ID)
        .unwrap();

    let mut filter_doc = Document::new();
    filter_doc.insert(STAGES_DATA_ID_FIELD_ID.to_string(), data_id);

    let result = manager.get_entities_by_filter(&Some(filter_doc)).await;

    match result {
        Ok(entities) => Ok(Response::new(ListStagesResponse {
            stages: entities.iter().map(|x| bson::to_vec(x).unwrap()).collect(),
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}