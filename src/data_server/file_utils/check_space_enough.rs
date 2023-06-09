use std::path::Path;

use dependencies_sync::fs4::available_space;

/// 检查存储空间是否足够
pub fn check_space_enough(
    data_path: &Path,
    file_size: u64,
) -> Result<(), String> {
    let available_space = available_space(data_path).unwrap();
    if available_space < file_size {
        return Err(format!("{}: {}, {}: {} ", t!("需要空间"), t!("现有空间"), file_size, available_space));
    }

    Ok(())
}