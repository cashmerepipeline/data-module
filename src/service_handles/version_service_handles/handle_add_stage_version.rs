use auth::ROLE_GROUP_NAME;
use dependencies_sync::bson::{self, doc};
use dependencies_sync::chrono::format::format;
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tonic::async_trait;
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::{Request, Response, Status};

use majordomo::{self, get_majordomo};
use managers::utils::make_new_entity_document;
use validates::validate_entity_id;
use crate::protocols::*;
use crate::ids_codes::field_ids::*;
use manage_define::general_field_ids::*;
use crate::ids_codes::manage_ids::*;
use managers::ManagerTrait;
use request_utils::request_account_context;

use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleAddStageVersion {
    async fn handle_add_stage_version(
        &self,
        request: Request<AddStageVersionRequest>,
    ) -> UnaryResponseResult<AddStageVersionResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_add_stage_version)
            .await
    }
}

async fn validate_view_rules(
    request: Request<AddStageVersionRequest>,
) -> Result<Request<AddStageVersionRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = STAGES_MANAGE_ID;
        let (_account_id, _groups, role_group) = request_account_context(request.metadata())?;
        if let Err(e) =
            view::validates::validate_collection_can_write(&manage_id, &role_group).await
        {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<AddStageVersionRequest>,
) -> Result<Request<AddStageVersionRequest>, Status> {
    let stage_id = &request.get_ref().stage_id;
    let version = &request.get_ref().version;

    validate_entity_id(&SPECSES_MANAGE_ID, stage_id).await?;
    
    Ok(request)
}

async fn handle_add_stage_version(
    request: Request<AddStageVersionRequest>,
) -> Result<Response<AddStageVersionResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata())?;

    let stage_id = &request.get_ref().stage_id;
    let version = &request.get_ref().version;

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(VERSIONS_MANAGE_ID).unwrap();

    let query_doc = doc! {
        ID_FIELD_ID.to_string():version,
    };

    // 检查版本是否已存在
    if manager.entity_exists(&query_doc).await.is_some(){
        return Err(Status::already_exists(format!("{}: {}", t!("版本已经存在"), version)));
    };

    let mut new_entity_doc = match make_new_entity_document(&manager, &account_id).await{
        Some(r) => r,
        None => return Err(Status::aborted(format!("{}: {}", t!("取得新实体失败"), "add_stage_version")))
    };
    // 不使用生成的id
    new_entity_doc.insert(ID_FIELD_ID.to_string(), version);
    new_entity_doc.insert(VERSIONS_STAGE_ID_FIELD_ID.to_string(), stage_id);

    let result = manager
        .sink_entity(&mut new_entity_doc, &account_id, &role_group)
        .await;

    match result {
        Ok(r) => Ok(Response::new(AddStageVersionResponse {
            result: r,
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
