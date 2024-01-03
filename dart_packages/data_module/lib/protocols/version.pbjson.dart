//
//  Generated code. Do not modify.
//  source: version.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use versionDescriptor instead')
const Version$json = {
  '1': 'Version',
  '2': [
    {'1': 'manage_id', '3': 1, '4': 1, '5': 9, '10': 'manageId'},
    {'1': 'specs_id', '3': 2, '4': 1, '5': 9, '10': 'specsId'},
    {'1': 'data_id', '3': 3, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'stage', '3': 4, '4': 1, '5': 9, '10': 'stage'},
    {'1': 'version', '3': 5, '4': 1, '5': 9, '10': 'version'},
    {'1': 'files', '3': 6, '4': 3, '5': 11, '6': '.data.cashmere.Version.FilesEntry', '10': 'files'},
  ],
  '3': [Version_FilesEntry$json],
};

@$core.Deprecated('Use versionDescriptor instead')
const Version_FilesEntry$json = {
  '1': 'FilesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.data.cashmere.FileInfo', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Version`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionDescriptor = $convert.base64Decode(
    'CgdWZXJzaW9uEhsKCW1hbmFnZV9pZBgBIAEoCVIIbWFuYWdlSWQSGQoIc3BlY3NfaWQYAiABKA'
    'lSB3NwZWNzSWQSFwoHZGF0YV9pZBgDIAEoCVIGZGF0YUlkEhQKBXN0YWdlGAQgASgJUgVzdGFn'
    'ZRIYCgd2ZXJzaW9uGAUgASgJUgd2ZXJzaW9uEjcKBWZpbGVzGAYgAygLMiEuZGF0YS5jYXNobW'
    'VyZS5WZXJzaW9uLkZpbGVzRW50cnlSBWZpbGVzGlEKCkZpbGVzRW50cnkSEAoDa2V5GAEgASgJ'
    'UgNrZXkSLQoFdmFsdWUYAiABKAsyFy5kYXRhLmNhc2htZXJlLkZpbGVJbmZvUgV2YWx1ZToCOA'
    'E=');

@$core.Deprecated('Use listSpecsVersionsRequestDescriptor instead')
const ListSpecsVersionsRequest$json = {
  '1': 'ListSpecsVersionsRequest',
  '2': [
    {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
  ],
};

/// Descriptor for `ListSpecsVersionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsVersionsRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0U3BlY3NWZXJzaW9uc1JlcXVlc3QSGQoIc3BlY3NfaWQYASABKAlSB3NwZWNzSWQ=');

@$core.Deprecated('Use listSpecsVersionsResponseDescriptor instead')
const ListSpecsVersionsResponse$json = {
  '1': 'ListSpecsVersionsResponse',
  '2': [
    {'1': 'versions', '3': 1, '4': 3, '5': 11, '6': '.data.cashmere.Version', '10': 'versions'},
  ],
};

/// Descriptor for `ListSpecsVersionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsVersionsResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0U3BlY3NWZXJzaW9uc1Jlc3BvbnNlEjIKCHZlcnNpb25zGAEgAygLMhYuZGF0YS5jYX'
    'NobWVyZS5WZXJzaW9uUgh2ZXJzaW9ucw==');

