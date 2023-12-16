use std::sync::Arc;

use crate::data_server::get_upload_delegator_pool;
use crate::data_server::upload_delegator::UploadDelegator;
use crate::data_server::DataServer;

pub fn return_back_upload_delegator(delegator: Arc<UploadDelegator>) {
  let delegator_pool_arc = get_upload_delegator_pool();
  let delegator_pool = delegator_pool_arc.write();

  delegator_pool.return_back_delegator(delegator);
}