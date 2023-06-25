///
//  Generated code. Do not modify.
//  source: version.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use versionDescriptor instead')
const Version$json = const {
  '1': 'Version',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'files', '3': 2, '4': 3, '5': 9, '10': 'files'},
    const {'1': 'removed', '3': 3, '4': 1, '5': 8, '10': 'removed'},
  ],
};

/// Descriptor for `Version`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionDescriptor = $convert.base64Decode('CgdWZXJzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFZmlsZXMYAiADKAlSBWZpbGVzEhgKB3JlbW92ZWQYAyABKAhSB3JlbW92ZWQ=');
@$core.Deprecated('Use addStageVersionRequestDescriptor instead')
const AddStageVersionRequest$json = const {
  '1': 'AddStageVersionRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `AddStageVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addStageVersionRequestDescriptor = $convert.base64Decode('ChZBZGRTdGFnZVZlcnNpb25SZXF1ZXN0EhkKCHN0YWdlX2lkGAEgASgJUgdzdGFnZUlkEhgKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24=');
@$core.Deprecated('Use addStageVersionResponseDescriptor instead')
const AddStageVersionResponse$json = const {
  '1': 'AddStageVersionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `AddStageVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addStageVersionResponseDescriptor = $convert.base64Decode('ChdBZGRTdGFnZVZlcnNpb25SZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');
@$core.Deprecated('Use listStageVersionsRequestDescriptor instead')
const ListStageVersionsRequest$json = const {
  '1': 'ListStageVersionsRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
  ],
};

/// Descriptor for `ListStageVersionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStageVersionsRequestDescriptor = $convert.base64Decode('ChhMaXN0U3RhZ2VWZXJzaW9uc1JlcXVlc3QSGQoIc3RhZ2VfaWQYASABKAlSB3N0YWdlSWQ=');
@$core.Deprecated('Use listStageVersionsResponseDescriptor instead')
const ListStageVersionsResponse$json = const {
  '1': 'ListStageVersionsResponse',
  '2': const [
    const {'1': 'versions', '3': 1, '4': 3, '5': 11, '6': '.data.cashmere.Version', '10': 'versions'},
  ],
};

/// Descriptor for `ListStageVersionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStageVersionsResponseDescriptor = $convert.base64Decode('ChlMaXN0U3RhZ2VWZXJzaW9uc1Jlc3BvbnNlEjIKCHZlcnNpb25zGAEgAygLMhYuZGF0YS5jYXNobWVyZS5WZXJzaW9uUgh2ZXJzaW9ucw==');
@$core.Deprecated('Use setStageCurrentVersionRequestDescriptor instead')
const SetStageCurrentVersionRequest$json = const {
  '1': 'SetStageCurrentVersionRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'target_version', '3': 3, '4': 1, '5': 9, '10': 'targetVersion'},
  ],
};

