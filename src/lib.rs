#[macro_use]
extern crate rust_i18n;
i18n!("locales");

pub mod service_handles;
pub mod protocols;
pub mod managers;
pub mod services;
pub mod ids_codes;

mod data_server;