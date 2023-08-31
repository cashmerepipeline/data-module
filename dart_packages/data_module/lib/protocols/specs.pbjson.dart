//
//  Generated code. Do not modify.
//  source: specs.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use specsAttributeDescriptor instead')
const SpecsAttribute$json = {
  '1': 'SpecsAttribute',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 11, '6': '.cashmere.Name', '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SpecsAttribute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List specsAttributeDescriptor = $convert.base64Decode(
    'Cg5TcGVjc0F0dHJpYnV0ZRIiCgRuYW1lGAEgASgLMg4uY2FzaG1lcmUuTmFtZVIEbmFtZRIUCg'
    'V2YWx1ZRgCIAEoCVIFdmFsdWU=');

@$core.Deprecated('Use newSpecsRequestDescriptor instead')
const NewSpecsRequest$json = {
  '1': 'NewSpecsRequest',
  '2': [
    {'1': 'manage_id', '3': 1, '4': 1, '5': 5, '10': 'manageId'},
    {'1': 'entity_id', '3': 2, '4': 1, '5': 9, '10': 'entityId'},
    {'1': 'name', '3': 3, '4': 1, '5': 11, '6': '.cashmere.Name', '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'attibutes', '3': 5, '4': 3, '5': 12, '10': 'attibutes'},
  ],
};

/// Descriptor for `NewSpecsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newSpecsRequestDescriptor = $convert.base64Decode(
    'Cg9OZXdTcGVjc1JlcXVlc3QSGwoJbWFuYWdlX2lkGAEgASgFUghtYW5hZ2VJZBIbCgllbnRpdH'
    'lfaWQYAiABKAlSCGVudGl0eUlkEiIKBG5hbWUYAyABKAsyDi5jYXNobWVyZS5OYW1lUgRuYW1l'
    'EiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbhIcCglhdHRpYnV0ZXMYBSADKAxSCW'
    'F0dGlidXRlcw==');

@$core.Deprecated('Use newSpecsResponseDescriptor instead')
const NewSpecsResponse$json = {
  '1': 'NewSpecsResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `NewSpecsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newSpecsResponseDescriptor = $convert.base64Decode(
    'ChBOZXdTcGVjc1Jlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');

@$core.Deprecated('Use listSpecsRequestDescriptor instead')
const ListSpecsRequest$json = {
  '1': 'ListSpecsRequest',
  '2': [
    {'1': 'manage_id', '3': 1, '4': 1, '5': 9, '10': 'manageId'},
    {'1': 'entity_id', '3': 2, '4': 1, '5': 9, '10': 'entityId'},
  ],
};

/// Descriptor for `ListSpecsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0U3BlY3NSZXF1ZXN0EhsKCW1hbmFnZV9pZBgBIAEoCVIIbWFuYWdlSWQSGwoJZW50aX'
    'R5X2lkGAIgASgJUghlbnRpdHlJZA==');

@$core.Deprecated('Use listSpecsResponseDescriptor instead')
const ListSpecsResponse$json = {
  '1': 'ListSpecsResponse',
  '2': [
    {'1': 'specses', '3': 1, '4': 3, '5': 12, '10': 'specses'},
  ],
};

/// Descriptor for `ListSpecsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0U3BlY3NSZXNwb25zZRIYCgdzcGVjc2VzGAEgAygMUgdzcGVjc2Vz');

@$core.Deprecated('Use listSpecsDataRequestDescriptor instead')
const ListSpecsDataRequest$json = {
  '1': 'ListSpecsDataRequest',
  '2': [
    {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
  ],
};

/// Descriptor for `ListSpecsDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsDataRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0U3BlY3NEYXRhUmVxdWVzdBIZCghzcGVjc19pZBgBIAEoCVIHc3BlY3NJZA==');

@$core.Deprecated('Use listSpecsDataResponseDescriptor instead')
const ListSpecsDataResponse$json = {
  '1': 'ListSpecsDataResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `ListSpecsDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsDataResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0U3BlY3NEYXRhUmVzcG9uc2USEgoEZGF0YRgBIAMoDFIEZGF0YQ==');

@$core.Deprecated('Use listSpecsPrefabsRequestDescriptor instead')
const ListSpecsPrefabsRequest$json = {
  '1': 'ListSpecsPrefabsRequest',
  '2': [
    {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
  ],
};

/// Descriptor for `ListSpecsPrefabsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsPrefabsRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0U3BlY3NQcmVmYWJzUmVxdWVzdBIZCghzcGVjc19pZBgBIAEoCVIHc3BlY3NJZA==');

@$core.Deprecated('Use listSpecsPrefabsResponseDescriptor instead')
const ListSpecsPrefabsResponse$json = {
  '1': 'ListSpecsPrefabsResponse',
  '2': [
    {'1': 'prefabs', '3': 1, '4': 3, '5': 12, '10': 'prefabs'},
  ],
};

/// Descriptor for `ListSpecsPrefabsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpecsPrefabsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0U3BlY3NQcmVmYWJzUmVzcG9uc2USGAoHcHJlZmFicxgBIAMoDFIHcHJlZmFicw==');

