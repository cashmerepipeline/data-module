use std::sync::Arc;

use crate::data_server::get_upload_delegator_pool;
use crate::data_server::upload_delegator::UploadDelegator;


pub fn get_upload_delegator() -> Option<Arc<UploadDelegator>> {
    let delegators_pool_arc = get_upload_delegator_pool();
    let delegator_pool = delegators_pool_arc.write();

    delegator_pool.request_delegator()
}


