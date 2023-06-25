///
//  Generated code. Do not modify.
//  source: file_transfer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use uploadFileRequestDescriptor instead')
const UploadFileRequest$json = const {
  '1': 'UploadFileRequest',
  '2': const [
    const {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    const {'1': 'total_chunks', '3': 2, '4': 1, '5': 4, '10': 'totalChunks'},
    const {'1': 'current_chunk_index', '3': 3, '4': 1, '5': 4, '10': 'currentChunkIndex'},
    const {'1': 'chunk', '3': 4, '4': 1, '5': 12, '10': 'chunk'},
    const {'1': 'chunk_md5', '3': 6, '4': 1, '5': 9, '10': 'chunkMd5'},
    const {'1': 'file_info', '3': 5, '4': 1, '5': 11, '6': '.data.cashmere.FileInfo', '10': 'fileInfo'},
    const {'1': 'specs', '3': 10, '4': 1, '5': 9, '10': 'specs'},
    const {'1': 'stage', '3': 8, '4': 1, '5': 9, '10': 'stage'},
    const {'1': 'version', '3': 9, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'sub_path', '3': 11, '4': 1, '5': 9, '10': 'subPath'},
  ],
};

/// Descriptor for `UploadFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileRequestDescriptor = $convert.base64Decode('ChFVcGxvYWRGaWxlUmVxdWVzdBIXCgdkYXRhX2lkGAEgASgJUgZkYXRhSWQSIQoMdG90YWxfY2h1bmtzGAIgASgEUgt0b3RhbENodW5rcxIuChNjdXJyZW50X2NodW5rX2luZGV4GAMgASgEUhFjdXJyZW50Q2h1bmtJbmRleBIUCgVjaHVuaxgEIAEoDFIFY2h1bmsSGwoJY2h1bmtfbWQ1GAYgASgJUghjaHVua01kNRI0CglmaWxlX2luZm8YBSABKAsyFy5kYXRhLmNhc2htZXJlLkZpbGVJbmZvUghmaWxlSW5mbxIUCgVzcGVjcxgKIAEoCVIFc3BlY3MSFAoFc3RhZ2UYCCABKAlSBXN0YWdlEhgKB3ZlcnNpb24YCSABKAlSB3ZlcnNpb24SGQoIc3ViX3BhdGgYCyABKAlSB3N1YlBhdGg=');
@$core.Deprecated('Use uploadFileResponseDescriptor instead')
const UploadFileResponse$json = const {
  '1': 'UploadFileResponse',
  '2': const [
    const {'1': 'next_chunk_index', '3': 1, '4': 1, '5': 4, '10': 'nextChunkIndex'},
  ],
};

/// Descriptor for `UploadFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileResponseDescriptor = $convert.base64Decode('ChJVcGxvYWRGaWxlUmVzcG9uc2USKAoQbmV4dF9jaHVua19pbmRleBgBIAEoBFIObmV4dENodW5rSW5kZXg=');
@$core.Deprecated('Use downloadFileRequestDescriptor instead')
const DownloadFileRequest$json = const {
  '1': 'DownloadFileRequest',
  '2': const [
    const {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    const {'1': 'specs', '3': 6, '4': 1, '5': 9, '10': 'specs'},
    const {'1': 'stage', '3': 2, '4': 1, '5': 9, '10': 'stage'},
    const {'1': 'chunk_index', '3': 3, '4': 1, '5': 4, '10': 'chunkIndex'},
    const {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'sub_path', '3': 7, '4': 1, '5': 9, '10': 'subPath'},
    const {'1': 'file_name', '3': 5, '4': 1, '5': 9, '10': 'fileName'},
  ],
};

/// Descriptor for `DownloadFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadFileRequestDescriptor = $convert.base64Decode('ChNEb3dubG9hZEZpbGVSZXF1ZXN0EhcKB2RhdGFfaWQYASABKAlSBmRhdGFJZBIUCgVzcGVjcxgGIAEoCVIFc3BlY3MSFAoFc3RhZ2UYAiABKAlSBXN0YWdlEh8KC2NodW5rX2luZGV4GAMgASgEUgpjaHVua0luZGV4EhgKB3ZlcnNpb24YBCABKAlSB3ZlcnNpb24SGQoIc3ViX3BhdGgYByABKAlSB3N1YlBhdGgSGwoJZmlsZV9uYW1lGAUgASgJUghmaWxlTmFtZQ==');
@$core.Deprecated('Use downloadFileResponseDescriptor instead')
const DownloadFileResponse$json = const {
  '1': 'DownloadFileResponse',
  '2': const [
    const {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    const {'1': 'chunk_index', '3': 3, '4': 1, '5': 4, '10': 'chunkIndex'},
    const {'1': 'chunk', '3': 4, '4': 1, '5': 12, '10': 'chunk'},
    const {'1': 'chunk_md5', '3': 5, '4': 1, '5': 9, '10': 'chunkMd5'},
  ],
};

/// Descriptor for `DownloadFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadFileResponseDescriptor = $convert.base64Decode('ChREb3dubG9hZEZpbGVSZXNwb25zZRIXCgdkYXRhX2lkGAEgASgJUgZkYXRhSWQSHwoLY2h1bmtfaW5kZXgYAyABKARSCmNodW5rSW5kZXgSFAoFY2h1bmsYBCABKAxSBWNodW5rEhsKCWNodW5rX21kNRgFIAEoCVIIY2h1bmtNZDU=');