/// Descriptor for `SetStageCurrentVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setStageCurrentVersionRequestDescriptor = $convert.base64Decode('Ch1TZXRTdGFnZUN1cnJlbnRWZXJzaW9uUmVxdWVzdBIZCghzdGFnZV9pZBgBIAEoCVIHc3RhZ2VJZBIlCg50YXJnZXRfdmVyc2lvbhgDIAEoCVINdGFyZ2V0VmVyc2lvbg==');
@$core.Deprecated('Use setStageCurrentVersionResponseDescriptor instead')
const SetStageCurrentVersionResponse$json = const {
  '1': 'SetStageCurrentVersionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `SetStageCurrentVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setStageCurrentVersionResponseDescriptor = $convert.base64Decode('Ch5TZXRTdGFnZUN1cnJlbnRWZXJzaW9uUmVzcG9uc2USFgoGcmVzdWx0GAEgASgJUgZyZXN1bHQ=');
@$core.Deprecated('Use removeStageVersionRequestDescriptor instead')
const RemoveStageVersionRequest$json = const {
  '1': 'RemoveStageVersionRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `RemoveStageVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeStageVersionRequestDescriptor = $convert.base64Decode('ChlSZW1vdmVTdGFnZVZlcnNpb25SZXF1ZXN0EhkKCHN0YWdlX2lkGAEgASgJUgdzdGFnZUlkEhgKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24=');
@$core.Deprecated('Use removeStageVersionResponseDescriptor instead')
const RemoveStageVersionResponse$json = const {
  '1': 'RemoveStageVersionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `RemoveStageVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeStageVersionResponseDescriptor = $convert.base64Decode('ChpSZW1vdmVTdGFnZVZlcnNpb25SZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');
@$core.Deprecated('Use addFileToVersionRequestDescriptor instead')
const AddFileToVersionRequest$json = const {
  '1': 'AddFileToVersionRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'file_path', '3': 3, '4': 3, '5': 9, '10': 'filePath'},
  ],
};

/// Descriptor for `AddFileToVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileToVersionRequestDescriptor = $convert.base64Decode('ChdBZGRGaWxlVG9WZXJzaW9uUmVxdWVzdBIZCghzdGFnZV9pZBgBIAEoCVIHc3RhZ2VJZBIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uEhsKCWZpbGVfcGF0aBgDIAMoCVIIZmlsZVBhdGg=');
@$core.Deprecated('Use addFileToVersionResponseDescriptor instead')
const AddFileToVersionResponse$json = const {
  '1': 'AddFileToVersionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `AddFileToVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileToVersionResponseDescriptor = $convert.base64Decode('ChhBZGRGaWxlVG9WZXJzaW9uUmVzcG9uc2USFgoGcmVzdWx0GAEgASgJUgZyZXN1bHQ=');
@$core.Deprecated('Use addFileSetToVersionRequestDescriptor instead')
const AddFileSetToVersionRequest$json = const {
  '1': 'AddFileSetToVersionRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'file_pathes', '3': 3, '4': 3, '5': 9, '10': 'filePathes'},
  ],
};

/// Descriptor for `AddFileSetToVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileSetToVersionRequestDescriptor = $convert.base64Decode('ChpBZGRGaWxlU2V0VG9WZXJzaW9uUmVxdWVzdBIZCghzdGFnZV9pZBgBIAEoCVIHc3RhZ2VJZBIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uEh8KC2ZpbGVfcGF0aGVzGAMgAygJUgpmaWxlUGF0aGVz');
@$core.Deprecated('Use addFileSetToVersionResponseDescriptor instead')
const AddFileSetToVersionResponse$json = const {
  '1': 'AddFileSetToVersionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `AddFileSetToVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileSetToVersionResponseDescriptor = $convert.base64Decode('ChtBZGRGaWxlU2V0VG9WZXJzaW9uUmVzcG9uc2USFgoGcmVzdWx0GAEgASgJUgZyZXN1bHQ=');
@$core.Deprecated('Use addFileSequenceToVersionRequestDescriptor instead')
const AddFileSequenceToVersionRequest$json = const {
  '1': 'AddFileSequenceToVersionRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'base_name', '3': 7, '4': 1, '5': 9, '10': 'baseName'},
    const {'1': 'start', '3': 5, '4': 1, '5': 5, '10': 'start'},
    const {'1': 'end', '3': 6, '4': 1, '5': 5, '10': 'end'},
    const {'1': 'padding', '3': 2, '4': 1, '5': 5, '10': 'padding'},
    const {'1': 'extension', '3': 8, '4': 1, '5': 9, '10': 'extension'},
  ],
};

/// Descriptor for `AddFileSequenceToVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileSequenceToVersionRequestDescriptor = $convert.base64Decode('Ch9BZGRGaWxlU2VxdWVuY2VUb1ZlcnNpb25SZXF1ZXN0EhkKCHN0YWdlX2lkGAEgASgJUgdzdGFnZUlkEhgKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24SGwoJYmFzZV9uYW1lGAcgASgJUghiYXNlTmFtZRIUCgVzdGFydBgFIAEoBVIFc3RhcnQSEAoDZW5kGAYgASgFUgNlbmQSGAoHcGFkZGluZxgCIAEoBVIHcGFkZGluZxIcCglleHRlbnNpb24YCCABKAlSCWV4dGVuc2lvbg==');
@$core.Deprecated('Use addFileSequenceToVersionResponseDescriptor instead')
const AddFileSequenceToVersionResponse$json = const {
  '1': 'AddFileSequenceToVersionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `AddFileSequenceToVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileSequenceToVersionResponseDescriptor = $convert.base64Decode('CiBBZGRGaWxlU2VxdWVuY2VUb1ZlcnNpb25SZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');
@$core.Deprecated('Use removeFilesFromVersionRequestDescriptor instead')
const RemoveFilesFromVersionRequest$json = const {
  '1': 'RemoveFilesFromVersionRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'file_pathes', '3': 3, '4': 3, '5': 9, '10': 'filePathes'},
  ],
};

/// Descriptor for `RemoveFilesFromVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeFilesFromVersionRequestDescriptor = $convert.base64Decode('Ch1SZW1vdmVGaWxlc0Zyb21WZXJzaW9uUmVxdWVzdBIZCghzdGFnZV9pZBgBIAEoCVIHc3RhZ2VJZBIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uEh8KC2ZpbGVfcGF0aGVzGAMgAygJUgpmaWxlUGF0aGVz');
@$core.Deprecated('Use removeFilesFromVersionResponseDescriptor instead')
const RemoveFilesFromVersionResponse$json = const {
  '1': 'RemoveFilesFromVersionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `RemoveFilesFromVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeFilesFromVersionResponseDescriptor = $convert.base64Decode('Ch5SZW1vdmVGaWxlc0Zyb21WZXJzaW9uUmVzcG9uc2USFgoGcmVzdWx0GAEgASgJUgZyZXN1bHQ=');
@$core.Deprecated('Use listVersionFolderRequestDescriptor instead')
const ListVersionFolderRequest$json = const {
  '1': 'ListVersionFolderRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `ListVersionFolderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listVersionFolderRequestDescriptor = $convert.base64Decode('ChhMaXN0VmVyc2lvbkZvbGRlclJlcXVlc3QSGQoIc3RhZ2VfaWQYASABKAlSB3N0YWdlSWQSGAoHdmVyc2lvbhgCIAEoCVIHdmVyc2lvbg==');
@$core.Deprecated('Use listVersionFolderResponseDescriptor instead')
const ListVersionFolderResponse$json = const {
  '1': 'ListVersionFolderResponse',
  '2': const [
    const {'1': 'folders', '3': 1, '4': 3, '5': 9, '10': 'folders'},
    const {'1': 'files', '3': 2, '4': 3, '5': 9, '10': 'files'},
  ],
};

/// Descriptor for `ListVersionFolderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listVersionFolderResponseDescriptor = $convert.base64Decode('ChlMaXN0VmVyc2lvbkZvbGRlclJlc3BvbnNlEhgKB2ZvbGRlcnMYASADKAlSB2ZvbGRlcnMSFAoFZmlsZXMYAiADKAlSBWZpbGVz');
@$core.Deprecated('Use deleteVersionFolderEntriesRequestDescriptor instead')
const DeleteVersionFolderEntriesRequest$json = const {
  '1': 'DeleteVersionFolderEntriesRequest',
  '2': const [
    const {'1': 'stage_id', '3': 1, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'file_pathes', '3': 3, '4': 3, '5': 9, '10': 'filePathes'},
  ],
};

/// Descriptor for `DeleteVersionFolderEntriesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVersionFolderEntriesRequestDescriptor = $convert.base64Decode('CiFEZWxldGVWZXJzaW9uRm9sZGVyRW50cmllc1JlcXVlc3QSGQoIc3RhZ2VfaWQYASABKAlSB3N0YWdlSWQSGAoHdmVyc2lvbhgCIAEoCVIHdmVyc2lvbhIfCgtmaWxlX3BhdGhlcxgDIAMoCVIKZmlsZVBhdGhlcw==');
@$core.Deprecated('Use deleteVersionFolderEntriesResponseDescriptor instead')
const DeleteVersionFolderEntriesResponse$json = const {
  '1': 'DeleteVersionFolderEntriesResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 3, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `DeleteVersionFolderEntriesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVersionFolderEntriesResponseDescriptor = $convert.base64Decode('CiJEZWxldGVWZXJzaW9uRm9sZGVyRW50cmllc1Jlc3BvbnNlEhYKBnJlc3VsdBgBIAMoCVIGcmVzdWx0');
