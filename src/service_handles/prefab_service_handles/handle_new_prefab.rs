use dependencies_sync::bson::{doc, Document};
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;
use dependencies_sync::rust_i18n::{self, t};

use dependencies_sync::tonic::{Request, Response, Status};

use crate::ids_codes::field_ids::*;
use crate::ids_codes::manage_ids::*;
use crate::protocols::*;
use majordomo::{self, get_majordomo};
use manage_define::general_field_ids::*;
use managers::ManagerTrait;
use request_utils::request_account_context;
use validates::validate_name;

use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleNewPrefab {
    /// 新建产品
    async fn handle_new_prefab(
        &self,
        request: Request<NewPrefabRequest>,
    ) -> UnaryResponseResult<NewPrefabResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_new_prefab)
            .await
    }
}

async fn validate_view_rules(
    request: Request<NewPrefabRequest>,
) -> Result<Request<NewPrefabRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = PREFABS_MANAGE_ID;
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
    request: Request<NewPrefabRequest>,
) -> Result<Request<NewPrefabRequest>, Status> {
    let name = &request.get_ref().name;
    validate_name(name)?;
    
    Ok(request)
}

async fn handle_new_prefab(
    request: Request<NewPrefabRequest>,
) -> Result<Response<NewPrefabResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata())?;

    let name = &request.get_ref().name;
    let specs_id = &request.get_ref().specs_id;
    let _stage_id = &request.get_ref().stage_id;
    let _modifies = &request.get_ref().modifies;
    let description = &request.get_ref().description;

    let name = name.as_ref().unwrap();

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(PREFABS_MANAGE_ID).unwrap();

    // 新建条目
    let new_id = manager.get_new_entity_id(&account_id).await.unwrap();
    let mut new_entity_doc = Document::new();
    new_entity_doc.insert(ID_FIELD_ID.to_string(), new_id.to_string());
    new_entity_doc.insert(
        NAME_MAP_FIELD_ID.to_string(),
        doc! {name.language.clone():name.name.clone()},
    );
    new_entity_doc.insert(PREFABS_SPECS_ID_FIELD_ID.to_string(), specs_id.clone());
    new_entity_doc.insert(DESCRIPTION_FIELD_ID.to_string(), description.clone());

    let result = manager
        .sink_entity(&mut new_entity_doc, &account_id, &role_group)
        .await;

    match result {
        Ok(r) => Ok(Response::new(NewPrefabResponse {
            // TODO: 发送新建事件
            result: r,
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
