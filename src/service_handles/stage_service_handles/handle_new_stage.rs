use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;
use dependencies_sync::rust_i18n::{self, t};

use majordomo::{self, get_majordomo};
use crate::protocols::*;
use crate::ids_codes::field_ids::*;
use manage_define::general_field_ids::*;
use crate::ids_codes::manage_ids::*;
use managers::ManagerTrait;
use managers::utils::make_new_entity_document;
use request_utils::request_account_context;

use dependencies_sync::tonic::{Request, Response, Status};


use service_utils::types::UnaryResponseResult;
use service_utils::validate_name;

#[async_trait]
pub trait HandleNewStage {
    async fn handle_new_stage(
        &self,
        request: Request<NewStageRequest>,
    ) -> UnaryResponseResult<NewStageResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_new_stage)
            .await
    }
}

async fn validate_view_rules(
    request: Request<NewStageRequest>,
) -> Result<Request<NewStageRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = STAGES_MANAGE_ID;
        let (account_id, groups, role_group) = request_account_context(request.metadata());
        if let Err(e) = view::validates::validate_collection_can_write(&manage_id, &role_group).await {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<NewStageRequest>,
) -> Result<Request<NewStageRequest>, Status> {
    Ok(request)
}

async fn handle_new_stage(
    request: Request<NewStageRequest>,
) -> Result<Response<NewStageResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata());

    let data_id = &request.get_ref().data_id;
    let name = &request.get_ref().stage_name;
    let description = &request.get_ref().description;

    if !validate_name(name) {
        return Err(Status::data_loss(format!(
            "{}: {}",
            t!("名字不能为空"),
            data_id
        )));
    }
    let _name = name.as_ref().unwrap();

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();

    // 新建条目
    let mut new_entity_doc = if let Some(r) = make_new_entity_document(&manager, &account_id).await {
        r
    } else {
        return Err(Status::aborted(format!(
            "{}: {}",
            t!("新建实体文档失败"),
            SPECSES_MANAGE_ID
        )));
    };

    new_entity_doc.insert(STAGES_DATA_ID_FIELD_ID.to_string(), data_id.clone());
    new_entity_doc.insert(DESCRIPTIONS_FIELD_ID.to_string(), description.clone());

    let new_id = new_entity_doc
        .get_str(ID_FIELD_ID.to_string())
        .unwrap()
        .to_owned();

    let result = manager
        .sink_entity(&mut new_entity_doc, &account_id, &role_group)
        .await;

    match result {
        Ok(_r) => Ok(Response::new(NewStageResponse { result: new_id })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}

