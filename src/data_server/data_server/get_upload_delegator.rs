use std::sync::Arc;

use crate::data_server::DataServer;
use crate::data_server::upload_delegator::UploadDelegator;
use crate::data_server::get_upload_delegator_pool;

impl DataServer {
    pub fn get_upload_delegator(&self) -> Option<Arc<UploadDelegator>> {
        let delegators_pool_arc =
            get_upload_delegator_pool(Some(self.max_upload_connections_number));
        let delegator_pool = delegators_pool_arc.write();

        delegator_pool.request_delegator()
    }

    pub fn return_back_upload_delegator(&self, delegator: Arc<UploadDelegator>) {
        let delegator_pool_arc =
            get_upload_delegator_pool(Some(self.max_upload_connections_number));
        let delegator_pool = delegator_pool_arc.write();

        delegator_pool.return_back_delegator(delegator);
    }
}
