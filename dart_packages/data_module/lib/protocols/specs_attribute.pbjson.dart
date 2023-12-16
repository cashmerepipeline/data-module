//
//  Generated code. Do not modify.
//  source: specs_attribute.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use newSpecsAttributeRequestDescriptor instead')
const NewSpecsAttributeRequest$json = {
  '1': 'NewSpecsAttributeRequest',
  '2': [
    {'1': 'manage_id', '3': 1, '4': 1, '5': 9, '10': 'manageId'},
    {'1': 'name', '3': 2, '4': 1, '5': 11, '6': '.cashmere.Name', '10': 'name'},
    {'1': 'data_type', '3': 3, '4': 1, '5': 9, '10': 'dataType'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'default_value', '3': 5, '4': 1, '5': 12, '10': 'defaultValue'},
    {'1': 'index', '3': 6, '4': 1, '5': 5, '10': 'index'},
  ],
};

/// Descriptor for `NewSpecsAttributeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newSpecsAttributeRequestDescriptor = $convert.base64Decode(
    'ChhOZXdTcGVjc0F0dHJpYnV0ZVJlcXVlc3QSGwoJbWFuYWdlX2lkGAEgASgJUghtYW5hZ2VJZB'
    'IiCgRuYW1lGAIgASgLMg4uY2FzaG1lcmUuTmFtZVIEbmFtZRIbCglkYXRhX3R5cGUYAyABKAlS'
    'CGRhdGFUeXBlEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbhIjCg1kZWZhdWx0X3'
    'ZhbHVlGAUgASgMUgxkZWZhdWx0VmFsdWUSFAoFaW5kZXgYBiABKAVSBWluZGV4');

@$core.Deprecated('Use newSpecsAttributeResponseDescriptor instead')
const NewSpecsAttributeResponse$json = {
  '1': 'NewSpecsAttributeResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `NewSpecsAttributeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newSpecsAttributeResponseDescriptor = $convert.base64Decode(
    'ChlOZXdTcGVjc0F0dHJpYnV0ZVJlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');

@$core.Deprecated('Use deleteSpecsAttributeRequestDescriptor instead')
const DeleteSpecsAttributeRequest$json = {
  '1': 'DeleteSpecsAttributeRequest',
  '2': [
    {'1': 'manage_id', '3': 1, '4': 1, '5': 9, '10': 'manageId'},
    {'1': 'index', '3': 2, '4': 1, '5': 13, '10': 'index'},
  ],
};

/// Descriptor for `DeleteSpecsAttributeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSpecsAttributeRequestDescriptor = $convert.base64Decode(
    'ChtEZWxldGVTcGVjc0F0dHJpYnV0ZVJlcXVlc3QSGwoJbWFuYWdlX2lkGAEgASgJUghtYW5hZ2'
    'VJZBIUCgVpbmRleBgCIAEoDVIFaW5kZXg=');

@$core.Deprecated('Use deleteSpecsAttributeResponseDescriptor instead')
const DeleteSpecsAttributeResponse$json = {
  '1': 'DeleteSpecsAttributeResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `DeleteSpecsAttributeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSpecsAttributeResponseDescriptor = $convert.base64Decode(
    'ChxEZWxldGVTcGVjc0F0dHJpYnV0ZVJlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');

@$core.Deprecated('Use getSpecsAttributesRequestDescriptor instead')
const GetSpecsAttributesRequest$json = {
  '1': 'GetSpecsAttributesRequest',
  '2': [
    {'1': 'manage_id', '3': 1, '4': 1, '5': 9, '10': 'manageId'},
  ],
};

/// Descriptor for `GetSpecsAttributesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpecsAttributesRequestDescriptor = $convert.base64Decode(
    'ChlHZXRTcGVjc0F0dHJpYnV0ZXNSZXF1ZXN0EhsKCW1hbmFnZV9pZBgBIAEoCVIIbWFuYWdlSW'
    'Q=');

@$core.Deprecated('Use getSpecsAttributesResponseDescriptor instead')
const GetSpecsAttributesResponse$json = {
  '1': 'GetSpecsAttributesResponse',
  '2': [
    {'1': 'attributes', '3': 1, '4': 3, '5': 12, '10': 'attributes'},
  ],
};

/// Descriptor for `GetSpecsAttributesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpecsAttributesResponseDescriptor = $convert.base64Decode(
    'ChpHZXRTcGVjc0F0dHJpYnV0ZXNSZXNwb25zZRIeCgphdHRyaWJ1dGVzGAEgAygMUgphdHRyaW'
    'J1dGVz');

