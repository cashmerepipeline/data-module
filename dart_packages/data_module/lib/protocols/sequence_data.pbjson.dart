//
//  Generated code. Do not modify.
//  source: sequence_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sequenceDataInfoDescriptor instead')
const SequenceDataInfo$json = {
  '1': 'SequenceDataInfo',
  '2': [
    {'1': 'prefix_name', '3': 1, '4': 1, '5': 9, '10': 'prefixName'},
    {'1': 'sequence_pattern', '3': 2, '4': 1, '5': 4, '10': 'sequencePattern'},
    {'1': 'type_suffix', '3': 3, '4': 1, '5': 4, '10': 'typeSuffix'},
    {'1': 'start_index', '3': 4, '4': 1, '5': 4, '10': 'startIndex'},
    {'1': 'end_index', '3': 5, '4': 1, '5': 4, '10': 'endIndex'},
    {'1': 'total_size', '3': 6, '4': 1, '5': 4, '10': 'totalSize'},
    {'1': 'md5', '3': 7, '4': 1, '5': 9, '10': 'md5'},
  ],
};

/// Descriptor for `SequenceDataInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataInfoDescriptor = $convert.base64Decode(
    'ChBTZXF1ZW5jZURhdGFJbmZvEh8KC3ByZWZpeF9uYW1lGAEgASgJUgpwcmVmaXhOYW1lEikKEH'
    'NlcXVlbmNlX3BhdHRlcm4YAiABKARSD3NlcXVlbmNlUGF0dGVybhIfCgt0eXBlX3N1ZmZpeBgD'
    'IAEoBFIKdHlwZVN1ZmZpeBIfCgtzdGFydF9pbmRleBgEIAEoBFIKc3RhcnRJbmRleBIbCgllbm'
    'RfaW5kZXgYBSABKARSCGVuZEluZGV4Eh0KCnRvdGFsX3NpemUYBiABKARSCXRvdGFsU2l6ZRIQ'
    'CgNtZDUYByABKAlSA21kNQ==');

@$core.Deprecated('Use sequenceDataUploadSequenceRequestDescriptor instead')
const SequenceDataUploadSequenceRequest$json = {
  '1': 'SequenceDataUploadSequenceRequest',
  '2': [
    {'1': 'sequence_name', '3': 1, '4': 1, '5': 9, '10': 'sequenceName'},
    {'1': 'serial_pattern', '3': 2, '4': 1, '5': 9, '10': 'serialPattern'},
    {'1': 'sequence_length', '3': 3, '4': 1, '5': 13, '10': 'sequenceLength'},
    {'1': 'current_file', '3': 4, '4': 1, '5': 9, '10': 'currentFile'},
    {'1': 'total_chancks', '3': 5, '4': 1, '5': 4, '10': 'totalChancks'},
    {'1': 'current_chunck', '3': 6, '4': 1, '5': 4, '10': 'currentChunck'},
    {'1': 'chunck', '3': 7, '4': 1, '5': 12, '10': 'chunck'},
    {'1': 'data_id', '3': 8, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `SequenceDataUploadSequenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataUploadSequenceRequestDescriptor = $convert.base64Decode(
    'CiFTZXF1ZW5jZURhdGFVcGxvYWRTZXF1ZW5jZVJlcXVlc3QSIwoNc2VxdWVuY2VfbmFtZRgBIA'
    'EoCVIMc2VxdWVuY2VOYW1lEiUKDnNlcmlhbF9wYXR0ZXJuGAIgASgJUg1zZXJpYWxQYXR0ZXJu'
    'EicKD3NlcXVlbmNlX2xlbmd0aBgDIAEoDVIOc2VxdWVuY2VMZW5ndGgSIQoMY3VycmVudF9maW'
    'xlGAQgASgJUgtjdXJyZW50RmlsZRIjCg10b3RhbF9jaGFuY2tzGAUgASgEUgx0b3RhbENoYW5j'
    'a3MSJQoOY3VycmVudF9jaHVuY2sYBiABKARSDWN1cnJlbnRDaHVuY2sSFgoGY2h1bmNrGAcgAS'
    'gMUgZjaHVuY2sSFwoHZGF0YV9pZBgIIAEoCVIGZGF0YUlk');

@$core.Deprecated('Use sequenceDataUploadSequenceResponseDescriptor instead')
const SequenceDataUploadSequenceResponse$json = {
  '1': 'SequenceDataUploadSequenceResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `SequenceDataUploadSequenceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataUploadSequenceResponseDescriptor = $convert.base64Decode(
    'CiJTZXF1ZW5jZURhdGFVcGxvYWRTZXF1ZW5jZVJlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcm'
    'VzdWx0');

@$core.Deprecated('Use sequenceDataDownloadSequenceRequestDescriptor instead')
const SequenceDataDownloadSequenceRequest$json = {
  '1': 'SequenceDataDownloadSequenceRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
  ],
};

/// Descriptor for `SequenceDataDownloadSequenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataDownloadSequenceRequestDescriptor = $convert.base64Decode(
    'CiNTZXF1ZW5jZURhdGFEb3dubG9hZFNlcXVlbmNlUmVxdWVzdBIXCgdkYXRhX2lkGAEgASgJUg'
    'ZkYXRhSWQ=');

@$core.Deprecated('Use sequenceDataDownloadSequenceResponseDescriptor instead')
const SequenceDataDownloadSequenceResponse$json = {
  '1': 'SequenceDataDownloadSequenceResponse',
  '2': [
    {'1': 'data_id', '3': 8, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'sequence_name', '3': 1, '4': 1, '5': 9, '10': 'sequenceName'},
    {'1': 'serial_pattern', '3': 2, '4': 1, '5': 9, '10': 'serialPattern'},
    {'1': 'sequence_length', '3': 3, '4': 1, '5': 13, '10': 'sequenceLength'},
    {'1': 'current_file', '3': 4, '4': 1, '5': 9, '10': 'currentFile'},
    {'1': 'total_chancks', '3': 5, '4': 1, '5': 4, '10': 'totalChancks'},
    {'1': 'current_chunck', '3': 6, '4': 1, '5': 4, '10': 'currentChunck'},
    {'1': 'chunck', '3': 7, '4': 1, '5': 12, '10': 'chunck'},
  ],
};

/// Descriptor for `SequenceDataDownloadSequenceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDataDownloadSequenceResponseDescriptor = $convert.base64Decode(
    'CiRTZXF1ZW5jZURhdGFEb3dubG9hZFNlcXVlbmNlUmVzcG9uc2USFwoHZGF0YV9pZBgIIAEoCV'
    'IGZGF0YUlkEiMKDXNlcXVlbmNlX25hbWUYASABKAlSDHNlcXVlbmNlTmFtZRIlCg5zZXJpYWxf'
    'cGF0dGVybhgCIAEoCVINc2VyaWFsUGF0dGVybhInCg9zZXF1ZW5jZV9sZW5ndGgYAyABKA1SDn'
    'NlcXVlbmNlTGVuZ3RoEiEKDGN1cnJlbnRfZmlsZRgEIAEoCVILY3VycmVudEZpbGUSIwoNdG90'
    'YWxfY2hhbmNrcxgFIAEoBFIMdG90YWxDaGFuY2tzEiUKDmN1cnJlbnRfY2h1bmNrGAYgASgEUg'
    '1jdXJyZW50Q2h1bmNrEhYKBmNodW5jaxgHIAEoDFIGY2h1bmNr');

