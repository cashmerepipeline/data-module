use dependencies_sync::tonic::async_trait;
use dependencies_sync::bson::{doc};
use dependencies_sync::futures::TryFutureExt;

use majordomo::{self, get_majordomo};
use crate::protocols::*;
use manage_define::general_field_ids::*;
use managers::traits::ManagerTrait;
use request_utils::request_account_context;

use dependencies_sync::tonic::{Request, Response, Status};


use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleListEntityData {
    /// 取得管理记录数量
    async fn handle_list_entity_data(
        &self,
        request: Request<ListEntityDataRequest>,
    ) -> UnaryResponseResult<ListEntityDataResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_list_entity_data)
            .await
    }
}


async fn validate_view_rules(
    request: Request<ListEntityDataRequest>,
) -> Result<Request<ListEntityDataRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = &request.get_ref().manage_id;
        let (_account_id, _groups, role_group) = request_account_context(request.metadata());
        if let Err(e) = view::validates::validate_collection_can_write(&manage_id, &role_group).await {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<ListEntityDataRequest>,
) -> Result<Request<ListEntityDataRequest>, Status> {
    Ok(request)
}

async fn handle_list_entity_data(
    request: Request<ListEntityDataRequest>,
) -> Result<Response<ListEntityDataResponse>, Status> {
    let (_account_id, _groups, _role_group) = request_account_context(request.metadata());

    let manage_id = &request.get_ref().manage_id;
    let entity_id = &request.get_ref().entity_id;

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(*manage_id).unwrap();

    let result = manager.get_entity_by_id(entity_id).await;

    match result {
        Ok(r) => {
            let data_ids = r.get_array(DATAS_FIELD_ID.to_string()).unwrap();
            Ok(Response::new(ListEntityDataResponse {
                data_ids: data_ids.iter().map(|x| x.to_string()).collect(),
            }))
        }
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}