/*
Author: 闫刚 (yes7rose@sina.com)
lib.rs (c) 2020
Desc: 工作管理
Created:  2020-11-28T02:17:47.146Z
Modified: !date!
*/

use std::sync::Arc;

// use dependencies_sync::log::{error, info, warn};
use dependencies_sync::tonic::async_trait;
use dependencies_sync::rust_i18n::{self, t};

use dependencies_sync::bson::Document;
use dependencies_sync::parking_lot::RwLock;

use cash_core::{manage_from_document, Manage};
use cash_result::*;
use managers::{declare_get_manager, ManagerTrait, Manager, ManagerInner};

use crate::ids_codes::manage_ids::SPECSES_MANAGE_ID;
use manage_define::manage_ids::MANAGES_MANAGE_ID;

#[derive(Default)]
pub struct SpecsesManager;

/// 缓存
static mut SPECSES_MANAGE: Option<Arc<RwLock<Manage>>> = None;
static mut SPECSES_MANAGE_DOCUMENT: Option<Arc<RwLock<Document>>> = None;

/// 管理器
static mut SPECSES_MANAGER: Option<Arc<Manager>> = None;

// 声明管理器取得函数
declare_get_manager!(SpecsesManager, SPECSES_MANAGER);

// 实现接口
#[async_trait]
impl ManagerTrait for SpecsesManager {
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

    fn get_id(&self) -> i32 {
        SPECSES_MANAGE_ID
    }

    fn get_name(&self) -> String {
        "SpecsesManager".to_string()
    }

    fn has_cache(&self) -> bool {
        false
    }

    async fn get_manage(&self) -> Arc<RwLock<Manage>> {
        unsafe {
            if SPECSES_MANAGE.is_some() {
                SPECSES_MANAGE.clone().unwrap()
            } else {
                let collection_name = MANAGES_MANAGE_ID.to_string();
                let id_str = SPECSES_MANAGE_ID.to_string();
                let m_doc = match entity::get_entity_by_id(&collection_name, &id_str).await {
                    Ok(r) => r,
                    Err(e) => panic!("{} {}", e.operation(), e.details()),
                };
                let manage: Manage = manage_from_document(m_doc).unwrap();
                SPECSES_MANAGE.replace(Arc::new(RwLock::new(manage)));
                SPECSES_MANAGE.clone().unwrap()
            }
        }
    }

    async fn get_manage_document(&self) -> Arc<RwLock<Document>> {
        unsafe {
            if SPECSES_MANAGE_DOCUMENT.is_some() {
                SPECSES_MANAGE_DOCUMENT.clone().unwrap()
            } else {
                let collection_name = MANAGES_MANAGE_ID.to_string();
                let id_str = SPECSES_MANAGE_ID.to_string();
                let m_doc = match entity::get_entity_by_id(&collection_name, &id_str).await {
                    Ok(r) => r,
                    Err(e) => panic!("{} {}", e.operation(), e.details()),
                };

                SPECSES_MANAGE_DOCUMENT.replace(Arc::new(RwLock::new(m_doc)));
                SPECSES_MANAGE_DOCUMENT.clone().unwrap()
            }
        }
    }
}
