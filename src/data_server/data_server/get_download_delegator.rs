use std::sync::Arc;

use crate::data_server::DataServer;
use crate::data_server::get_download_delegator_pool;
use crate::data_server::download_delegator::DownloadDelegator;

impl DataServer {
    pub fn get_download_delegator(&self) -> Option<Arc<DownloadDelegator>> {
        let delegators_pool_arc =
            get_download_delegator_pool(Some(self.max_upload_connections_number));
        let delegator_pool = delegators_pool_arc.write();

        delegator_pool.request_delegator()
    }

    pub fn return_back_download_delegator(&self, delegator: Arc<DownloadDelegator>) {
        let delegator_pool_arc =
            get_download_delegator_pool(Some(self.max_upload_connections_number));
        let delegator_pool = delegator_pool_arc.write();

        delegator_pool.return_back_delegator(delegator);
    }
}
