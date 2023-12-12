//
//  Generated code. Do not modify.
//  source: file_transfer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use uploadFileToVersionRequestDescriptor instead')
const UploadFileToVersionRequest$json = {
  '1': 'UploadFileToVersionRequest',
  '2': [
    {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
    {'1': 'file_info', '3': 5, '4': 1, '5': 11, '6': '.data.cashmere.FileInfo', '10': 'fileInfo'},
    {'1': 'data_id', '3': 10, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'data_type', '3': 11, '4': 1, '5': 14, '6': '.data.cashmere.DataType', '10': 'dataType'},
    {'1': 'sub_path', '3': 12, '4': 1, '5': 9, '10': 'subPath'},
    {'1': 'stage', '3': 8, '4': 1, '5': 9, '10': 'stage'},
    {'1': 'version', '3': 9, '4': 1, '5': 9, '10': 'version'},
    {'1': 'total_chunks', '3': 2, '4': 1, '5': 4, '10': 'totalChunks'},
    {'1': 'current_chunk_index', '3': 3, '4': 1, '5': 4, '10': 'currentChunkIndex'},
    {'1': 'chunk', '3': 4, '4': 1, '5': 12, '10': 'chunk'},
    {'1': 'chunk_md5', '3': 6, '4': 1, '5': 9, '10': 'chunkMd5'},
  ],
};

/// Descriptor for `UploadFileToVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileToVersionRequestDescriptor = $convert.base64Decode(
    'ChpVcGxvYWRGaWxlVG9WZXJzaW9uUmVxdWVzdBIZCghzcGVjc19pZBgBIAEoCVIHc3BlY3NJZB'
    'I0CglmaWxlX2luZm8YBSABKAsyFy5kYXRhLmNhc2htZXJlLkZpbGVJbmZvUghmaWxlSW5mbxIX'
    'CgdkYXRhX2lkGAogASgJUgZkYXRhSWQSNAoJZGF0YV90eXBlGAsgASgOMhcuZGF0YS5jYXNobW'
    'VyZS5EYXRhVHlwZVIIZGF0YVR5cGUSGQoIc3ViX3BhdGgYDCABKAlSB3N1YlBhdGgSFAoFc3Rh'
    'Z2UYCCABKAlSBXN0YWdlEhgKB3ZlcnNpb24YCSABKAlSB3ZlcnNpb24SIQoMdG90YWxfY2h1bm'
    'tzGAIgASgEUgt0b3RhbENodW5rcxIuChNjdXJyZW50X2NodW5rX2luZGV4GAMgASgEUhFjdXJy'
    'ZW50Q2h1bmtJbmRleBIUCgVjaHVuaxgEIAEoDFIFY2h1bmsSGwoJY2h1bmtfbWQ1GAYgASgJUg'
    'hjaHVua01kNQ==');

@$core.Deprecated('Use uploadFileToVersionResponseDescriptor instead')
const UploadFileToVersionResponse$json = {
  '1': 'UploadFileToVersionResponse',
  '2': [
    {'1': 'next_chunk_index', '3': 1, '4': 1, '5': 4, '10': 'nextChunkIndex'},
  ],
};

/// Descriptor for `UploadFileToVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileToVersionResponseDescriptor = $convert.base64Decode(
    'ChtVcGxvYWRGaWxlVG9WZXJzaW9uUmVzcG9uc2USKAoQbmV4dF9jaHVua19pbmRleBgBIAEoBF'
    'IObmV4dENodW5rSW5kZXg=');

@$core.Deprecated('Use downloadFileFromVersionRequestDescriptor instead')
const DownloadFileFromVersionRequest$json = {
  '1': 'DownloadFileFromVersionRequest',
  '2': [
    {'1': 'specs_id', '3': 6, '4': 1, '5': 9, '10': 'specsId'},
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'stage', '3': 2, '4': 1, '5': 9, '10': 'stage'},
    {'1': 'chunk_index', '3': 3, '4': 1, '5': 4, '10': 'chunkIndex'},
    {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    {'1': 'sub_path', '3': 7, '4': 1, '5': 9, '10': 'subPath'},
    {'1': 'file_name', '3': 5, '4': 1, '5': 9, '10': 'fileName'},
  ],
};

/// Descriptor for `DownloadFileFromVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadFileFromVersionRequestDescriptor = $convert.base64Decode(
    'Ch5Eb3dubG9hZEZpbGVGcm9tVmVyc2lvblJlcXVlc3QSGQoIc3BlY3NfaWQYBiABKAlSB3NwZW'
    'NzSWQSFwoHZGF0YV9pZBgBIAEoCVIGZGF0YUlkEhQKBXN0YWdlGAIgASgJUgVzdGFnZRIfCgtj'
    'aHVua19pbmRleBgDIAEoBFIKY2h1bmtJbmRleBIYCgd2ZXJzaW9uGAQgASgJUgd2ZXJzaW9uEh'
    'kKCHN1Yl9wYXRoGAcgASgJUgdzdWJQYXRoEhsKCWZpbGVfbmFtZRgFIAEoCVIIZmlsZU5hbWU=');

@$core.Deprecated('Use downloadFileFromVersionResponseDescriptor instead')
const DownloadFileFromVersionResponse$json = {
  '1': 'DownloadFileFromVersionResponse',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'chunk_index', '3': 3, '4': 1, '5': 4, '10': 'chunkIndex'},
    {'1': 'chunk', '3': 4, '4': 1, '5': 12, '10': 'chunk'},
    {'1': 'chunk_md5', '3': 5, '4': 1, '5': 9, '10': 'chunkMd5'},
  ],
};

/// Descriptor for `DownloadFileFromVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadFileFromVersionResponseDescriptor = $convert.base64Decode(
    'Ch9Eb3dubG9hZEZpbGVGcm9tVmVyc2lvblJlc3BvbnNlEhcKB2RhdGFfaWQYASABKAlSBmRhdG'
    'FJZBIfCgtjaHVua19pbmRleBgDIAEoBFIKY2h1bmtJbmRleBIUCgVjaHVuaxgEIAEoDFIFY2h1'
    'bmsSGwoJY2h1bmtfbWQ1GAUgASgJUghjaHVua01kNQ==');

