use serde_derive::{Deserialize, Serialize};
use dependencies_sync::toml;

///续传点，包含chunk_index和md5
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ResumePoint {
    pub chunk_index: usize,
    pub chunk_md5: String,
}

impl ResumePoint {
    pub fn from_str(str: &str) -> Result<ResumePoint, toml::de::Error> {
        toml::from_str(str)
    }
}