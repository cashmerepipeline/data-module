use dependencies_sync::bson::doc;
use dependencies_sync::futures::TryFutureExt;
use dependencies_sync::tonic::async_trait;

use crate::ids_codes::field_ids::*;
use crate::ids_codes::manage_ids::*;
use crate::protocols::*;
use majordomo::{self, get_majordomo};
use manage_define::general_field_ids::*;
use managers::traits::ManagerTrait;
use managers::utils::make_new_entity_document;
use request_utils::request_account_context;

use dependencies_sync::tonic::{Request, Response, Status};

use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleNewData {
    async fn handle_new_data(
        &self,
        request: Request<NewDataRequest>,
    ) -> UnaryResponseResult<NewDataResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_new_data)
            .await
    }
}

async fn validate_view_rules(
    request: Request<NewDataRequest>,
) -> Result<Request<NewDataRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = DATAS_MANAGE_ID;
        let (account_id, groups, role_group) = request_account_context(request.metadata());
        if let Err(e) =
            view::validates::validate_collection_can_write(&manage_id, &role_group).await
        {
            return Err(e);
        }
    }

    Ok(request)
}

async fn validate_request_params(
    request: Request<NewDataRequest>,
) -> Result<Request<NewDataRequest>, Status> {
    Ok(request)
}

async fn handle_new_data(
    request: Request<NewDataRequest>,
) -> Result<Response<NewDataResponse>, Status> {
    let (account_id, _groups, role_group) = request_account_context(request.metadata());

    let specs_id = &request.get_ref().specs_id;
    let data_type = &request.get_ref().data_type;
    let name = &request.get_ref().name;

    let name = if name.is_some() {
        name.as_ref().unwrap()
    } else {
        return Err(Status::data_loss("名字必须提供"));
    };

    let majordomo_arc = get_majordomo();
    let data_manager = majordomo_arc.get_manager_by_id(DATAS_MANAGE_ID).unwrap();

    let local_name = doc! {
        name.language.clone(): name.name.clone()
    };

    if let Some(mut new_entity_doc) = make_new_entity_document(&data_manager).await {
        new_entity_doc.insert(NAME_MAP_FIELD_ID.to_string(), local_name);
        new_entity_doc.insert(DATAS_DATA_TYPE_FIELD_ID.to_string(), data_type);
        new_entity_doc.insert(DATAS_SPECS_ID_FIELD_ID.to_string(), specs_id);

        let result = data_manager
            .sink_entity(&mut new_entity_doc, &account_id, &role_group)
            .await;

        match result {
            Ok(r) => Ok(Response::new(NewDataResponse {
                result: r,
            })),
            Err(e) => Err(Status::aborted(format!(
                "{} {}",
                e.operation(),
                e.details()
            ))),
        }
    } else {
        Err(Status::aborted("新增数据失败。"))
    }
}
