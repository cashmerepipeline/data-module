use dependencies_sync::once_cell;
use dependencies_sync::rust_i18n::{self, i18n, t};
i18n!("locales");

pub mod service_handles;
pub mod protocols;
pub mod managers;
pub mod services;
pub mod ids_codes;

mod data_server;