

use dependencies_sync::bson::{self, doc};
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;
use dependencies_sync::rust_i18n::{self, t};

use dependencies_sync::tonic::{Request, Response, Status};

use crate::ids_codes::field_ids::*;
use crate::ids_codes::manage_ids::*;
use crate::protocols::*;
use majordomo::{self, get_majordomo};
use manage_define::general_field_ids::*;

use service_utils::types::UnaryResponseResult;
use validates::{validate_name, validate_manage_id};

use managers::ManagerTrait;
use managers::utils::make_new_entity_document;
use request_utils::request_account_context;

#[async_trait]
pub trait HandleNewSpecsAttribute {
    /// 新建产品
    async fn handle_new_specs_attribute(
        &self,
        request: Request<NewSpecsAttributeRequest>,
    ) -> UnaryResponseResult<NewSpecsAttributeResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_new_specs_attribute)
            .await
    }
}

async fn validate_view_rules(
    request: Request<NewSpecsAttributeRequest>,
) -> Result<Request<NewSpecsAttributeRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = SPECSES_MANAGE_ID;
        let (account_id, groups, role_group) = request_account_context(request.metadata())?;
        if let Err(e) =
            view::validates::validate_collection_can_write(&manage_id, &role_group).await
        {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<NewSpecsAttributeRequest>,
) -> Result<Request<NewSpecsAttributeRequest>, Status> {
    // 检查目标实体存在
    let manage_id = &request.get_ref().manage_id;
    let name = &request.get_ref().name;

    validate_manage_id(manage_id).await?;
    validate_name(name)?;
    
    Ok(request)
}

async fn handle_new_specs_attribute(
    request: Request<NewSpecsAttributeRequest>,
) -> Result<Response<NewSpecsAttributeResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata())?;

    let index = &request.get_ref().index;
    let name = &request.get_ref().name;
    let manage_id = &request.get_ref().manage_id;
    let default_value = &request.get_ref().default_value;
    let data_type = &request.get_ref().data_type;
    let description = &request.get_ref().description;

    let local_name = match name {
        Some(n) => n,
        None => {
            return Err(Status::aborted(format!(
                "{}--{}",
                t!("没有指定名称"),
                manage_id,
            )));
        }
    };
    let name_doc = doc! {local_name.language.clone():local_name.name.clone()};

    let majordomo_arc = get_majordomo();
    let specs_manager = majordomo_arc.get_manager_by_id(SPECS_ATTRIBUTES_MANAGE_ID).unwrap();

    // 新建条目
    let mut new_entity_doc = if let Ok(r) = make_new_entity_document(&specs_manager, &account_id).await {
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

    new_entity_doc.insert(NAME_MAP_FIELD_ID.to_string(), name_doc);
    new_entity_doc.insert(DESCRIPTION_FIELD_ID.to_string(), bson::to_document(description).unwrap());
    new_entity_doc.insert(SPECS_ATTRIBUTES_INDEX_FIELD_ID.to_string(), index);
    new_entity_doc.insert(SPECS_ATTRIBUTES_MANAGE_ID_FIELD_ID.to_string(), manage_id);
    new_entity_doc.insert(SPECS_ATTRIBUTES_DATA_TYPE_FIELD_ID.to_string(), data_type.clone());
    new_entity_doc.insert(SPECS_ATTRIBUTES_DEFAULT_VALUE_FIELD_ID.to_string(), bson::to_bson(default_value).unwrap());

    let new_specs_result = specs_manager
        .sink_entity(&mut new_entity_doc, &account_id, &role_group)
        .await;

    match new_specs_result {
        Ok(_r) => Ok(Response::new(NewSpecsAttributeResponse { result: new_id })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
