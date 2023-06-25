///
//  Generated code. Do not modify.
//  source: data_server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use dataServerConfigsDescriptor instead')
const DataServerConfigs$json = const {
  '1': 'DataServerConfigs',
  '2': const [
    const {'1': 'root_dir_path', '3': 1, '4': 1, '5': 9, '10': 'rootDirPath'},
    const {'1': 'max_file_size', '3': 2, '4': 1, '5': 4, '10': 'maxFileSize'},
    const {'1': 'max_set_size', '3': 3, '4': 1, '5': 13, '10': 'maxSetSize'},
    const {'1': 'max_sequence_length', '3': 4, '4': 1, '5': 4, '10': 'maxSequenceLength'},
    const {'1': 'max_file_upload_number', '3': 5, '4': 1, '5': 13, '10': 'maxFileUploadNumber'},
    const {'1': 'max_file_download_number', '3': 6, '4': 1, '5': 13, '10': 'maxFileDownloadNumber'},
    const {'1': 'transfer_chunk_size', '3': 7, '4': 1, '5': 13, '10': 'transferChunkSize'},
    const {'1': 'internal_root_dir_map', '3': 8, '4': 3, '5': 11, '6': '.data.cashmere.DataServerConfigs.InternalRootDirMapEntry', '10': 'internalRootDirMap'},
  ],
  '3': const [DataServerConfigs_InternalRootDirMapEntry$json],
};

@$core.Deprecated('Use dataServerConfigsDescriptor instead')
const DataServerConfigs_InternalRootDirMapEntry$json = const {
  '1': 'InternalRootDirMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `DataServerConfigs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataServerConfigsDescriptor = $convert.base64Decode('ChFEYXRhU2VydmVyQ29uZmlncxIiCg1yb290X2Rpcl9wYXRoGAEgASgJUgtyb290RGlyUGF0aBIiCg1tYXhfZmlsZV9zaXplGAIgASgEUgttYXhGaWxlU2l6ZRIgCgxtYXhfc2V0X3NpemUYAyABKA1SCm1heFNldFNpemUSLgoTbWF4X3NlcXVlbmNlX2xlbmd0aBgEIAEoBFIRbWF4U2VxdWVuY2VMZW5ndGgSMwoWbWF4X2ZpbGVfdXBsb2FkX251bWJlchgFIAEoDVITbWF4RmlsZVVwbG9hZE51bWJlchI3ChhtYXhfZmlsZV9kb3dubG9hZF9udW1iZXIYBiABKA1SFW1heEZpbGVEb3dubG9hZE51bWJlchIuChN0cmFuc2Zlcl9jaHVua19zaXplGAcgASgNUhF0cmFuc2ZlckNodW5rU2l6ZRJrChVpbnRlcm5hbF9yb290X2Rpcl9tYXAYCCADKAsyOC5kYXRhLmNhc2htZXJlLkRhdGFTZXJ2ZXJDb25maWdzLkludGVybmFsUm9vdERpck1hcEVudHJ5UhJpbnRlcm5hbFJvb3REaXJNYXAaRQoXSW50ZXJuYWxSb290RGlyTWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use getDataServerConfigsRequestDescriptor instead')
const GetDataServerConfigsRequest$json = const {
  '1': 'GetDataServerConfigsRequest',
};

/// Descriptor for `GetDataServerConfigsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDataServerConfigsRequestDescriptor = $convert.base64Decode('ChtHZXREYXRhU2VydmVyQ29uZmlnc1JlcXVlc3Q=');
@$core.Deprecated('Use getDataServerConfigsResponseDescriptor instead')
const GetDataServerConfigsResponse$json = const {
  '1': 'GetDataServerConfigsResponse',
  '2': const [
    const {'1': 'configs', '3': 1, '4': 1, '5': 11, '6': '.data.cashmere.DataServerConfigs', '10': 'configs'},
  ],
};

/// Descriptor for `GetDataServerConfigsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDataServerConfigsResponseDescriptor = $convert.base64Decode('ChxHZXREYXRhU2VydmVyQ29uZmlnc1Jlc3BvbnNlEjoKB2NvbmZpZ3MYASABKAsyIC5kYXRhLmNhc2htZXJlLkRhdGFTZXJ2ZXJDb25maWdzUgdjb25maWdz');
