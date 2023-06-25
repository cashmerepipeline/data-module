///
//  Generated code. Do not modify.
//  source: specs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use newSpecsRequestDescriptor instead')
const NewSpecsRequest$json = const {
  '1': 'NewSpecsRequest',
  '2': const [
    const {'1': 'data_id', '3': 2, '4': 1, '5': 9, '10': 'dataId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 11, '6': '.cashmere.Name', '10': 'name'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `NewSpecsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newSpecsRequestDescriptor = $convert.base64Decode('Cg9OZXdTcGVjc1JlcXVlc3QSFwoHZGF0YV9pZBgCIAEoCVIGZGF0YUlkEiIKBG5hbWUYAyABKAsyDi5jYXNobWVyZS5OYW1lUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use newSpecsResponseDescriptor instead')
const NewSpecsResponse$json = const {
  '1': 'NewSpecsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `NewSpecsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newSpecsResponseDescriptor = $convert.base64Decode('ChBOZXdTcGVjc1Jlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');
@$core.Deprecated('Use listSpecsRequestDescriptor instead')
const ListSpecsRequest$json = const {
  '1': 'ListSpecsRequest',
  '2': const [
    const {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `ListSpecsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsRequestDescriptor = $convert.base64Decode('ChBMaXN0U3BlY3NSZXF1ZXN0EhcKB2RhdGFfaWQYASABKAlSBmRhdGFJZA==');
@$core.Deprecated('Use listSpecsResponseDescriptor instead')
const ListSpecsResponse$json = const {
  '1': 'ListSpecsResponse',
  '2': const [
    const {'1': 'specses', '3': 1, '4': 3, '5': 12, '10': 'specses'},
  ],
};

/// Descriptor for `ListSpecsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsResponseDescriptor = $convert.base64Decode('ChFMaXN0U3BlY3NSZXNwb25zZRIYCgdzcGVjc2VzGAEgAygMUgdzcGVjc2Vz');
@$core.Deprecated('Use listSpecsPrefabsRequestDescriptor instead')
const ListSpecsPrefabsRequest$json = const {
  '1': 'ListSpecsPrefabsRequest',
  '2': const [
    const {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
  ],
};

/// Descriptor for `ListSpecsPrefabsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsPrefabsRequestDescriptor = $convert.base64Decode('ChdMaXN0U3BlY3NQcmVmYWJzUmVxdWVzdBIZCghzcGVjc19pZBgBIAEoCVIHc3BlY3NJZA==');
@$core.Deprecated('Use listSpecsPrefabsResponseDescriptor instead')
const ListSpecsPrefabsResponse$json = const {
  '1': 'ListSpecsPrefabsResponse',
  '2': const [
    const {'1': 'prefabs', '3': 1, '4': 3, '5': 12, '10': 'prefabs'},
  ],
};

/// Descriptor for `ListSpecsPrefabsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsPrefabsResponseDescriptor = $convert.base64Decode('ChhMaXN0U3BlY3NQcmVmYWJzUmVzcG9uc2USGAoHcHJlZmFicxgBIAMoDFIHcHJlZmFicw==');
