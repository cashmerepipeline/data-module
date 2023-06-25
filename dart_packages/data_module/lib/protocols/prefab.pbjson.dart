///
//  Generated code. Do not modify.
//  source: prefab.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use newPrefabRequestDescriptor instead')
const NewPrefabRequest$json = const {
  '1': 'NewPrefabRequest',
  '2': const [
    const {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
    const {'1': 'stage_id', '3': 2, '4': 1, '5': 9, '10': 'stageId'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'name', '3': 4, '4': 1, '5': 11, '6': '.cashmere.Name', '10': 'name'},
    const {'1': 'modifies', '3': 5, '4': 1, '5': 12, '10': 'modifies'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `NewPrefabRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newPrefabRequestDescriptor = $convert.base64Decode('ChBOZXdQcmVmYWJSZXF1ZXN0EhkKCHNwZWNzX2lkGAEgASgJUgdzcGVjc0lkEhkKCHN0YWdlX2lkGAIgASgJUgdzdGFnZUlkEhgKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24SIgoEbmFtZRgEIAEoCzIOLmNhc2htZXJlLk5hbWVSBG5hbWUSGgoIbW9kaWZpZXMYBSABKAxSCG1vZGlmaWVzEiAKC2Rlc2NyaXB0aW9uGAYgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use newPrefabResponseDescriptor instead')
const NewPrefabResponse$json = const {
  '1': 'NewPrefabResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `NewPrefabResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newPrefabResponseDescriptor = $convert.base64Decode('ChFOZXdQcmVmYWJSZXNwb25zZRIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');
@$core.Deprecated('Use listPrefabRequestDescriptor instead')
const ListPrefabRequest$json = const {
  '1': 'ListPrefabRequest',
  '2': const [
    const {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
  ],
};

/// Descriptor for `ListPrefabRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPrefabRequestDescriptor = $convert.base64Decode('ChFMaXN0UHJlZmFiUmVxdWVzdBIZCghzcGVjc19pZBgBIAEoCVIHc3BlY3NJZA==');
@$core.Deprecated('Use listPrefabResponseDescriptor instead')
const ListPrefabResponse$json = const {
  '1': 'ListPrefabResponse',
  '2': const [
    const {'1': 'prefabs', '3': 1, '4': 3, '5': 12, '10': 'prefabs'},
  ],
};

/// Descriptor for `ListPrefabResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPrefabResponseDescriptor = $convert.base64Decode('ChJMaXN0UHJlZmFiUmVzcG9uc2USGAoHcHJlZmFicxgBIAMoDFIHcHJlZmFicw==');
