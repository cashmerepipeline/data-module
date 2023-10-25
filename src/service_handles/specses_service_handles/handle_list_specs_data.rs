use dependencies_sync::bson::{self, doc};
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tonic::{Request, Response, Status};

use request_utils::request_account_context;
use service_utils::types::UnaryResponseResult;

use crate::ids_codes::field_ids::*;
use crate::protocols::*;
use majordomo::{self, get_majordomo};

use crate::ids_codes::manage_ids::*;
use managers::ManagerTrait;
use view::add_query_filters;

#[async_trait]
pub trait HandleListSpecsData {
    /// 取得产品分页
    async fn handle_list_specs_data(
        &self,
        request: Request<ListSpecsDataRequest>,
    ) -> UnaryResponseResult<ListSpecsDataResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_list_specs_data)
            .await
    }
}

async fn validate_view_rules(
    request: Request<ListSpecsDataRequest>,
) -> Result<Request<ListSpecsDataRequest>, Status> {
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
    request: Request<ListSpecsDataRequest>,
) -> Result<Request<ListSpecsDataRequest>, Status> {
    let specs_id = &request.get_ref().specs_id;

    // specs_id 不能为空
    if specs_id.is_empty() {
        return Err(Status::invalid_argument(
            t!("规格编号不能为空"),
        ));
    }
    
    Ok(request)
}

async fn handle_list_specs_data(
    request: Request<ListSpecsDataRequest>,
) -> Result<Response<ListSpecsDataResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata());

    let specs_id = &request.get_ref().specs_id;

    let manage_id = DATAS_MANAGE_ID;

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
        DATAS_SPECS_ID_FIELD_ID.to_string(): specs_id.to_string(),
    };

    let result = manager.get_entities_by_filter(&Some(filter_doc)).await;

    match result {
        Ok(entities) => Ok(Response::new(ListSpecsDataResponse {
            data: entities.iter().map(|x| bson::to_vec(x).unwrap()).collect(),
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
