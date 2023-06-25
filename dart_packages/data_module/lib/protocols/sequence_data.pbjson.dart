///
//  Generated code. Do not modify.
//  source: sequence_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sequenceDataInfoDescriptor instead')
const SequenceDataInfo$json = const {
  '1': 'SequenceDataInfo',
  '2': const [
    const {'1': 'prefix_name', '3': 1, '4': 1, '5': 9, '10': 'prefixName'},
    const {'1': 'sequence_pattern', '3': 2, '4': 1, '5': 4, '10': 'sequencePattern'},
    const {'1': 'type_suffix', '3': 3, '4': 1, '5': 4, '10': 'typeSuffix'},
    const {'1': 'start_index', '3': 4, '4': 1, '5': 4, '10': 'startIndex'},
    const {'1': 'end_index', '3': 5, '4': 1, '5': 4, '10': 'endIndex'},
    const {'1': 'total_size', '3': 6, '4': 1, '5': 4, '10': 'totalSize'},
    const {'1': 'md5', '3': 7, '4': 1, '5': 9, '10': 'md5'},
  ],
};

/// Descriptor for `SequenceDataInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataInfoDescriptor = $convert.base64Decode('ChBTZXF1ZW5jZURhdGFJbmZvEh8KC3ByZWZpeF9uYW1lGAEgASgJUgpwcmVmaXhOYW1lEikKEHNlcXVlbmNlX3BhdHRlcm4YAiABKARSD3NlcXVlbmNlUGF0dGVybhIfCgt0eXBlX3N1ZmZpeBgDIAEoBFIKdHlwZVN1ZmZpeBIfCgtzdGFydF9pbmRleBgEIAEoBFIKc3RhcnRJbmRleBIbCgllbmRfaW5kZXgYBSABKARSCGVuZEluZGV4Eh0KCnRvdGFsX3NpemUYBiABKARSCXRvdGFsU2l6ZRIQCgNtZDUYByABKAlSA21kNQ==');
@$core.Deprecated('Use sequenceDataUploadSequenceRequestDescriptor instead')
const SequenceDataUploadSequenceRequest$json = const {
  '1': 'SequenceDataUploadSequenceRequest',
  '2': const [
    const {'1': 'sequence_name', '3': 1, '4': 1, '5': 9, '10': 'sequenceName'},
    const {'1': 'serial_pattern', '3': 2, '4': 1, '5': 9, '10': 'serialPattern'},
    const {'1': 'sequence_length', '3': 3, '4': 1, '5': 13, '10': 'sequenceLength'},
    const {'1': 'current_file', '3': 4, '4': 1, '5': 9, '10': 'currentFile'},
    const {'1': 'total_chancks', '3': 5, '4': 1, '5': 4, '10': 'totalChancks'},
    const {'1': 'current_chunck', '3': 6, '4': 1, '5': 4, '10': 'currentChunck'},
    const {'1': 'chunck', '3': 7, '4': 1, '5': 12, '10': 'chunck'},
    const {'1': 'data_id', '3': 8, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `SequenceDataUploadSequenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataUploadSequenceRequestDescriptor = $convert.base64Decode('CiFTZXF1ZW5jZURhdGFVcGxvYWRTZXF1ZW5jZVJlcXVlc3QSIwoNc2VxdWVuY2VfbmFtZRgBIAEoCVIMc2VxdWVuY2VOYW1lEiUKDnNlcmlhbF9wYXR0ZXJuGAIgASgJUg1zZXJpYWxQYXR0ZXJuEicKD3NlcXVlbmNlX2xlbmd0aBgDIAEoDVIOc2VxdWVuY2VMZW5ndGgSIQoMY3VycmVudF9maWxlGAQgASgJUgtjdXJyZW50RmlsZRIjCg10b3RhbF9jaGFuY2tzGAUgASgEUgx0b3RhbENoYW5ja3MSJQoOY3VycmVudF9jaHVuY2sYBiABKARSDWN1cnJlbnRDaHVuY2sSFgoGY2h1bmNrGAcgASgMUgZjaHVuY2sSFwoHZGF0YV9pZBgIIAEoCVIGZGF0YUlk');
@$core.Deprecated('Use sequenceDataUploadSequenceResponseDescriptor instead')
const SequenceDataUploadSequenceResponse$json = const {
  '1': 'SequenceDataUploadSequenceResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `SequenceDataUploadSequenceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataUploadSequenceResponseDescriptor = $convert.base64Decode('CiJTZXF1ZW5jZURhdGFVcGxvYWRTZXF1ZW5jZVJlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');
@$core.Deprecated('Use sequenceDataDownloadSequenceRequestDescriptor instead')
const SequenceDataDownloadSequenceRequest$json = const {
  '1': 'SequenceDataDownloadSequenceRequest',
  '2': const [
    const {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `SequenceDataDownloadSequenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataDownloadSequenceRequestDescriptor = $convert.base64Decode('CiNTZXF1ZW5jZURhdGFEb3dubG9hZFNlcXVlbmNlUmVxdWVzdBIXCgdkYXRhX2lkGAEgASgJUgZkYXRhSWQ=');
@$core.Deprecated('Use sequenceDataDownloadSequenceResponseDescriptor instead')
const SequenceDataDownloadSequenceResponse$json = const {
  '1': 'SequenceDataDownloadSequenceResponse',
  '2': const [
    const {'1': 'data_id', '3': 8, '4': 1, '5': 9, '10': 'dataId'},
    const {'1': 'sequence_name', '3': 1, '4': 1, '5': 9, '10': 'sequenceName'},
    const {'1': 'serial_pattern', '3': 2, '4': 1, '5': 9, '10': 'serialPattern'},
    const {'1': 'sequence_length', '3': 3, '4': 1, '5': 13, '10': 'sequenceLength'},
    const {'1': 'current_file', '3': 4, '4': 1, '5': 9, '10': 'currentFile'},
    const {'1': 'total_chancks', '3': 5, '4': 1, '5': 4, '10': 'totalChancks'},
    const {'1': 'current_chunck', '3': 6, '4': 1, '5': 4, '10': 'currentChunck'},
    const {'1': 'chunck', '3': 7, '4': 1, '5': 12, '10': 'chunck'},
  ],
};

/// Descriptor for `SequenceDataDownloadSequenceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataDownloadSequenceResponseDescriptor = $convert.base64Decode('CiRTZXF1ZW5jZURhdGFEb3dubG9hZFNlcXVlbmNlUmVzcG9uc2USFwoHZGF0YV9pZBgIIAEoCVIGZGF0YUlkEiMKDXNlcXVlbmNlX25hbWUYASABKAlSDHNlcXVlbmNlTmFtZRIlCg5zZXJpYWxfcGF0dGVybhgCIAEoCVINc2VyaWFsUGF0dGVybhInCg9zZXF1ZW5jZV9sZW5ndGgYAyABKA1SDnNlcXVlbmNlTGVuZ3RoEiEKDGN1cnJlbnRfZmlsZRgEIAEoCVILY3VycmVudEZpbGUSIwoNdG90YWxfY2hhbmNrcxgFIAEoBFIMdG90YWxDaGFuY2tzEiUKDmN1cnJlbnRfY2h1bmNrGAYgASgEUg1jdXJyZW50Q2h1bmNrEhYKBmNodW5jaxgHIAEoDFIGY2h1bmNr');