@$core.Deprecated('Use listDataVersionsRequestDescriptor instead')
const ListDataVersionsRequest$json = {
  '1': 'ListDataVersionsRequest',
  '2': [
    {'1': 'specs_id', '3': 2, '4': 1, '5': 9, '10': 'specsId'},
    {'1': 'data_id', '3': 3, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `ListDataVersionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDataVersionsRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0RGF0YVZlcnNpb25zUmVxdWVzdBIZCghzcGVjc19pZBgCIAEoCVIHc3BlY3NJZBIXCg'
    'dkYXRhX2lkGAMgASgJUgZkYXRhSWQ=');

@$core.Deprecated('Use listDataVersionsResponseDescriptor instead')
const ListDataVersionsResponse$json = {
  '1': 'ListDataVersionsResponse',
  '2': [
    {'1': 'versions', '3': 1, '4': 3, '5': 11, '6': '.data.cashmere.Version', '10': 'versions'},
  ],
};

/// Descriptor for `ListDataVersionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDataVersionsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0RGF0YVZlcnNpb25zUmVzcG9uc2USMgoIdmVyc2lvbnMYASADKAsyFi5kYXRhLmNhc2'
    'htZXJlLlZlcnNpb25SCHZlcnNpb25z');

@$core.Deprecated('Use addStageVersionRequestDescriptor instead')
const AddStageVersionRequest$json = {
  '1': 'AddStageVersionRequest',
  '2': [
    {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `AddStageVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addStageVersionRequestDescriptor = $convert.base64Decode(
    'ChZBZGRTdGFnZVZlcnNpb25SZXF1ZXN0EhkKCHN0YWdlX2lkGAEgASgJUgdzdGFnZUlkEhgKB3'
    'ZlcnNpb24YAyABKAlSB3ZlcnNpb24=');

@$core.Deprecated('Use addStageVersionResponseDescriptor instead')
const AddStageVersionResponse$json = {
  '1': 'AddStageVersionResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `AddStageVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addStageVersionResponseDescriptor = $convert.base64Decode(
    'ChdBZGRTdGFnZVZlcnNpb25SZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');

@$core.Deprecated('Use listStageVersionsRequestDescriptor instead')
const ListStageVersionsRequest$json = {
  '1': 'ListStageVersionsRequest',
  '2': [
    {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
  ],
};

/// Descriptor for `ListStageVersionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStageVersionsRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0U3RhZ2VWZXJzaW9uc1JlcXVlc3QSGQoIc3RhZ2VfaWQYASABKAlSB3N0YWdlSWQ=');

@$core.Deprecated('Use listStageVersionsResponseDescriptor instead')
const ListStageVersionsResponse$json = {
  '1': 'ListStageVersionsResponse',
  '2': [
    {'1': 'versions', '3': 1, '4': 3, '5': 12, '10': 'versions'},
  ],
};

/// Descriptor for `ListStageVersionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStageVersionsResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0U3RhZ2VWZXJzaW9uc1Jlc3BvbnNlEhoKCHZlcnNpb25zGAEgAygMUgh2ZXJzaW9ucw'
    '==');

@$core.Deprecated('Use setStageCurrentVersionRequestDescriptor instead')
const SetStageCurrentVersionRequest$json = {
  '1': 'SetStageCurrentVersionRequest',
  '2': [
    {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    {'1': 'target_version', '3': 3, '4': 1, '5': 9, '10': 'targetVersion'},
  ],
};

/// Descriptor for `SetStageCurrentVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setStageCurrentVersionRequestDescriptor = $convert.base64Decode(
    'Ch1TZXRTdGFnZUN1cnJlbnRWZXJzaW9uUmVxdWVzdBIZCghzdGFnZV9pZBgBIAEoCVIHc3RhZ2'
    'VJZBIlCg50YXJnZXRfdmVyc2lvbhgDIAEoCVINdGFyZ2V0VmVyc2lvbg==');

@$core.Deprecated('Use setStageCurrentVersionResponseDescriptor instead')
const SetStageCurrentVersionResponse$json = {
  '1': 'SetStageCurrentVersionResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `SetStageCurrentVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setStageCurrentVersionResponseDescriptor = $convert.base64Decode(
    'Ch5TZXRTdGFnZUN1cnJlbnRWZXJzaW9uUmVzcG9uc2USFgoGcmVzdWx0GAEgASgJUgZyZXN1bH'
    'Q=');

@$core.Deprecated('Use removeStageVersionRequestDescriptor instead')
const RemoveStageVersionRequest$json = {
  '1': 'RemoveStageVersionRequest',
  '2': [
    {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `RemoveStageVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeStageVersionRequestDescriptor = $convert.base64Decode(
    'ChlSZW1vdmVTdGFnZVZlcnNpb25SZXF1ZXN0EhkKCHN0YWdlX2lkGAEgASgJUgdzdGFnZUlkEh'
    'gKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24=');

@$core.Deprecated('Use removeStageVersionResponseDescriptor instead')
const RemoveStageVersionResponse$json = {
  '1': 'RemoveStageVersionResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `RemoveStageVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeStageVersionResponseDescriptor = $convert.base64Decode(
    'ChpSZW1vdmVTdGFnZVZlcnNpb25SZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');

@$core.Deprecated('Use addFileSetToVersionRequestDescriptor instead')
const AddFileSetToVersionRequest$json = {
  '1': 'AddFileSetToVersionRequest',
  '2': [
    {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'data_path', '3': 3, '4': 1, '5': 9, '10': 'dataPath'},
  ],
};

/// Descriptor for `AddFileSetToVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileSetToVersionRequestDescriptor = $convert.base64Decode(
    'ChpBZGRGaWxlU2V0VG9WZXJzaW9uUmVxdWVzdBIZCghzdGFnZV9pZBgBIAEoCVIHc3RhZ2VJZB'
    'IYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uEhsKCWRhdGFfcGF0aBgDIAEoCVIIZGF0YVBhdGg=');

@$core.Deprecated('Use addFileSetToVersionResponseDescriptor instead')
const AddFileSetToVersionResponse$json = {
  '1': 'AddFileSetToVersionResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `AddFileSetToVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileSetToVersionResponseDescriptor = $convert.base64Decode(
    'ChtBZGRGaWxlU2V0VG9WZXJzaW9uUmVzcG9uc2USFgoGcmVzdWx0GAEgASgJUgZyZXN1bHQ=');

@$core.Deprecated('Use addFileSequenceToVersionRequestDescriptor instead')
const AddFileSequenceToVersionRequest$json = {
  '1': 'AddFileSequenceToVersionRequest',
  '2': [
    {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'data_path', '3': 3, '4': 1, '5': 9, '10': 'dataPath'},
  ],
};

/// Descriptor for `AddFileSequenceToVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileSequenceToVersionRequestDescriptor = $convert.base64Decode(
    'Ch9BZGRGaWxlU2VxdWVuY2VUb1ZlcnNpb25SZXF1ZXN0EhkKCHN0YWdlX2lkGAEgASgJUgdzdG'
    'FnZUlkEhgKB3ZlcnNpb24YAiABKAlSB3ZlcnNpb24SGwoJZGF0YV9wYXRoGAMgASgJUghkYXRh'
    'UGF0aA==');

@$core.Deprecated('Use addFileSequenceToVersionResponseDescriptor instead')
const AddFileSequenceToVersionResponse$json = {
  '1': 'AddFileSequenceToVersionResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `AddFileSequenceToVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileSequenceToVersionResponseDescriptor = $convert.base64Decode(
    'CiBBZGRGaWxlU2VxdWVuY2VUb1ZlcnNpb25SZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3'
    'VsdA==');

@$core.Deprecated('Use removeFilesFromVersionRequestDescriptor instead')
const RemoveFilesFromVersionRequest$json = {
  '1': 'RemoveFilesFromVersionRequest',
  '2': [
    {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'file_pathes', '3': 3, '4': 3, '5': 9, '10': 'filePathes'},
  ],
};

/// Descriptor for `RemoveFilesFromVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeFilesFromVersionRequestDescriptor = $convert.base64Decode(
    'Ch1SZW1vdmVGaWxlc0Zyb21WZXJzaW9uUmVxdWVzdBIZCghzdGFnZV9pZBgBIAEoCVIHc3RhZ2'
    'VJZBIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uEh8KC2ZpbGVfcGF0aGVzGAMgAygJUgpmaWxl'
    'UGF0aGVz');

@$core.Deprecated('Use removeFilesFromVersionResponseDescriptor instead')
const RemoveFilesFromVersionResponse$json = {
  '1': 'RemoveFilesFromVersionResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `RemoveFilesFromVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeFilesFromVersionResponseDescriptor = $convert.base64Decode(
    'Ch5SZW1vdmVGaWxlc0Zyb21WZXJzaW9uUmVzcG9uc2USFgoGcmVzdWx0GAEgASgJUgZyZXN1bH'
    'Q=');

@$core.Deprecated('Use listVersionFolderRequestDescriptor instead')
const ListVersionFolderRequest$json = {
  '1': 'ListVersionFolderRequest',
  '2': [
    {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `ListVersionFolderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listVersionFolderRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0VmVyc2lvbkZvbGRlclJlcXVlc3QSGQoIc3RhZ2VfaWQYASABKAlSB3N0YWdlSWQSGA'
    'oHdmVyc2lvbhgCIAEoCVIHdmVyc2lvbg==');

@$core.Deprecated('Use listVersionFolderResponseDescriptor instead')
const ListVersionFolderResponse$json = {
  '1': 'ListVersionFolderResponse',
  '2': [
    {'1': 'folders', '3': 1, '4': 3, '5': 9, '10': 'folders'},
    {'1': 'files', '3': 2, '4': 3, '5': 9, '10': 'files'},
  ],
};

/// Descriptor for `ListVersionFolderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listVersionFolderResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0VmVyc2lvbkZvbGRlclJlc3BvbnNlEhgKB2ZvbGRlcnMYASADKAlSB2ZvbGRlcnMSFA'
    'oFZmlsZXMYAiADKAlSBWZpbGVz');

@$core.Deprecated('Use deleteVersionFolderEntriesRequestDescriptor instead')
const DeleteVersionFolderEntriesRequest$json = {
  '1': 'DeleteVersionFolderEntriesRequest',
  '2': [
    {'1': 'version_id', '3': 1, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'file_pathes', '3': 2, '4': 3, '5': 9, '10': 'filePathes'},
  ],
};

/// Descriptor for `DeleteVersionFolderEntriesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVersionFolderEntriesRequestDescriptor = $convert.base64Decode(
    'CiFEZWxldGVWZXJzaW9uRm9sZGVyRW50cmllc1JlcXVlc3QSHQoKdmVyc2lvbl9pZBgBIAEoCV'
    'IJdmVyc2lvbklkEh8KC2ZpbGVfcGF0aGVzGAIgAygJUgpmaWxlUGF0aGVz');

@$core.Deprecated('Use deleteVersionFolderEntriesResponseDescriptor instead')
const DeleteVersionFolderEntriesResponse$json = {
  '1': 'DeleteVersionFolderEntriesResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 3, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `DeleteVersionFolderEntriesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVersionFolderEntriesResponseDescriptor = $convert.base64Decode(
    'CiJEZWxldGVWZXJzaW9uRm9sZGVyRW50cmllc1Jlc3BvbnNlEhYKBnJlc3VsdBgBIAMoCVIGcm'
    'VzdWx0');

