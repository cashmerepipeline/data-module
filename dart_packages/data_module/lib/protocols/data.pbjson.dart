//
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dataTypeDescriptor instead')
const DataType$json = {
  '1': 'DataType',
  '2': [
    {'1': 'FileData', '2': 0},
    {'1': 'SequenceData', '2': 1},
    {'1': 'FileSetData', '2': 2},
    {'1': 'DocumentData', '2': 3},
    {'1': 'ImageData', '2': 4},
    {'1': 'VideoData', '2': 5},
  ],
};

/// Descriptor for `DataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataTypeDescriptor = $convert.base64Decode(
    'CghEYXRhVHlwZRIMCghGaWxlRGF0YRAAEhAKDFNlcXVlbmNlRGF0YRABEg8KC0ZpbGVTZXREYX'
    'RhEAISEAoMRG9jdW1lbnREYXRhEAMSDQoJSW1hZ2VEYXRhEAQSDQoJVmlkZW9EYXRhEAU=');

@$core.Deprecated('Use dataInfoDescriptor instead')
const DataInfo$json = {
  '1': 'DataInfo',
  '2': [
    {'1': 'data_type', '3': 1, '4': 1, '5': 14, '6': '.data.cashmere.DataType', '10': 'dataType'},
    {'1': 'specs_id', '3': 2, '4': 1, '5': 9, '10': 'specsId'},
    {'1': 'stages', '3': 3, '4': 3, '5': 9, '10': 'stages'},
  ],
};

/// Descriptor for `DataInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataInfoDescriptor = $convert.base64Decode(
    'CghEYXRhSW5mbxI0CglkYXRhX3R5cGUYASABKA4yFy5kYXRhLmNhc2htZXJlLkRhdGFUeXBlUg'
    'hkYXRhVHlwZRIZCghzcGVjc19pZBgCIAEoCVIHc3BlY3NJZBIWCgZzdGFnZXMYAyADKAlSBnN0'
    'YWdlcw==');

@$core.Deprecated('Use newDataRequestDescriptor instead')
const NewDataRequest$json = {
  '1': 'NewDataRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 11, '6': '.cashmere.Name', '10': 'name'},
    {'1': 'data_type', '3': 2, '4': 1, '5': 14, '6': '.data.cashmere.DataType', '10': 'dataType'},
    {'1': 'specs_id', '3': 3, '4': 1, '5': 9, '10': 'specsId'},
    {'1': 'mark', '3': 4, '4': 1, '5': 9, '10': 'mark'},
  ],
};

/// Descriptor for `NewDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newDataRequestDescriptor = $convert.base64Decode(
    'Cg5OZXdEYXRhUmVxdWVzdBIiCgRuYW1lGAEgASgLMg4uY2FzaG1lcmUuTmFtZVIEbmFtZRI0Cg'
    'lkYXRhX3R5cGUYAiABKA4yFy5kYXRhLmNhc2htZXJlLkRhdGFUeXBlUghkYXRhVHlwZRIZCghz'
    'cGVjc19pZBgDIAEoCVIHc3BlY3NJZBISCgRtYXJrGAQgASgJUgRtYXJr');

@$core.Deprecated('Use newDataResponseDescriptor instead')
const NewDataResponse$json = {
  '1': 'NewDataResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `NewDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newDataResponseDescriptor = $convert.base64Decode(
    'Cg9OZXdEYXRhUmVzcG9uc2USFgoGcmVzdWx0GAEgASgJUgZyZXN1bHQ=');

@$core.Deprecated('Use getDataInfoRequestDescriptor instead')
const GetDataInfoRequest$json = {
  '1': 'GetDataInfoRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `GetDataInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDataInfoRequestDescriptor = $convert.base64Decode(
    'ChJHZXREYXRhSW5mb1JlcXVlc3QSFwoHZGF0YV9pZBgBIAEoCVIGZGF0YUlk');

@$core.Deprecated('Use getDataInfoResponseDescriptor instead')
const GetDataInfoResponse$json = {
  '1': 'GetDataInfoResponse',
  '2': [
    {'1': 'data_info', '3': 1, '4': 1, '5': 11, '6': '.data.cashmere.DataInfo', '10': 'dataInfo'},
  ],
};

/// Descriptor for `GetDataInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDataInfoResponseDescriptor = $convert.base64Decode(
    'ChNHZXREYXRhSW5mb1Jlc3BvbnNlEjQKCWRhdGFfaW5mbxgBIAEoCzIXLmRhdGEuY2FzaG1lcm'
    'UuRGF0YUluZm9SCGRhdGFJbmZv');

@$core.Deprecated('Use markDataRemovedRequestDescriptor instead')
const MarkDataRemovedRequest$json = {
  '1': 'MarkDataRemovedRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `MarkDataRemovedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markDataRemovedRequestDescriptor = $convert.base64Decode(
    'ChZNYXJrRGF0YVJlbW92ZWRSZXF1ZXN0EhcKB2RhdGFfaWQYASABKAlSBmRhdGFJZA==');

@$core.Deprecated('Use markDataRemovedResponseDescriptor instead')
const MarkDataRemovedResponse$json = {
  '1': 'MarkDataRemovedResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `MarkDataRemovedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markDataRemovedResponseDescriptor = $convert.base64Decode(
    'ChdNYXJrRGF0YVJlbW92ZWRSZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');

