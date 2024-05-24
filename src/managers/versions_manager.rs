
use std::sync::{Arc, OnceLock};

use dependencies_sync::once_cell::sync::Lazy;
use dependencies_sync::log::{error, info, warn};
use dependencies_sync::tonic::async_trait;

use dependencies_sync::bson::Document;
use dependencies_sync::parking_lot::RwLock;
use dependencies_sync::rust_i18n::{self, t};

use cash_core::{manage_from_document, Manage};
use cash_result::*;
use managers::hard_coded_cache_interface::HardCodedInterface;
use managers::{declare_common_manager_interface, declare_get_manager, AllManagerInterface, Manager, ManagerInterface, entity_interface::EntityInterface};

use crate::ids_codes::manage_ids::VERSIONS_MANAGE_ID;
use manage_define::manage_ids::MANAGES_MANAGE_ID;

#[derive(Default)]
pub struct VersionsManager;

/// 缓存
static VERSIONS_MANAGE: OnceLock<Arc<RwLock<Manage>>> = OnceLock::new();
static VERSIONS_MANAGE_DOCUMENT: OnceLock<Arc<RwLock<Document>>> = OnceLock::new();

/// 管理器
static INNER: Lazy<Arc<Box<dyn AllManagerInterface>>> = Lazy::new(||
    Arc::new(Box::new(VersionsManager {}))
);
static VERSIONS_MANAGER: OnceLock<Manager> = OnceLock::new();

// 声明管理器取得函数
declare_get_manager!(VersionsManager, VERSIONS_MANAGER, INNER.clone());

declare_common_manager_interface!(VersionsManager, VERSIONS_MANAGE, VERSIONS_MANAGE_DOCUMENT, VERSIONS_MANAGE_ID);

#[async_trait]
impl AllManagerInterface for VersionsManager {}
#[async_trait]
impl HardCodedInterface for VersionsManager {}
#[async_trait]
impl EntityInterface for VersionsManager {}
