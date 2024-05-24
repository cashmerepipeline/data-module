use std::sync::{Arc, OnceLock};

use dependencies_sync::log::{error, info, warn};
use dependencies_sync::once_cell::sync::Lazy;
use dependencies_sync::rust_i18n::{self, t};
use dependencies_sync::tonic::async_trait;

use dependencies_sync::bson::Document;
use dependencies_sync::parking_lot::RwLock;

use cash_core::{manage_from_document, Manage};
use cash_result::*;
use managers::hard_coded_cache_interface::HardCodedInterface;
use managers::{
    declare_common_manager_interface, declare_get_manager, entity_interface::EntityInterface,
    AllManagerInterface, Manager, ManagerInterface,
};

use crate::ids_codes::manage_ids::SPECSES_MANAGE_ID;
use manage_define::manage_ids::MANAGES_MANAGE_ID;

#[derive(Default)]
pub struct SpecsesManager;

/// 缓存
static SPECSES_MANAGE: OnceLock<Arc<RwLock<Manage>>> = OnceLock::new();
static SPECSES_MANAGE_DOCUMENT: OnceLock<Arc<RwLock<Document>>> = OnceLock::new();

/// 管理器
static INNER: Lazy<Arc<Box<dyn AllManagerInterface>>> =
    Lazy::new(|| Arc::new(Box::new(SpecsesManager {})));
static SPECSES_MANAGER: OnceLock<Manager> = OnceLock::new();

// 声明管理器取得函数
declare_get_manager!(SpecsesManager, SPECSES_MANAGER, INNER.clone());

declare_common_manager_interface!(
    SpecsesManager,
    SPECSES_MANAGE,
    SPECSES_MANAGE_DOCUMENT,
    SPECSES_MANAGE_ID
);

#[async_trait]
impl AllManagerInterface for SpecsesManager {}
#[async_trait]
impl HardCodedInterface for SpecsesManager {}
#[async_trait]
impl EntityInterface for SpecsesManager {}
