use dependencies_sync::bson;
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tonic::async_trait;

use crate::ids_codes::field_ids::*;
use crate::ids_codes::manage_ids::*;
use crate::protocols::*;
use crate::validates::validate_stage;
use majordomo::{self, get_majordomo};
use manage_define::general_field_ids::*;
use managers::utils::make_new_entity_document;
use managers::ManagerTrait;
use request_utils::request_account_context;

use dependencies_sync::tonic::{Request, Response, Status};

use service_utils::types::UnaryResponseResult;
use validates::{validate_description_length, validate_entity_id};

#[async_trait]
pub trait HandleAddDataStage {
    async fn handle_add_data_stage(
        &self,
        request: Request<AddDataStageRequest>,
    ) -> UnaryResponseResult<AddDataStageResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_add_data_stage)
            .await
    }
}

async fn validate_view_rules(
    request: Request<AddDataStageRequest>,
) -> Result<Request<AddDataStageRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = STAGES_MANAGE_ID;
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
    request: Request<AddDataStageRequest>,
) -> Result<Request<AddDataStageRequest>, Status> {
    let data_id = &request.get_ref().data_id;
    let stage = &request.get_ref().stage;
    let description = &request.get_ref().description;

    validate_entity_id(DATAS_MANAGE_ID, data_id).await?;

    if stage.is_empty() {
        return Err(Status::invalid_argument(format!(
            "{}: {}",
            t!("阶段名不能为空"),
            stage,
        )));
    }

    validate_description_length(description)?;

    // zh: stage必须唯一
    if validate_stage(data_id, stage).await.is_ok() {
        return Err(Status::invalid_argument(format!(
            "{}: {}",
            t!("阶段名已存在"),
            stage,
        )));
    };

    Ok(request)
}

async fn handle_add_data_stage(
    request: Request<AddDataStageRequest>,
) -> Result<Response<AddDataStageResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata())?;

    let data_id = &request.get_ref().data_id;
    let stage = &request.get_ref().stage;
    let description = &request.get_ref().description;

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc.get_manager_by_id(STAGES_MANAGE_ID).unwrap();

    // 新建条目
    let mut new_entity_doc = if let Ok(r) = make_new_entity_document(&manager, &account_id).await
    {
        r
    } else {
        return Err(Status::aborted(format!(
            "{}: {}",
            t!("新建实体文档失败"),
            SPECSES_MANAGE_ID
        )));
    };

    // id使用指定的stage
    new_entity_doc.insert(STAGES_STAGE_FIELD_ID.to_string(), stage.clone());
    new_entity_doc.insert(STAGES_DATA_ID_FIELD_ID.to_string(), data_id.clone());
    new_entity_doc.insert(DESCRIPTION_FIELD_ID.to_string(), bson::to_document(description).unwrap());

    let new_id = new_entity_doc
        .get_str(ID_FIELD_ID.to_string())
        .unwrap()
        .to_owned();

    let result = manager
        .sink_entity(&mut new_entity_doc, &account_id, &role_group)
        .await;

    match result {
        Ok(_r) => Ok(Response::new(AddDataStageResponse { result: new_id })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
