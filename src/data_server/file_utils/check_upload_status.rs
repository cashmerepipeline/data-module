/// 从数据库中取得文件上传状态，
/// 如果上传过，则返回已经上传，直接关联数据
/// 如果为新文件，则新建记录
/// 如果是续传，则返回续传点
pub async fn check_upload_status(
    _file_md5:String
) -> Result<u64, String>{

    Ok(0)
}
