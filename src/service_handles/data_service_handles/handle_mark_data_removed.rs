use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;

use dependencies_sync::tonic::{Request, Response, Status};

use majordomo::{self, get_majordomo};
use crate::protocols::*;


use managers::traits::ManagerTrait;
use request_utils::request_account_context;



use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleMarkDataRemoved {
    async fn handle_mark_data_remved(
        &self,
        request: Request<MarkDataRemovedRequest>,
    ) -> UnaryResponseResult<MarkDataRemovedResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_mark_data_remved)
            .await
    }
}

async fn validate_view_rules(
    request: Request<MarkDataRemovedRequest>,
) -> Result<Request<MarkDataRemovedRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = DATAS_MANAGE_ID;
        let (_account_id, _groups, role_group) = request_account_context(request.metadata());
        if let Err(e) =
            view::validates::validate_collection_can_write(&manage_id, &role_group).await
        {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<MarkDataRemovedRequest>,
) -> Result<Request<MarkDataRemovedRequest>, Status> {
    Ok(request)
}

async fn handle_mark_data_remved(
    request: Request<MarkDataRemovedRequest>,
) -> Result<Response<MarkDataRemovedResponse>, Status> {
    let (account_id, _groups, _role_group) = request_account_context(request.metadata());

    let manage_id = &request.get_ref().owner_manage_id;
    let entity_id = &request.get_ref().owner_entity_id;

    let majordomo_arc = get_majordomo();
    let data_manager = majordomo_arc.get_manager_by_id(*manage_id).unwrap();

    let result = data_manager
        .mark_entity_removed(entity_id, &account_id)
        .await;

    match result {
        Ok(_r) => Ok(Response::new(MarkDataRemovedResponse {
            result: "success".to_string(),
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
