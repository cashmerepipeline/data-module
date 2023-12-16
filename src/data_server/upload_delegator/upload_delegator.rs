use std::sync::Arc;

use crate::data_server::return_back_upload_delegator;

#[derive(Debug, Clone)]
/// 上传代理
pub struct UploadDelegator;

impl Drop for UploadDelegator {
    fn drop(&mut self) {
        return_back_upload_delegator(Arc::new(self.clone()));
    }
}
