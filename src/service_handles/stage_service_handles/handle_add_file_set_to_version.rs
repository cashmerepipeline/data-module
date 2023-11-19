use dependencies_sync::tonic::async_trait;
use dependencies_sync::tonic::{Request, Response, Status};
use dependencies_sync::bson::{self, doc};
use dependencies_sync::futures::TryFutureExt;

use majordomo::{self, get_majordomo};
use crate::protocols::*;
use crate::ids_codes::field_ids::*;
use manage_define::general_field_ids::*;
use crate::ids_codes::manage_ids::*;
use managers::ManagerTrait;
use request_utils::request_account_context;


use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleAddFileSetToVersion {
    async fn handle_add_file_set_to_version(
        &self,
        request: Request<AddFileSetToVersionRequest>,
    ) -> UnaryResponseResult<AddFileSetToVersionResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_add_file_set_to_version)
            .await
    }
}


async fn validate_view_rules(
    request: Request<AddFileSetToVersionRequest>,
) -> Result<Request<AddFileSetToVersionRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = STAGES_MANAGE_ID;
        let (_account_id, _groups, role_group) = request_account_context(request.metadata())?;
        if let Err(e) = view::validates::validate_collection_can_write(&manage_id, &role_group).await {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<AddFileSetToVersionRequest>,
) -> Result<Request<AddFileSetToVersionRequest>, Status> {
    Ok(request)
}

async fn handle_add_file_set_to_version(
    request: Request<AddFileSetToVersionRequest>,
) -> Result<Response<AddFileSetToVersionResponse>, Status> {
    let (account_id, _groups, _role_group) = request_account_context(request.metadata())?;

    let stage_id = &request.get_ref().stage_id;
    let version = &request.get_ref().version;
    let file_pathes = &request.get_ref().file_pathes;

    let majordomo_arc = get_majordomo();
    let manager = majordomo_arc
        .get_manager_by_id(STAGES_MANAGE_ID)
        .unwrap();

    let query_doc = doc! {
        ID_FIELD_ID.to_string():stage_id,
        format!("{}.name", STAGES_VERSIONS_FIELD_ID):version,
    };

    // let files_bson:Vec<bson::Bson> = file_pathes.iter().map(|p| bson::to_bson(p).unwrap()).collect();

    let field_key = format!("{}.$.files", STAGES_VERSIONS_FIELD_ID);
    let mut modify_doc = bson::Document::new();
    modify_doc.insert(field_key, doc!{"$each": file_pathes});

    let result = manager
        .add_to_array_field(query_doc, modify_doc, &account_id)
        .await;

    match result {
        Ok(_r) => Ok(Response::new(AddFileSetToVersionResponse {
            result: "ok".to_string(),
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
