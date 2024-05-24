use dependencies_sync::futures::TryFutureExt;

use dependencies_sync::tonic::async_trait;

use crate::ids_codes::field_ids::*;
use crate::ids_codes::manage_ids::*;
use crate::protocols::*;
use majordomo::{self, get_majordomo};
use managers::entity_interface::EntityInterface;
use request_utils::request_account_context;

use dependencies_sync::tonic::{Request, Response, Status};

use service_utils::types::UnaryResponseResult;

#[async_trait]
pub trait HandleGetDataInfo {
    async fn handle_get_data_info(
        &self,
        request: Request<GetDataInfoRequest>,
    ) -> UnaryResponseResult<GetDataInfoResponse> {
        validate_view_rules(request)
            .and_then(validate_request_params)
            .and_then(handle_get_data_info)
            .await
    }
}

async fn validate_view_rules(
    request: Request<GetDataInfoRequest>,
) -> Result<Request<GetDataInfoRequest>, Status> {
    #[cfg(feature = "view_rules_validate")]
    {
        let manage_id = DATAS_MANAGE_ID;
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
    request: Request<GetDataInfoRequest>,
) -> Result<Request<GetDataInfoRequest>, Status> {
    Ok(request)
}

async fn handle_get_data_info(
    request: Request<GetDataInfoRequest>,
) -> Result<Response<GetDataInfoResponse>, Status> {
    let (_account_id, _groups, _role_group) = request_account_context(request.metadata())?;

    let data_id = &request.get_ref().data_id;

    let majordomo_arc = get_majordomo();
    let data_manager = majordomo_arc.get_manager_by_id(DATAS_MANAGE_ID).unwrap();

    let result = data_manager.get_entity_by_id(data_id, &vec![], &vec![]).await;
    match result {
        Ok(r) => Ok(Response::new(GetDataInfoResponse {
            data_info: Some(DataInfo {
                data_type: r.get_i32(DATAS_DATA_TYPE_FIELD_ID.to_string()).unwrap(),
                specs_id: r
                    .get_str(DATAS_SPECS_ID_FIELD_ID.to_string())
                    .unwrap()
                    .to_owned(),
                stages: r
                    .get_array(DATAS_STAGES_FIELD_ID.to_string())
                    .unwrap_or(&vec![])
                    .iter()
                    .map(|x| String::from(x.as_str().unwrap()))
                    .collect(),
            }),
        })),
        Err(e) => Err(Status::aborted(format!(
            "{} {}",
            e.operation(),
            e.details()
        ))),
    }
}
