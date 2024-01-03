use cash_result::{operation_failed, OperationResult};
use dependencies_sync::{
    rust_i18n::{self, t}, log,
};
use majordomo::get_majordomo;
use managers::ManagerTrait;

use crate::{ids_codes::{field_ids::DATAS_DATA_TYPE_FIELD_ID, manage_ids::DATAS_MANAGE_ID}, protocols::DataType};

pub async fn get_data_data_type(data_id: &str) -> Result<DataType, OperationResult> {
    // 取得总管
    let majordomo_arc = get_majordomo();
    // 取得data管理器
    let manager = majordomo_arc.get_manager_by_id(DATAS_MANAGE_ID).unwrap();

    // 取得data实体
    let data = manager.get_entity_by_id(data_id, &vec![]).await.unwrap();
    let data_type: DataType = match data.get_i32(DATAS_DATA_TYPE_FIELD_ID.to_string()) {
        Ok(t) => DataType::try_from(t).unwrap(),
        Err(e) => {
            log::error!("{}: {}", t!("取得数据类型失败"), e);
            return Err(operation_failed(
                "get_data_data_type",
                format!("{}: {}", t!("取得数据类型失败"), data_id),
            ))
        }
    };

    Ok(data_type)
}
