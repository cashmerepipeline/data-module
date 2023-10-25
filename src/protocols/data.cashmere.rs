#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DataInfo {
    #[prost(enumeration = "DataType", tag = "1")]
    pub data_type: i32,
    #[prost(string, tag = "2")]
    pub specs_id: ::prost::alloc::string::String,
    #[prost(string, repeated, tag = "3")]
    pub stages: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// 新建数据
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewDataRequest {
    #[prost(message, optional, tag = "1")]
    pub name: ::core::option::Option<::manage_define::cashmere::Name>,
    #[prost(enumeration = "DataType", tag = "2")]
    pub data_type: i32,
    #[prost(string, tag = "3")]
    pub specs_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewDataResponse {
    /// 成功返回新id，失败返回错误
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 取得数据信息
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetDataInfoRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetDataInfoResponse {
    #[prost(message, optional, tag = "1")]
    pub data_info: ::core::option::Option<DataInfo>,
}
/// 删除数据
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MarkDataRemovedRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MarkDataRemovedResponse {
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum DataType {
    /// 单个文件
    FileData = 0,
    /// 序列文件
    SequenceData = 1,
    /// 多类型文件集合
    FileSetData = 2,
    /// 类json格式数据
    DocumentData = 3,
    /// 图片
    ImageData = 4,
    /// 视频
    VideoData = 5,
}
impl DataType {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            DataType::FileData => "FileData",
            DataType::SequenceData => "SequenceData",
            DataType::FileSetData => "FileSetData",
            DataType::DocumentData => "DocumentData",
            DataType::ImageData => "ImageData",
            DataType::VideoData => "VideoData",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "FileData" => Some(Self::FileData),
            "SequenceData" => Some(Self::SequenceData),
            "FileSetData" => Some(Self::FileSetData),
            "DocumentData" => Some(Self::DocumentData),
            "ImageData" => Some(Self::ImageData),
            "VideoData" => Some(Self::VideoData),
            _ => None,
        }
    }
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DataServerConfigs {
    #[prost(string, tag = "1")]
    pub root_dir_path: ::prost::alloc::string::String,
    /// 文件最大大小, 16MB
    #[prost(uint64, tag = "2")]
    pub max_file_size: u64,
    /// 文件集最大数量, 1000
    #[prost(uint32, tag = "3")]
    pub max_set_size: u32,
    /// 文件序列最大数量
    #[prost(uint64, tag = "4")]
    pub max_sequence_length: u64,
    /// 最大文件上传连接
    #[prost(uint32, tag = "5")]
    pub max_file_upload_number: u32,
    /// 最大文件下载连接
    #[prost(uint32, tag = "6")]
    pub max_file_download_number: u32,
    /// 块最大大小，1024*128=128KB
    #[prost(uint32, tag = "7")]
    pub transfer_chunk_size: u32,
    /// 内部文件路径，不需要通过服务器上传文件, 可将文件直接存储到目标位置
    /// {"windows"="X:/data_root/dir", "linux"="/mnt/data_root/dir", "macos" = "/mnt/data_root/dir"}
    #[prost(map = "string, string", tag = "8")]
    pub internal_root_dir_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
/// 取得数据服务设置
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetDataServerConfigsRequest {}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetDataServerConfigsResponse {
    #[prost(message, optional, tag = "1")]
    pub configs: ::core::option::Option<DataServerConfigs>,
}
/// 文件信息
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FileInfo {
    #[prost(string, tag = "1")]
    pub file_name: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub md5: ::prost::alloc::string::String,
    #[prost(uint64, tag = "3")]
    pub size: u64,
    #[prost(int64, tag = "4")]
    pub last_modified_time: i64,
}
/// 上传文件数据
/// 第一个包块编号为0，最后一个包块编号为0, 即从0开始，到0结束
/// 第一个包和最后一个包不包含文件数据，作为传输标记用
/// 最终路径为：/{data_id}/{specs}/{stage}/{version}/{sub_path}/{file_name}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UploadFileRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
    #[prost(uint64, tag = "2")]
    pub total_chunks: u64,
    #[prost(uint64, tag = "3")]
    pub current_chunk_index: u64,
    #[prost(bytes = "vec", tag = "4")]
    pub chunk: ::prost::alloc::vec::Vec<u8>,
    #[prost(string, tag = "6")]
    pub chunk_md5: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "5")]
    pub file_info: ::core::option::Option<FileInfo>,
    /// 规格，如：普通款，高级款，豪华款
    #[prost(string, tag = "10")]
    pub specs: ::prost::alloc::string::String,
    /// 阶段，如：开发，测试，生产
    #[prost(string, tag = "8")]
    pub stage: ::prost::alloc::string::String,
    /// 版本，如：v01
    #[prost(string, tag = "9")]
    pub version: ::prost::alloc::string::String,
    /// 相对于版本目录的子路径，用于保持文件集的相对良好组织，如：v01/a/b/c
    #[prost(string, tag = "11")]
    pub sub_path: ::prost::alloc::string::String,
}
/// 下一个包块编号
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UploadFileResponse {
    #[prost(uint64, tag = "1")]
    pub next_chunk_index: u64,
}
/// 下载文件数据
/// 编号为0请求返回文件信息
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DownloadFileRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
    /// 相对数据存储根目录
    #[prost(string, tag = "6")]
    pub specs: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub stage: ::prost::alloc::string::String,
    #[prost(uint64, tag = "3")]
    pub chunk_index: u64,
    /// 如果给出版本，则下载对应版本的文件，没有则下载阶段软连接指向的文件
    #[prost(string, tag = "4")]
    pub version: ::prost::alloc::string::String,
    #[prost(string, tag = "7")]
    pub sub_path: ::prost::alloc::string::String,
    #[prost(string, tag = "5")]
    pub file_name: ::prost::alloc::string::String,
}
/// 返回文件流
/// 最后一个包编号为0, 表示下载完成
/// 最后一个包不包含文件数据，作为传输标记用
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DownloadFileResponse {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
    #[prost(uint64, tag = "3")]
    pub chunk_index: u64,
    #[prost(bytes = "vec", tag = "4")]
    pub chunk: ::prost::alloc::vec::Vec<u8>,
    #[prost(string, tag = "5")]
    pub chunk_md5: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewPrefabRequest {
    #[prost(string, tag = "1")]
    pub specs_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub stage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub version: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "4")]
    pub name: ::core::option::Option<::manage_define::cashmere::Name>,
    /// 使用bson格式存储修改信息
    #[prost(bytes = "vec", tag = "5")]
    pub modifies: ::prost::alloc::vec::Vec<u8>,
    #[prost(string, tag = "6")]
    pub description: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewPrefabResponse {
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 列出预制件
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListPrefabRequest {
    #[prost(string, tag = "1")]
    pub specs_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListPrefabResponse {
    #[prost(bytes = "vec", repeated, tag = "1")]
    pub prefabs: ::prost::alloc::vec::Vec<::prost::alloc::vec::Vec<u8>>,
}
/// 序列数据信息
/// 文件名格式：prefix_name.pattern.type_suffix
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SequenceDataInfo {
    #[prost(string, tag = "1")]
    pub prefix_name: ::prost::alloc::string::String,
    #[prost(uint64, tag = "2")]
    pub sequence_pattern: u64,
    #[prost(uint64, tag = "3")]
    pub type_suffix: u64,
    #[prost(uint64, tag = "4")]
    pub start_index: u64,
    #[prost(uint64, tag = "5")]
    pub end_index: u64,
    #[prost(uint64, tag = "6")]
    pub total_size: u64,
    #[prost(string, tag = "7")]
    pub md5: ::prost::alloc::string::String,
}
/// 上传文件序列
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SequenceDataUploadSequenceRequest {
    #[prost(string, tag = "1")]
    pub sequence_name: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub serial_pattern: ::prost::alloc::string::String,
    #[prost(uint32, tag = "3")]
    pub sequence_length: u32,
    #[prost(string, tag = "4")]
    pub current_file: ::prost::alloc::string::String,
    #[prost(uint64, tag = "5")]
    pub total_chancks: u64,
    #[prost(uint64, tag = "6")]
    pub current_chunck: u64,
    #[prost(bytes = "vec", tag = "7")]
    pub chunck: ::prost::alloc::vec::Vec<u8>,
    #[prost(string, tag = "8")]
    pub data_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SequenceDataUploadSequenceResponse {
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 下载文件序列
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SequenceDataDownloadSequenceRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SequenceDataDownloadSequenceResponse {
    #[prost(string, tag = "8")]
    pub data_id: ::prost::alloc::string::String,
    #[prost(string, tag = "1")]
    pub sequence_name: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub serial_pattern: ::prost::alloc::string::String,
    #[prost(uint32, tag = "3")]
    pub sequence_length: u32,
    #[prost(string, tag = "4")]
    pub current_file: ::prost::alloc::string::String,
    #[prost(uint64, tag = "5")]
    pub total_chancks: u64,
    #[prost(uint64, tag = "6")]
    pub current_chunck: u64,
    #[prost(bytes = "vec", tag = "7")]
    pub chunck: ::prost::alloc::vec::Vec<u8>,
}
/// 集合数据信息
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SetDataInfo {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
    #[prost(uint64, tag = "2")]
    pub total_size: u64,
    #[prost(message, repeated, tag = "3")]
    pub file_infos: ::prost::alloc::vec::Vec<FileInfo>,
}
/// 取得数据集合信息
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSetDataInfoRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSetDataInfoResponse {
    #[prost(message, optional, tag = "1")]
    pub data_info: ::core::option::Option<SetDataInfo>,
}
/// 上传单个文件到集合
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SetDataUploadFileRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
    #[prost(uint64, tag = "2")]
    pub total_chunks: u64,
    #[prost(uint64, tag = "3")]
    pub current_chunk_index: u64,
    #[prost(bytes = "vec", tag = "4")]
    pub chunk: ::prost::alloc::vec::Vec<u8>,
    #[prost(message, optional, tag = "5")]
    pub file_info: ::core::option::Option<FileInfo>,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SetDataUploadFileResponse {
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 上传多个文件到集合, 批量上传可能不是很需要
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SetDataUploadFilesRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
    #[prost(uint64, tag = "2")]
    pub current_total_chunks: u64,
    #[prost(uint64, tag = "3")]
    pub current_chunk_index: u64,
    #[prost(bytes = "vec", tag = "4")]
    pub chunk: ::prost::alloc::vec::Vec<u8>,
    #[prost(message, repeated, tag = "5")]
    pub file_info: ::prost::alloc::vec::Vec<FileInfo>,
    #[prost(string, tag = "6")]
    pub current_md5: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SetDataUploadFilesResponse {
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 下载文件集合
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SetDataDownloadSetRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SetDataDownloadSetResponse {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub set_name: ::prost::alloc::string::String,
    #[prost(uint32, tag = "3")]
    pub file_counts: u32,
    #[prost(string, tag = "4")]
    pub current_file: ::prost::alloc::string::String,
    #[prost(uint64, tag = "5")]
    pub total_chancks: u64,
    #[prost(uint32, tag = "6")]
    pub current_chunck: u32,
    #[prost(bytes = "vec", tag = "7")]
    pub chunck: ::prost::alloc::vec::Vec<u8>,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewSpecsRequest {
    #[prost(int32, tag = "1")]
    pub manage_id: i32,
    #[prost(string, tag = "2")]
    pub entity_id: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "3")]
    pub name: ::core::option::Option<::manage_define::cashmere::Name>,
    #[prost(string, tag = "4")]
    pub description: ::prost::alloc::string::String,
    #[prost(bytes = "vec", repeated, tag = "5")]
    pub attibutes: ::prost::alloc::vec::Vec<::prost::alloc::vec::Vec<u8>>,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewSpecsResponse {
    /// 成功反回id，失败返回错误信息
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListSpecsRequest {
    #[prost(string, tag = "1")]
    pub manage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub entity_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListSpecsResponse {
    #[prost(bytes = "vec", repeated, tag = "1")]
    pub specses: ::prost::alloc::vec::Vec<::prost::alloc::vec::Vec<u8>>,
}
/// 列出规格的数据
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListSpecsDataRequest {
    #[prost(string, tag = "1")]
    pub specs_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListSpecsDataResponse {
    /// bson 列表
    #[prost(bytes = "vec", repeated, tag = "1")]
    pub data: ::prost::alloc::vec::Vec<::prost::alloc::vec::Vec<u8>>,
}
/// 列出规格的预制件
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListSpecsPrefabsRequest {
    #[prost(string, tag = "1")]
    pub specs_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListSpecsPrefabsResponse {
    /// bson 列表
    #[prost(bytes = "vec", repeated, tag = "1")]
    pub prefabs: ::prost::alloc::vec::Vec<::prost::alloc::vec::Vec<u8>>,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewSpecsAttributeRequest {
    #[prost(int32, tag = "1")]
    pub manage_id: i32,
    #[prost(message, optional, tag = "2")]
    pub name: ::core::option::Option<::manage_define::cashmere::Name>,
    #[prost(enumeration = "::manage_define::cashmere::FieldDataType", tag = "3")]
    pub data_type: i32,
    #[prost(string, tag = "4")]
    pub description: ::prost::alloc::string::String,
    #[prost(bytes = "vec", tag = "5")]
    pub default_value: ::prost::alloc::vec::Vec<u8>,
    #[prost(int32, tag = "6")]
    pub index: i32,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewSpecsAttributeResponse {
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteSpecsAttributeRequest {
    #[prost(int32, tag = "1")]
    pub manage_id: i32,
    #[prost(uint32, tag = "2")]
    pub index: u32,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteSpecsAttributeResponse {
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSpecsAttributesRequest {
    #[prost(int32, tag = "1")]
    pub manage_id: i32,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSpecsAttributesResponse {
    #[prost(bytes = "vec", repeated, tag = "1")]
    pub attributes: ::prost::alloc::vec::Vec<::prost::alloc::vec::Vec<u8>>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Version {
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    /// protobuf不支持嵌套repeated，所以使用 “,” 分隔的字符串, 形式为\["sub_dir, ...,file_name"\]
    /// 路径不允许使用相对路径符号"."和".."
    /// 文件集为多个文件列表
    /// 文件序列为规则: \["base_name, start, end, padding, extension"\]
    /// 使用bson格式存储
    #[prost(string, repeated, tag = "2")]
    pub files: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// 移除标记，文件不删除
    #[prost(bool, tag = "3")]
    pub removed: bool,
}
/// 添加数据版本到阶段
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddStageVersionRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
    /// 版本一般有具体的含义，不只是一个数字，比如"v001", 数据的名应该与版本一致
    #[prost(string, tag = "3")]
    pub version: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddStageVersionResponse {
    /// 成功返回 "ok"
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 取得数据阶段版本表
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListStageVersionsRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListStageVersionsResponse {
    #[prost(message, repeated, tag = "1")]
    pub versions: ::prost::alloc::vec::Vec<Version>,
}
/// 改变阶段文件连接
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SetStageCurrentVersionRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub target_version: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SetStageCurrentVersionResponse {
    /// 成功返回 当前版本
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 删除数据版本
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RemoveStageVersionRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub version: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RemoveStageVersionResponse {
    /// 成功返回 "ok"
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 添加文件到数据阶段，文件路径以版本路径为根，<version_root>/\["sub_dir", ..., "file_name"\]
/// 路径在使用时再拼接
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddFileToVersionRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub version: ::prost::alloc::string::String,
    #[prost(string, repeated, tag = "3")]
    pub file_path: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddFileToVersionResponse {
    /// 成功返回 "ok"
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 添加文件到数据阶段，文件路径以版本路径为根，<version_root>/\["sub_dir", ..., "file_name"\]
/// 路径在使用时再拼接
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddFileSetToVersionRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub version: ::prost::alloc::string::String,
    /// 因为不支持嵌套repeated，所以使用“,”分隔的字符串, 形式为\["sub_dir, ...,file_name"\]
    #[prost(string, repeated, tag = "3")]
    pub file_pathes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddFileSetToVersionResponse {
    /// 成功返回 "ok"
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 数据类型为文件序列时, 序列文件直接存储在版本目录下
/// 使用规则解析文件路径\[base_name, start, end, padding, extension\]，不记录所有文件的路径
/// 严格使用这个顺序，不使用类似{base_name: name, start: start, end: end, padding: padding, ext: ext, number_pos: \[mid, end\]}的格式
/// 文件、文件集、序列存储形式上一致，易于mongodb文件查询
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddFileSequenceToVersionRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub version: ::prost::alloc::string::String,
    #[prost(string, tag = "7")]
    pub base_name: ::prost::alloc::string::String,
    #[prost(int32, tag = "5")]
    pub start: i32,
    #[prost(int32, tag = "6")]
    pub end: i32,
    #[prost(int32, tag = "2")]
    pub padding: i32,
    #[prost(string, tag = "8")]
    pub extension: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddFileSequenceToVersionResponse {
    /// 成功返回 "ok"
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 从版本中移除多个文件，只支持文件、文件集， 不支持文件序列
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RemoveFilesFromVersionRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub version: ::prost::alloc::string::String,
    #[prost(string, repeated, tag = "3")]
    pub file_pathes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RemoveFilesFromVersionResponse {
    /// 成功返回被删除的文件路径
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 列出版本文件目录下的文件和文件夹
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListVersionFolderRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub version: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListVersionFolderResponse {
    /// 文件夹
    #[prost(string, repeated, tag = "1")]
    pub folders: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// 文件
    #[prost(string, repeated, tag = "2")]
    pub files: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// 删除版本目录下的文件或文件夹，若文件或文件夹在版本文件列表中，否则返回，不做任何操作
/// 注意路径表示规则
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteVersionFolderEntriesRequest {
    #[prost(string, tag = "1")]
    pub stage_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub version: ::prost::alloc::string::String,
    #[prost(string, repeated, tag = "3")]
    pub file_pathes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteVersionFolderEntriesResponse {
    /// 成功返回被删除的文件路径
    #[prost(string, repeated, tag = "1")]
    pub result: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// 数据阶段信息
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct StageInfo {
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    /// stage目录下的文件列表, 文件为文件列表，集合为集合目录列表
    #[prost(bytes = "vec", repeated, tag = "2")]
    pub versions: ::prost::alloc::vec::Vec<::prost::alloc::vec::Vec<u8>>,
    /// 当前连接所指版本
    #[prost(string, tag = "3")]
    pub current_version: ::prost::alloc::string::String,
}
/// 新阶段
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewStageRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
    /// 这里可能因为软件对路径字符集支持的不同只能使用英文作为文件名，比如Maya
    #[prost(message, optional, tag = "2")]
    pub stage_name: ::core::option::Option<::manage_define::cashmere::Name>,
    #[prost(string, tag = "3")]
    pub description: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewStageResponse {
    /// 成功返回 "ok"
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 删除阶段，只删除阶段->数据的文件连接，不删除数据
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RemoveStageRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub stage: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RemoveStageResponse {
    /// 成功返回 "ok"
    #[prost(string, tag = "1")]
    pub result: ::prost::alloc::string::String,
}
/// 取得数据阶段表
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListStagesRequest {
    #[prost(string, tag = "1")]
    pub data_id: ::prost::alloc::string::String,
}
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListStagesResponse {
    #[prost(bytes = "vec", repeated, tag = "1")]
    pub stages: ::prost::alloc::vec::Vec<::prost::alloc::vec::Vec<u8>>,
}
