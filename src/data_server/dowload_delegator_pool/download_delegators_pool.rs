use dependencies_sync::parking_lot::RwLock;
use std::sync::Arc;

use crate::data_server;
use crate::data_server::download_delegator::DownloadDelegator;

/// 接收器池表
static mut DOWNDLOAD_DELEGATORS_POOL: Option<Arc<RwLock<DownloadDelegatorsPool>>> = None;

#[derive(Debug)]
pub struct DownloadDelegatorsPool {
    pub delegators: Arc<RwLock<Vec<Arc<DownloadDelegator>>>>,
}

pub fn init_download_delegators_pool(
    max_download_number: u16,
) -> Arc<RwLock<DownloadDelegatorsPool>> {
    let mut delegators: Vec<Arc<DownloadDelegator>> = vec![];
    let transfer_chunk_size = data_server::get_data_server().transfer_chunck_size as usize;

    for _i in 0..max_download_number {
        let new_receiver = Arc::new(DownloadDelegator{
            transfer_chunk_size,
        });
        delegators.push(new_receiver)
    }

    Arc::new(RwLock::new(DownloadDelegatorsPool {
        delegators: Arc::new(RwLock::new(delegators)),
    }))
}

pub fn get_download_delegator_pool(
    max_download_number: Option<u16>,
) -> Arc<RwLock<DownloadDelegatorsPool>> {
    unsafe {
        if DOWNDLOAD_DELEGATORS_POOL.is_none() {
            let pool = init_download_delegators_pool(max_download_number.unwrap_or(256));
            DOWNDLOAD_DELEGATORS_POOL.replace(pool);
        }
        DOWNDLOAD_DELEGATORS_POOL.clone().unwrap()
    }
}

impl DownloadDelegatorsPool {
    // add code here
    pub fn request_delegator(&self) -> Option<Arc<DownloadDelegator>> {
        let mut delegators = self.delegators.write();
        delegators.pop()
    }

    pub fn return_back_delegator(&self, receiver: Arc<DownloadDelegator>) {
        let mut receivers_arc = self.delegators.write();
        receivers_arc.push(receiver);
    }
}
