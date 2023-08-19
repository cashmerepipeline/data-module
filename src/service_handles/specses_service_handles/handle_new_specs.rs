use dependencies_sync::bson::{self, doc};
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;

use dependencies_sync::tonic::{Request, Response, Status};

use majordomo::{self, get_majordomo};
use crate::protocols::*;
use crate::ids_codes::field_ids::*;
use manage_define::general_field_ids::*;
use crate::ids_codes::manage_ids::*;

use service_utils::types::UnaryResponseResult;
use service_utils::validate_name;

use managers::traits::ManagerTrait;
use managers::utils::make_new_entity_document;
use request_utils::request_account_context;

#[async_trait]
pub trait HandleNewSpecs {
    /// 新建产品
    async fn handle_new_specs(
        &self,
        request: Request<NewSpecsRequest>,
    ) -> UnaryResponseResult<NewSpecsResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_new_specs)
            .await
    }
}

async fn validate_view_rules(
    request: Request<NewSpecsRequest>,
) -> Result<Request<NewSpecsRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = SPECSES_MANAGE_ID;
        let (account_id, groups, role_group) = request_account_context(request.metadata());
        if let Err(e) = view::validates::validate_collection_can_write(&manage_id, &role_group).await {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<NewSpecsRequest>,
) -> Result<Request<NewSpecsRequest>, Status> {
    Ok(request)
}

async fn handle_new_specs(
    request: Request<NewSpecsRequest>,
) -> Result<Response<NewSpecsResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata());

    let manage_id = &request.get_ref().manage_id;
    let entity_id = &request.get_ref().entity_id;
    let name = &request.get_ref().name;
    let description = &request.get_ref().description;
    let targets = &request.get_ref().targets;

    if validate_name(name).is_err() {
        return Err(Status::data_loss(format!(
            "{}: {}-{}",
            t!("名字不能为空"),
            manage_id,
            entity_id
        )));
    }
    let local_name = match name {
        Some(n) => n,
        None => {
            return Err(Status::aborted(format!("{}--{}-{}", t!("没有指定名称"), manage_id, entity_id)));
        }
    };
    let name_doc = doc! {local_name.language.clone():local_name.name.clone()};

    let majordomo_arc = get_majordomo();
    let specs_manager = majordomo_arc.get_manager_by_id(SPECSES_MANAGE_ID).unwrap();

    // 新建条目
    let mut new_entity_doc = if let Some(r) = make_new_entity_document(&specs_manager).await {
        r
    } else {
        return Err(Status::aborted(format!(
            "{}: 管理 {}",
            t!("新建实体文档失败"),
            SPECSES_MANAGE_ID
        )));
    };
    let new_id = new_entity_doc
        .get_str(ID_FIELD_ID.to_string())
        .unwrap()
        .to_owned();

    new_entity_doc.insert(SPECSES_MANAGE_ID_FIELD_ID.to_string(), manage_id.clone());
    new_entity_doc.insert(SPECSES_ENTITY_ID_FIELD_ID.to_string(), entity_id.clone());
    new_entity_doc.insert(NAME_MAP_FIELD_ID.to_string(), name_doc);
    new_entity_doc.insert(DESCRIPTIONS_FIELD_ID.to_string(), description.clone());
    new_entity_doc.insert(SPECSES_TARGETS_FIELD_ID.to_string(), targets.iter().map(|t| bson::from_slice(t).unwrap()).collect::<Vec<bson::Bson>>());

    let new_specs_result = specs_manager
        .sink_entity(&mut new_entity_doc, &account_id, &role_group)
        .await;

    match new_specs_result {
        Ok(_r) => Ok(Response::new(NewSpecsResponse { result: new_id })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}

