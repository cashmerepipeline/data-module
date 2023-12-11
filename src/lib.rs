
use dependencies_sync::rust_i18n::{self, i18n};
i18n!("locales");

pub mod service_handles;
pub mod protocols;
pub mod managers;
pub mod services;
pub mod ids_codes;
pub use data_server_configs::*;

mod data_server;
mod data_server_configs;

mod validates;