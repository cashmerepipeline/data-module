use dependencies_sync::tonic::async_trait;
use dependencies_sync::bson::{self, doc};
use dependencies_sync::futures::TryFutureExt;

use crate::protocols::{GetDataServerConfigsResponse,GetDataServerConfigsRequest};

use crate::DataServerConfigs;

use request_utils::request_account_context;

use dependencies_sync::tonic::{Request, Response, Status};

#[async_trait]
pub trait HandleGetDataServerConfigs {
    /// 取得管理
    async fn handle_get_data_server_configs(
        &self,
        request: Request<GetDataServerConfigsRequest>,
    ) -> Result<Response<GetDataServerConfigsResponse>, Status> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_get_data_server_configs)
            .await
    }
}


async fn validate_view_rules(
    request: Request<GetDataServerConfigsRequest>,
) -> Result<Request<GetDataServerConfigsRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = DATA_SERVER_MANAGE_ID;
        let (_account_id, _groups, role_group) = request_account_context(request.metadata());
        if let Err(e) = view::validates::validate_collection_can_read(&manage_id, &role_group).await {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<GetDataServerConfigsRequest>,
) -> Result<Request<GetDataServerConfigsRequest>, Status> {
    Ok(request)
}

async fn handle_get_data_server_configs(
    request: Request<GetDataServerConfigsRequest>,
) -> Result<Response<GetDataServerConfigsResponse>, Status> {
    let (_account_id, _groups, _role_group) = request_account_context(request.metadata());

    let data_server_configs = bson::to_document(&configs::get_config::<DataServerConfigs>().unwrap()).unwrap();

    Ok(Response::new(GetDataServerConfigsResponse {
        configs: bson::from_document(data_server_configs).unwrap(),
    }))
}