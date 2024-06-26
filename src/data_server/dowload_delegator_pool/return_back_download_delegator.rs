use std::sync::Arc;

use crate::data_server::download_delegator::DownloadDelegator;
use crate::data_server::get_download_delegator_pool;


pub fn return_back_download_delegator(delegator: Arc<DownloadDelegator>) {
  let delegator_pool_arc = get_download_delegator_pool();
  let delegator_pool = delegator_pool_arc.write();

  delegator_pool.return_back_delegator(delegator);
}
