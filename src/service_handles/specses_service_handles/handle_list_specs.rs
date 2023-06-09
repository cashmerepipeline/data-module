use dependencies_sync::bson::{self, doc};
use dependencies_sync::tonic::async_trait;
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::{Request, Response, Status};

use request_utils::request_account_context;
use service_utils::types::UnaryResponseResult;

use majordomo::{self, get_majordomo};
use crate::protocols::*;
use crate::ids_codes::field_ids::*;

use crate::ids_codes::manage_ids::*;
use managers::traits::ManagerTrait;
use view::add_query_filters;

#[async_trait]
pub trait HandleListSpecs {
    /// 取得产品分页
    async fn handle_list_specs(
        &self,
        request: Request<ListSpecsRequest>,
    ) -> UnaryResponseResult<ListSpecsResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_list_specs)
            .await
    }
}

async fn validate_view_rules(
    request: Request<ListSpecsRequest>,
) -> Result<Request<ListSpecsRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = SPECSES_MANAGE_ID;
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
    request: Request<ListSpecsRequest>,
) -> Result<Request<ListSpecsRequest>, Status> {
    Ok(request)
}

async fn handle_list_specs(
    request: Request<ListSpecsRequest>,
) -> Result<Response<ListSpecsResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata());

    let data_id = &request.get_ref().data_id;

    let manage_id = SPECSES_MANAGE_ID;

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(manage_id).unwrap();

    // 可读性过滤, 没有设置过滤即不可读
    // TODO: 根据组改写，加入可读过滤项
    let mut matches = doc! {};
    if let Some(filter_doc) =
        add_query_filters(&account_id.to_string(), &role_group, &manage_id.to_string()).await
    {
        filter_doc.iter().for_each(|(k, v)| {
            matches.insert(k, v);
        });
    } else {
        return Err(Status::unauthenticated(
            "没有可读描写字段，用户不具有集合可读权限",
        ));
    };

    let filter_doc = doc! {
        SPECSES_DATA_ID_FIELD_ID.to_string(): data_id,
    };

    let result = manager.get_entities_by_filter(&Some(filter_doc)).await;

    match result {
        Ok(entities) => Ok(Response::new(ListSpecsResponse {
            specses: entities.iter().map(|x| bson::to_vec(x).unwrap()).collect(),
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
