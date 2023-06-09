use dependencies_sync::parking_lot::RwLock;
use std::sync::Arc;

use crate::data_server;
use crate::data_server::upload_delegator::UploadDelegator;

/// 接收器池表
static mut UPLOAD_DELEGATORS_POOL: Option<Arc<RwLock<UploadDelegatorsPool>>> = None;

#[derive(Debug)]
pub struct UploadDelegatorsPool {
    delegators: Arc<RwLock<Vec<Arc<UploadDelegator>>>>,
}

pub fn init_upload_delegators_pool(max_upload_number: u16) -> Arc<RwLock<UploadDelegatorsPool>> {
    let mut delegators: Vec<Arc<UploadDelegator>> = vec![];
    let transfer_chunk_size = data_server::get_data_server().transfer_chunck_size as usize;

    for _i in 0..max_upload_number {
        let new_receiver = Arc::new(UploadDelegator {
            transfer_chunk_size,
        });
        delegators.push(new_receiver)
    }

    Arc::new(RwLock::new(UploadDelegatorsPool {
        delegators: Arc::new(RwLock::new(delegators)),
    }))
}

pub fn get_upload_delegator_pool(
    max_upload_number: Option<u16>,
) -> Arc<RwLock<UploadDelegatorsPool>> {
    unsafe {
        if UPLOAD_DELEGATORS_POOL.is_none() {
            let pool = init_upload_delegators_pool(max_upload_number.unwrap_or(256));
            UPLOAD_DELEGATORS_POOL.replace(pool);
        }
        UPLOAD_DELEGATORS_POOL.clone().unwrap()
    }
}

impl UploadDelegatorsPool {
    pub fn request_delegator(&self) -> Option<Arc<UploadDelegator>> {
        let mut delegators = self.delegators.write();
        
        delegators.pop()
    }

    pub fn return_back_delegator(&self, receiver: Arc<UploadDelegator>) {
        let mut receivers_arc = self.delegators.write();
        receivers_arc.push(receiver);
    }
}
