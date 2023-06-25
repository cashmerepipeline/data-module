///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use dataTypeDescriptor instead')
const DataType$json = const {
  '1': 'DataType',
  '2': const [
    const {'1': 'FileData', '2': 0},
    const {'1': 'SequenceData', '2': 1},
    const {'1': 'FileSetData', '2': 2},
    const {'1': 'DocumentData', '2': 3},
  ],
};

/// Descriptor for `DataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataTypeDescriptor = $convert.base64Decode('CghEYXRhVHlwZRIMCghGaWxlRGF0YRAAEhAKDFNlcXVlbmNlRGF0YRABEg8KC0ZpbGVTZXREYXRhEAISEAoMRG9jdW1lbnREYXRhEAM=');
@$core.Deprecated('Use dataInfoDescriptor instead')
const DataInfo$json = const {
  '1': 'DataInfo',
  '2': const [
    const {'1': 'data_type', '3': 1, '4': 1, '5': 14, '6': '.data.cashmere.DataType', '10': 'dataType'},
    const {'1': 'owner_manage_id', '3': 3, '4': 1, '5': 5, '10': 'ownerManageId'},
    const {'1': 'owner_entity_id', '3': 4, '4': 1, '5': 9, '10': 'ownerEntityId'},
    const {'1': 'specs', '3': 5, '4': 3, '5': 9, '10': 'specs'},
  ],
};

/// Descriptor for `DataInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataInfoDescriptor = $convert.base64Decode('CghEYXRhSW5mbxI0CglkYXRhX3R5cGUYASABKA4yFy5kYXRhLmNhc2htZXJlLkRhdGFUeXBlUghkYXRhVHlwZRImCg9vd25lcl9tYW5hZ2VfaWQYAyABKAVSDW93bmVyTWFuYWdlSWQSJgoPb3duZXJfZW50aXR5X2lkGAQgASgJUg1vd25lckVudGl0eUlkEhQKBXNwZWNzGAUgAygJUgVzcGVjcw==');
@$core.Deprecated('Use newDataRequestDescriptor instead')
const NewDataRequest$json = const {
  '1': 'NewDataRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 11, '6': '.cashmere.Name', '10': 'name'},
    const {'1': 'data_type', '3': 2, '4': 1, '5': 14, '6': '.data.cashmere.DataType', '10': 'dataType'},
    const {'1': 'owner_manage_id', '3': 3, '4': 1, '5': 5, '10': 'ownerManageId'},
    const {'1': 'owner_entity_id', '3': 4, '4': 1, '5': 9, '10': 'ownerEntityId'},
  ],
};

/// Descriptor for `NewDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newDataRequestDescriptor = $convert.base64Decode('Cg5OZXdEYXRhUmVxdWVzdBIiCgRuYW1lGAEgASgLMg4uY2FzaG1lcmUuTmFtZVIEbmFtZRI0CglkYXRhX3R5cGUYAiABKA4yFy5kYXRhLmNhc2htZXJlLkRhdGFUeXBlUghkYXRhVHlwZRImCg9vd25lcl9tYW5hZ2VfaWQYAyABKAVSDW93bmVyTWFuYWdlSWQSJgoPb3duZXJfZW50aXR5X2lkGAQgASgJUg1vd25lckVudGl0eUlk');
@$core.Deprecated('Use newDataResponseDescriptor instead')
const NewDataResponse$json = const {
  '1': 'NewDataResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `NewDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newDataResponseDescriptor = $convert.base64Decode('Cg9OZXdEYXRhUmVzcG9uc2USFgoGcmVzdWx0GAEgASgJUgZyZXN1bHQ=');
@$core.Deprecated('Use getDataInfoRequestDescriptor instead')
const GetDataInfoRequest$json = const {
  '1': 'GetDataInfoRequest',
  '2': const [
    const {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `GetDataInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDataInfoRequestDescriptor = $convert.base64Decode('ChJHZXREYXRhSW5mb1JlcXVlc3QSFwoHZGF0YV9pZBgBIAEoCVIGZGF0YUlk');
@$core.Deprecated('Use getDataInfoResponseDescriptor instead')
const GetDataInfoResponse$json = const {
  '1': 'GetDataInfoResponse',
  '2': const [
    const {'1': 'data_info', '3': 1, '4': 1, '5': 11, '6': '.data.cashmere.DataInfo', '10': 'dataInfo'},
  ],
};

/// Descriptor for `GetDataInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDataInfoResponseDescriptor = $convert.base64Decode('ChNHZXREYXRhSW5mb1Jlc3BvbnNlEjQKCWRhdGFfaW5mbxgBIAEoCzIXLmRhdGEuY2FzaG1lcmUuRGF0YUluZm9SCGRhdGFJbmZv');
@$core.Deprecated('Use markDataRemovedRequestDescriptor instead')
const MarkDataRemovedRequest$json = const {
  '1': 'MarkDataRemovedRequest',
  '2': const [
    const {'1': 'owner_manage_id', '3': 1, '4': 1, '5': 5, '10': 'ownerManageId'},
    const {'1': 'owner_entity_id', '3': 2, '4': 1, '5': 9, '10': 'ownerEntityId'},
    const {'1': 'data_id', '3': 3, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `MarkDataRemovedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markDataRemovedRequestDescriptor = $convert.base64Decode('ChZNYXJrRGF0YVJlbW92ZWRSZXF1ZXN0EiYKD293bmVyX21hbmFnZV9pZBgBIAEoBVINb3duZXJNYW5hZ2VJZBImCg9vd25lcl9lbnRpdHlfaWQYAiABKAlSDW93bmVyRW50aXR5SWQSFwoHZGF0YV9pZBgDIAEoCVIGZGF0YUlk');
@$core.Deprecated('Use markDataRemovedResponseDescriptor instead')
const MarkDataRemovedResponse$json = const {
  '1': 'MarkDataRemovedResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `MarkDataRemovedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markDataRemovedResponseDescriptor = $convert.base64Decode('ChdNYXJrRGF0YVJlbW92ZWRSZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');
@$core.Deprecated('Use listEntityDataRequestDescriptor instead')
const ListEntityDataRequest$json = const {
  '1': 'ListEntityDataRequest',
  '2': const [
    const {'1': 'manage_id', '3': 1, '4': 1, '5': 5, '10': 'manageId'},
    const {'1': 'entity_id', '3': 2, '4': 1, '5': 9, '10': 'entityId'},
  ],
};

/// Descriptor for `ListEntityDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEntityDataRequestDescriptor = $convert.base64Decode('ChVMaXN0RW50aXR5RGF0YVJlcXVlc3QSGwoJbWFuYWdlX2lkGAEgASgFUghtYW5hZ2VJZBIbCgllbnRpdHlfaWQYAiABKAlSCGVudGl0eUlk');
@$core.Deprecated('Use listEntityDataResponseDescriptor instead')
const ListEntityDataResponse$json = const {
  '1': 'ListEntityDataResponse',
  '2': const [
    const {'1': 'data_ids', '3': 1, '4': 3, '5': 9, '10': 'dataIds'},
  ],
};

/// Descriptor for `ListEntityDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEntityDataResponseDescriptor = $convert.base64Decode('ChZMaXN0RW50aXR5RGF0YVJlc3BvbnNlEhkKCGRhdGFfaWRzGAEgAygJUgdkYXRhSWRz');
