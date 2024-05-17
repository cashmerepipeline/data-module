/*
Author: 闫刚 (yes7rose@sina.com)
lib.rs (c) 2020
Desc: 工作管理
Created:  2020-11-28T02:17:47.146Z
Modified: !date!
*/

use std::sync::Arc;

// use dependencies_sync::log::{error, info, warn};
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tonic::async_trait;

use dependencies_sync::bson::Document;
use dependencies_sync::parking_lot::RwLock;

use cash_core::{manage_from_document, Manage};
use cash_result::*;
use managers::entity_cache_map::EntityCacheInterface;
use managers::{declare_get_manager, Manager, ManagerInner, ManagerTrait};

use crate::ids_codes::manage_ids::PREFABS_MANAGE_ID;
use manage_define::manage_ids::MANAGES_MANAGE_ID;

#[derive(Default)]
pub struct PrefabsManager;

/// 缓存
static mut PREFABS_MANAGE: Option<Arc<RwLock<Manage>>> = None;
static mut PREFABS_MANAGE_DOCUMENT: Option<Arc<RwLock<Document>>> = None;

/// 管理器
static mut PREFABS_MANAGER: Option<Arc<Manager>> = None;

// 声明管理器取得函数
declare_get_manager!(PrefabsManager, PREFABS_MANAGER);

// 实现接口
#[async_trait]
impl ManagerTrait for PrefabsManager {
    fn unregister(&self) -> Result<OperationResult, OperationResult> {
        Err(operation_failed(
            "unregister",
            format!(
                "{}-{}-{}",
                t!("管理器不能被注销"),
                self.get_id(),
                self.get_name()
            ),
        ))
    }

    fn get_id(&self) -> &'static str {
        PREFABS_MANAGE_ID
    }

    fn get_name(&self) -> String {
        "PrefabsManager".to_string()
    }

    async fn get_manage(&self) -> Arc<RwLock<Manage>> {
        unsafe {
            if PREFABS_MANAGE.is_some() {
                PREFABS_MANAGE.clone().unwrap()
            } else {
                let collection_name = MANAGES_MANAGE_ID.to_string();
                let id_str = PREFABS_MANAGE_ID.to_string();
                let m_doc =
                    match entity::get_entity_by_id(&collection_name, &id_str, &[], &[]).await {
                        Ok(r) => r,
                        Err(e) => panic!("{} {}", e.operation(), e.details()),
                    };
                let manage: Manage = manage_from_document(m_doc).unwrap();
                PREFABS_MANAGE.replace(Arc::new(RwLock::new(manage)));
                PREFABS_MANAGE.clone().unwrap()
            }
        }
    }

    async fn get_manage_document(&self) -> Arc<RwLock<Document>> {
        unsafe {
            if PREFABS_MANAGE_DOCUMENT.is_some() {
                PREFABS_MANAGE_DOCUMENT.clone().unwrap()
            } else {
                let collection_name = MANAGES_MANAGE_ID.to_string();
                let id_str = PREFABS_MANAGE_ID.to_string();
                let m_doc =
                    match entity::get_entity_by_id(&collection_name, &id_str, &[], &[]).await {
                        Ok(r) => r,
                        Err(e) => panic!("{} {}", e.operation(), e.details()),
                    };

                PREFABS_MANAGE_DOCUMENT.replace(Arc::new(RwLock::new(m_doc)));
                PREFABS_MANAGE_DOCUMENT.clone().unwrap()
            }
        }
    }
}

impl EntityCacheInterface for PrefabsManager {}
