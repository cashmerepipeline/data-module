///
//  Generated code. Do not modify.
//  source: stage.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use stageInfoDescriptor instead')
const StageInfo$json = const {
  '1': 'StageInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'versions', '3': 2, '4': 3, '5': 12, '10': 'versions'},
    const {'1': 'current_version', '3': 3, '4': 1, '5': 9, '10': 'currentVersion'},
  ],
};

/// Descriptor for `StageInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stageInfoDescriptor = $convert.base64Decode('CglTdGFnZUluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRIaCgh2ZXJzaW9ucxgCIAMoDFIIdmVyc2lvbnMSJwoPY3VycmVudF92ZXJzaW9uGAMgASgJUg5jdXJyZW50VmVyc2lvbg==');
@$core.Deprecated('Use newStageRequestDescriptor instead')
const NewStageRequest$json = const {
  '1': 'NewStageRequest',
  '2': const [
    const {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
    const {'1': 'stage_name', '3': 2, '4': 1, '5': 11, '6': '.cashmere.Name', '10': 'stageName'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `NewStageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newStageRequestDescriptor = $convert.base64Decode('Cg9OZXdTdGFnZVJlcXVlc3QSGQoIc3BlY3NfaWQYASABKAlSB3NwZWNzSWQSLQoKc3RhZ2VfbmFtZRgCIAEoCzIOLmNhc2htZXJlLk5hbWVSCXN0YWdlTmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24=');
@$core.Deprecated('Use newStageResponseDescriptor instead')
const NewStageResponse$json = const {
  '1': 'NewStageResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `NewStageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newStageResponseDescriptor = $convert.base64Decode('ChBOZXdTdGFnZVJlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');
@$core.Deprecated('Use removeStageRequestDescriptor instead')
const RemoveStageRequest$json = const {
  '1': 'RemoveStageRequest',
  '2': const [
    const {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
    const {'1': 'stage', '3': 2, '4': 1, '5': 9, '10': 'stage'},
  ],
};

/// Descriptor for `RemoveStageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeStageRequestDescriptor = $convert.base64Decode('ChJSZW1vdmVTdGFnZVJlcXVlc3QSGQoIc3BlY3NfaWQYASABKAlSB3NwZWNzSWQSFAoFc3RhZ2UYAiABKAlSBXN0YWdl');
@$core.Deprecated('Use removeStageResponseDescriptor instead')
const RemoveStageResponse$json = const {
  '1': 'RemoveStageResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `RemoveStageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeStageResponseDescriptor = $convert.base64Decode('ChNSZW1vdmVTdGFnZVJlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');
@$core.Deprecated('Use listStagesRequestDescriptor instead')
const ListStagesRequest$json = const {
  '1': 'ListStagesRequest',
  '2': const [
    const {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
  ],
};

/// Descriptor for `ListStagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStagesRequestDescriptor = $convert.base64Decode('ChFMaXN0U3RhZ2VzUmVxdWVzdBIZCghzcGVjc19pZBgBIAEoCVIHc3BlY3NJZA==');
@$core.Deprecated('Use listStagesResponseDescriptor instead')
const ListStagesResponse$json = const {
  '1': 'ListStagesResponse',
  '2': const [
    const {'1': 'stages', '3': 1, '4': 3, '5': 12, '10': 'stages'},
  ],
};

/// Descriptor for `ListStagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStagesResponseDescriptor = $convert.base64Decode('ChJMaXN0U3RhZ2VzUmVzcG9uc2USFgoGc3RhZ2VzGAEgAygMUgZzdGFnZXM=');
