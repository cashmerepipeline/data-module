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

@$core.Deprecated('Use uploadFileRequestDescriptor instead')
const UploadFileRequest$json = {
  '1': 'UploadFileRequest',
  '2': [
    {'1': 'specs_id', '3': 1, '4': 1, '5': 9, '10': 'specsId'},
    {'1': 'total_chunks', '3': 2, '4': 1, '5': 4, '10': 'totalChunks'},
    {'1': 'current_chunk_index', '3': 3, '4': 1, '5': 4, '10': 'currentChunkIndex'},
    {'1': 'chunk', '3': 4, '4': 1, '5': 12, '10': 'chunk'},
    {'1': 'chunk_md5', '3': 6, '4': 1, '5': 9, '10': 'chunkMd5'},
    {'1': 'file_info', '3': 5, '4': 1, '5': 11, '6': '.data.cashmere.FileInfo', '10': 'fileInfo'},
    {'1': 'data_id', '3': 10, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'stage', '3': 8, '4': 1, '5': 9, '10': 'stage'},
    {'1': 'version', '3': 9, '4': 1, '5': 9, '10': 'version'},
    {'1': 'sub_path', '3': 11, '4': 1, '5': 9, '10': 'subPath'},
  ],
};

/// Descriptor for `UploadFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileRequestDescriptor = $convert.base64Decode(
    'ChFVcGxvYWRGaWxlUmVxdWVzdBIZCghzcGVjc19pZBgBIAEoCVIHc3BlY3NJZBIhCgx0b3RhbF'
    '9jaHVua3MYAiABKARSC3RvdGFsQ2h1bmtzEi4KE2N1cnJlbnRfY2h1bmtfaW5kZXgYAyABKARS'
    'EWN1cnJlbnRDaHVua0luZGV4EhQKBWNodW5rGAQgASgMUgVjaHVuaxIbCgljaHVua19tZDUYBi'
    'ABKAlSCGNodW5rTWQ1EjQKCWZpbGVfaW5mbxgFIAEoCzIXLmRhdGEuY2FzaG1lcmUuRmlsZUlu'
    'Zm9SCGZpbGVJbmZvEhcKB2RhdGFfaWQYCiABKAlSBmRhdGFJZBIUCgVzdGFnZRgIIAEoCVIFc3'
    'RhZ2USGAoHdmVyc2lvbhgJIAEoCVIHdmVyc2lvbhIZCghzdWJfcGF0aBgLIAEoCVIHc3ViUGF0'
    'aA==');

@$core.Deprecated('Use uploadFileResponseDescriptor instead')
const UploadFileResponse$json = {
  '1': 'UploadFileResponse',
  '2': [
    {'1': 'next_chunk_index', '3': 1, '4': 1, '5': 4, '10': 'nextChunkIndex'},
  ],
};

/// Descriptor for `UploadFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileResponseDescriptor = $convert.base64Decode(
    'ChJVcGxvYWRGaWxlUmVzcG9uc2USKAoQbmV4dF9jaHVua19pbmRleBgBIAEoBFIObmV4dENodW'
    '5rSW5kZXg=');

@$core.Deprecated('Use downloadFileRequestDescriptor instead')
const DownloadFileRequest$json = {
  '1': 'DownloadFileRequest',
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

/// Descriptor for `DownloadFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadFileRequestDescriptor = $convert.base64Decode(
    'ChNEb3dubG9hZEZpbGVSZXF1ZXN0EhkKCHNwZWNzX2lkGAYgASgJUgdzcGVjc0lkEhcKB2RhdG'
    'FfaWQYASABKAlSBmRhdGFJZBIUCgVzdGFnZRgCIAEoCVIFc3RhZ2USHwoLY2h1bmtfaW5kZXgY'
    'AyABKARSCmNodW5rSW5kZXgSGAoHdmVyc2lvbhgEIAEoCVIHdmVyc2lvbhIZCghzdWJfcGF0aB'
    'gHIAEoCVIHc3ViUGF0aBIbCglmaWxlX25hbWUYBSABKAlSCGZpbGVOYW1l');

@$core.Deprecated('Use downloadFileResponseDescriptor instead')
const DownloadFileResponse$json = {
  '1': 'DownloadFileResponse',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'chunk_index', '3': 3, '4': 1, '5': 4, '10': 'chunkIndex'},
    {'1': 'chunk', '3': 4, '4': 1, '5': 12, '10': 'chunk'},
    {'1': 'chunk_md5', '3': 5, '4': 1, '5': 9, '10': 'chunkMd5'},
  ],
};

/// Descriptor for `DownloadFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadFileResponseDescriptor = $convert.base64Decode(
    'ChREb3dubG9hZEZpbGVSZXNwb25zZRIXCgdkYXRhX2lkGAEgASgJUgZkYXRhSWQSHwoLY2h1bm'
    'tfaW5kZXgYAyABKARSCmNodW5rSW5kZXgSFAoFY2h1bmsYBCABKAxSBWNodW5rEhsKCWNodW5r'
    'X21kNRgFIAEoCVIIY2h1bmtNZDU=');

