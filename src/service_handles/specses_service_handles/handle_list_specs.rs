use dependencies_sync::bson::{self, doc};
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;
use dependencies_sync::tonic::{Request, Response, Status};
use dependencies_sync::rust_i18n::{self, t};

use request_utils::request_account_context;
use service_utils::types::UnaryResponseResult;

use crate::ids_codes::field_ids::*;
use crate::protocols::*;
use majordomo::{self, get_majordomo};

use crate::ids_codes::manage_ids::*;
use managers::ManagerTrait;
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
    // 管理编号不能为空
    let manage_id = &request.get_ref().manage_id;
    if manage_id.is_empty() {
        return Err(Status::invalid_argument(
            t!("管理编号不能为空")
        ));
    }
    // 实体编号不能为空
    let entity_id = &request.get_ref().entity_id;
    if entity_id.is_empty() {
        return Err(Status::invalid_argument(
            t!("实体编号不能为空")
        ));
    }

    Ok(request)
}

async fn handle_list_specs(
    request: Request<ListSpecsRequest>,
) -> Result<Response<ListSpecsResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata());

    let owner_manage_id = &request.get_ref().manage_id;
    let owner_entity_id = &request.get_ref().entity_id;

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
        SPECSES_MANAGE_ID_FIELD_ID.to_string(): owner_manage_id.to_string(),
        SPECSES_ENTITY_ID_FIELD_ID.to_string(): owner_entity_id.to_string(),
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
