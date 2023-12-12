//
//  Generated code. Do not modify.
//  source: set_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getSetDataInfoRequestDescriptor instead')
const GetSetDataInfoRequest$json = {
  '1': 'GetSetDataInfoRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `GetSetDataInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSetDataInfoRequestDescriptor = $convert.base64Decode(
    'ChVHZXRTZXREYXRhSW5mb1JlcXVlc3QSFwoHZGF0YV9pZBgBIAEoCVIGZGF0YUlk');

@$core.Deprecated('Use getSetDataInfoResponseDescriptor instead')
const GetSetDataInfoResponse$json = {
  '1': 'GetSetDataInfoResponse',
  '2': [
    {'1': 'data_info', '3': 1, '4': 1, '5': 11, '6': '.data.cashmere.SetDataInfo', '10': 'dataInfo'},
  ],
};

/// Descriptor for `GetSetDataInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSetDataInfoResponseDescriptor = $convert.base64Decode(
    'ChZHZXRTZXREYXRhSW5mb1Jlc3BvbnNlEjcKCWRhdGFfaW5mbxgBIAEoCzIaLmRhdGEuY2FzaG'
    '1lcmUuU2V0RGF0YUluZm9SCGRhdGFJbmZv');

@$core.Deprecated('Use setDataUploadFileRequestDescriptor instead')
const SetDataUploadFileRequest$json = {
  '1': 'SetDataUploadFileRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'total_chunks', '3': 2, '4': 1, '5': 4, '10': 'totalChunks'},
    {'1': 'current_chunk_index', '3': 3, '4': 1, '5': 4, '10': 'currentChunkIndex'},
    {'1': 'chunk', '3': 4, '4': 1, '5': 12, '10': 'chunk'},
    {'1': 'file_info', '3': 5, '4': 1, '5': 11, '6': '.data.cashmere.FileInfo', '10': 'fileInfo'},
  ],
};

/// Descriptor for `SetDataUploadFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDataUploadFileRequestDescriptor = $convert.base64Decode(
    'ChhTZXREYXRhVXBsb2FkRmlsZVJlcXVlc3QSFwoHZGF0YV9pZBgBIAEoCVIGZGF0YUlkEiEKDH'
    'RvdGFsX2NodW5rcxgCIAEoBFILdG90YWxDaHVua3MSLgoTY3VycmVudF9jaHVua19pbmRleBgD'
    'IAEoBFIRY3VycmVudENodW5rSW5kZXgSFAoFY2h1bmsYBCABKAxSBWNodW5rEjQKCWZpbGVfaW'
    '5mbxgFIAEoCzIXLmRhdGEuY2FzaG1lcmUuRmlsZUluZm9SCGZpbGVJbmZv');

@$core.Deprecated('Use setDataUploadFileResponseDescriptor instead')
const SetDataUploadFileResponse$json = {
  '1': 'SetDataUploadFileResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `SetDataUploadFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDataUploadFileResponseDescriptor = $convert.base64Decode(
    'ChlTZXREYXRhVXBsb2FkRmlsZVJlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');

@$core.Deprecated('Use setDataUploadFilesRequestDescriptor instead')
const SetDataUploadFilesRequest$json = {
  '1': 'SetDataUploadFilesRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'current_total_chunks', '3': 2, '4': 1, '5': 4, '10': 'currentTotalChunks'},
    {'1': 'current_chunk_index', '3': 3, '4': 1, '5': 4, '10': 'currentChunkIndex'},
    {'1': 'chunk', '3': 4, '4': 1, '5': 12, '10': 'chunk'},
    {'1': 'file_info', '3': 5, '4': 3, '5': 11, '6': '.data.cashmere.FileInfo', '10': 'fileInfo'},
    {'1': 'current_md5', '3': 6, '4': 1, '5': 9, '10': 'currentMd5'},
  ],
};

/// Descriptor for `SetDataUploadFilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDataUploadFilesRequestDescriptor = $convert.base64Decode(
    'ChlTZXREYXRhVXBsb2FkRmlsZXNSZXF1ZXN0EhcKB2RhdGFfaWQYASABKAlSBmRhdGFJZBIwCh'
    'RjdXJyZW50X3RvdGFsX2NodW5rcxgCIAEoBFISY3VycmVudFRvdGFsQ2h1bmtzEi4KE2N1cnJl'
    'bnRfY2h1bmtfaW5kZXgYAyABKARSEWN1cnJlbnRDaHVua0luZGV4EhQKBWNodW5rGAQgASgMUg'
    'VjaHVuaxI0CglmaWxlX2luZm8YBSADKAsyFy5kYXRhLmNhc2htZXJlLkZpbGVJbmZvUghmaWxl'
    'SW5mbxIfCgtjdXJyZW50X21kNRgGIAEoCVIKY3VycmVudE1kNQ==');

@$core.Deprecated('Use setDataUploadFilesResponseDescriptor instead')
const SetDataUploadFilesResponse$json = {
  '1': 'SetDataUploadFilesResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `SetDataUploadFilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDataUploadFilesResponseDescriptor = $convert.base64Decode(
    'ChpTZXREYXRhVXBsb2FkRmlsZXNSZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');

@$core.Deprecated('Use setDataDownloadSetRequestDescriptor instead')
const SetDataDownloadSetRequest$json = {
  '1': 'SetDataDownloadSetRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `SetDataDownloadSetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDataDownloadSetRequestDescriptor = $convert.base64Decode(
    'ChlTZXREYXRhRG93bmxvYWRTZXRSZXF1ZXN0EhcKB2RhdGFfaWQYASABKAlSBmRhdGFJZA==');

@$core.Deprecated('Use setDataDownloadSetResponseDescriptor instead')
const SetDataDownloadSetResponse$json = {
  '1': 'SetDataDownloadSetResponse',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'set_name', '3': 2, '4': 1, '5': 9, '10': 'setName'},
    {'1': 'file_counts', '3': 3, '4': 1, '5': 13, '10': 'fileCounts'},
    {'1': 'current_file', '3': 4, '4': 1, '5': 9, '10': 'currentFile'},
    {'1': 'total_chancks', '3': 5, '4': 1, '5': 4, '10': 'totalChancks'},
    {'1': 'current_chunck', '3': 6, '4': 1, '5': 13, '10': 'currentChunck'},
    {'1': 'chunck', '3': 7, '4': 1, '5': 12, '10': 'chunck'},
  ],
};

/// Descriptor for `SetDataDownloadSetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDataDownloadSetResponseDescriptor = $convert.base64Decode(
    'ChpTZXREYXRhRG93bmxvYWRTZXRSZXNwb25zZRIXCgdkYXRhX2lkGAEgASgJUgZkYXRhSWQSGQ'
    'oIc2V0X25hbWUYAiABKAlSB3NldE5hbWUSHwoLZmlsZV9jb3VudHMYAyABKA1SCmZpbGVDb3Vu'
    'dHMSIQoMY3VycmVudF9maWxlGAQgASgJUgtjdXJyZW50RmlsZRIjCg10b3RhbF9jaGFuY2tzGA'
    'UgASgEUgx0b3RhbENoYW5ja3MSJQoOY3VycmVudF9jaHVuY2sYBiABKA1SDWN1cnJlbnRDaHVu'
    'Y2sSFgoGY2h1bmNrGAcgASgMUgZjaHVuY2s=');

