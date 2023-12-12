//
//  Generated code. Do not modify.
//  source: stage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use stageInfoDescriptor instead')
const StageInfo$json = {
  '1': 'StageInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'versions', '3': 2, '4': 3, '5': 12, '10': 'versions'},
    {'1': 'current_version', '3': 3, '4': 1, '5': 9, '10': 'currentVersion'},
  ],
};

/// Descriptor for `StageInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stageInfoDescriptor = $convert.base64Decode(
    'CglTdGFnZUluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRIaCgh2ZXJzaW9ucxgCIAMoDFIIdmVyc2'
    'lvbnMSJwoPY3VycmVudF92ZXJzaW9uGAMgASgJUg5jdXJyZW50VmVyc2lvbg==');

@$core.Deprecated('Use addDataStageRequestDescriptor instead')
const AddDataStageRequest$json = {
  '1': 'AddDataStageRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'stage', '3': 2, '4': 1, '5': 9, '10': 'stage'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `AddDataStageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDataStageRequestDescriptor = $convert.base64Decode(
    'ChNBZGREYXRhU3RhZ2VSZXF1ZXN0EhcKB2RhdGFfaWQYASABKAlSBmRhdGFJZBIUCgVzdGFnZR'
    'gCIAEoCVIFc3RhZ2USIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use addDataStageResponseDescriptor instead')
const AddDataStageResponse$json = {
  '1': 'AddDataStageResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `AddDataStageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDataStageResponseDescriptor = $convert.base64Decode(
    'ChRBZGREYXRhU3RhZ2VSZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');

@$core.Deprecated('Use removeStageRequestDescriptor instead')
const RemoveStageRequest$json = {
  '1': 'RemoveStageRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'stage', '3': 2, '4': 1, '5': 9, '10': 'stage'},
  ],
};

/// Descriptor for `RemoveStageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeStageRequestDescriptor = $convert.base64Decode(
    'ChJSZW1vdmVTdGFnZVJlcXVlc3QSFwoHZGF0YV9pZBgBIAEoCVIGZGF0YUlkEhQKBXN0YWdlGA'
    'IgASgJUgVzdGFnZQ==');

@$core.Deprecated('Use removeStageResponseDescriptor instead')
const RemoveStageResponse$json = {
  '1': 'RemoveStageResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `RemoveStageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeStageResponseDescriptor = $convert.base64Decode(
    'ChNSZW1vdmVTdGFnZVJlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');

@$core.Deprecated('Use listDataStagesRequestDescriptor instead')
const ListDataStagesRequest$json = {
  '1': 'ListDataStagesRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `ListDataStagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDataStagesRequestDescriptor = $convert.base64Decode(
    'ChVMaXN0RGF0YVN0YWdlc1JlcXVlc3QSFwoHZGF0YV9pZBgBIAEoCVIGZGF0YUlk');

@$core.Deprecated('Use listDataStagesResponseDescriptor instead')
const ListDataStagesResponse$json = {
  '1': 'ListDataStagesResponse',
  '2': [
    {'1': 'stages', '3': 1, '4': 3, '5': 12, '10': 'stages'},
  ],
};

/// Descriptor for `ListDataStagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDataStagesResponseDescriptor = $convert.base64Decode(
    'ChZMaXN0RGF0YVN0YWdlc1Jlc3BvbnNlEhYKBnN0YWdlcxgBIAMoDFIGc3RhZ2Vz');

