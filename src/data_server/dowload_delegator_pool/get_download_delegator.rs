use std::sync::Arc;

use crate::data_server::download_delegator::DownloadDelegator;
use crate::data_server::get_download_delegator_pool;


pub fn get_download_delegator() -> Option<Arc<DownloadDelegator>> {
    let delegators_pool_arc = get_download_delegator_pool();
    let delegator_pool = delegators_pool_arc.write();

    delegator_pool.request_delegator()
}

