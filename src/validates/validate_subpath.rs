use dependencies_sync::{tonic::Status, rust_i18n::{self, t}};

pub fn validate_subpath(subpath: &str) -> Result<(), Status> {
  if subpath.contains("..") {
    return Err(Status::invalid_argument(format!("{}: {}", t!("子目录不能包含\"..\""), subpath)));
  }

  Ok(())
}