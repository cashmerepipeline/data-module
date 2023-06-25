///
//  Generated code. Do not modify.
//  source: file_transfer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'file_info.pb.dart' as $0;

class UploadFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalChunks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunk', $pb.PbFieldType.OY)
    ..aOM<$0.FileInfo>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileInfo', subBuilder: $0.FileInfo.create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkMd5')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stage')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specs')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subPath')
    ..hasRequiredFields = false
  ;

  UploadFileRequest._() : super();
  factory UploadFileRequest({
    $core.String? dataId,
    $fixnum.Int64? totalChunks,
    $fixnum.Int64? currentChunkIndex,
    $core.List<$core.int>? chunk,
    $0.FileInfo? fileInfo,
    $core.String? chunkMd5,
    $core.String? stage,
    $core.String? version,
    $core.String? specs,
    $core.String? subPath,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    if (totalChunks != null) {
      _result.totalChunks = totalChunks;
    }
    if (currentChunkIndex != null) {
      _result.currentChunkIndex = currentChunkIndex;
    }
    if (chunk != null) {
      _result.chunk = chunk;
    }
    if (fileInfo != null) {
      _result.fileInfo = fileInfo;
    }
    if (chunkMd5 != null) {
      _result.chunkMd5 = chunkMd5;
    }
    if (stage != null) {
      _result.stage = stage;
    }
    if (version != null) {
      _result.version = version;
    }
    if (specs != null) {
      _result.specs = specs;
    }
    if (subPath != null) {
      _result.subPath = subPath;
    }
    return _result;
  }
  factory UploadFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFileRequest clone() => UploadFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFileRequest copyWith(void Function(UploadFileRequest) updates) => super.copyWith((message) => updates(message as UploadFileRequest)) as UploadFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadFileRequest create() => UploadFileRequest._();
  UploadFileRequest createEmptyInstance() => create();
  static $pb.PbList<UploadFileRequest> createRepeated() => $pb.PbList<UploadFileRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadFileRequest>(create);
  static UploadFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get totalChunks => $_getI64(1);
  @$pb.TagNumber(2)
  set totalChunks($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalChunks() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalChunks() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get currentChunkIndex => $_getI64(2);
  @$pb.TagNumber(3)
  set currentChunkIndex($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentChunkIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentChunkIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get chunk => $_getN(3);
  @$pb.TagNumber(4)
  set chunk($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChunk() => $_has(3);
  @$pb.TagNumber(4)
  void clearChunk() => clearField(4);

  @$pb.TagNumber(5)
  $0.FileInfo get fileInfo => $_getN(4);
  @$pb.TagNumber(5)
  set fileInfo($0.FileInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFileInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearFileInfo() => clearField(5);
  @$pb.TagNumber(5)
  $0.FileInfo ensureFileInfo() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get chunkMd5 => $_getSZ(5);
  @$pb.TagNumber(6)
  set chunkMd5($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChunkMd5() => $_has(5);
  @$pb.TagNumber(6)
  void clearChunkMd5() => clearField(6);

  @$pb.TagNumber(8)
  $core.String get stage => $_getSZ(6);
  @$pb.TagNumber(8)
  set stage($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasStage() => $_has(6);
  @$pb.TagNumber(8)
  void clearStage() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get version => $_getSZ(7);
  @$pb.TagNumber(9)
  set version($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasVersion() => $_has(7);
  @$pb.TagNumber(9)
  void clearVersion() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get specs => $_getSZ(8);
  @$pb.TagNumber(10)
  set specs($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasSpecs() => $_has(8);
  @$pb.TagNumber(10)
  void clearSpecs() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get subPath => $_getSZ(9);
  @$pb.TagNumber(11)
  set subPath($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasSubPath() => $_has(9);
  @$pb.TagNumber(11)
  void clearSubPath() => clearField(11);
}

class UploadFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadFileResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  UploadFileResponse._() : super();
  factory UploadFileResponse({
    $fixnum.Int64? nextChunkIndex,
  }) {
    final _result = create();
    if (nextChunkIndex != null) {
      _result.nextChunkIndex = nextChunkIndex;
    }
    return _result;
  }
  factory UploadFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFileResponse clone() => UploadFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFileResponse copyWith(void Function(UploadFileResponse) updates) => super.copyWith((message) => updates(message as UploadFileResponse)) as UploadFileResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadFileResponse create() => UploadFileResponse._();
  UploadFileResponse createEmptyInstance() => create();
  static $pb.PbList<UploadFileResponse> createRepeated() => $pb.PbList<UploadFileResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadFileResponse>(create);
  static UploadFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nextChunkIndex => $_getI64(0);
  @$pb.TagNumber(1)
  set nextChunkIndex($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNextChunkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearNextChunkIndex() => clearField(1);
}

class DownloadFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DownloadFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stage')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specs')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subPath')
    ..hasRequiredFields = false
  ;

  DownloadFileRequest._() : super();
  factory DownloadFileRequest({
    $core.String? dataId,
    $core.String? stage,
    $fixnum.Int64? chunkIndex,
    $core.String? version,
    $core.String? fileName,
    $core.String? specs,
    $core.String? subPath,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    if (stage != null) {
      _result.stage = stage;
    }
    if (chunkIndex != null) {
      _result.chunkIndex = chunkIndex;
    }
    if (version != null) {
      _result.version = version;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (specs != null) {
      _result.specs = specs;
    }
    if (subPath != null) {
      _result.subPath = subPath;
    }
    return _result;
  }
  factory DownloadFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DownloadFileRequest clone() => DownloadFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DownloadFileRequest copyWith(void Function(DownloadFileRequest) updates) => super.copyWith((message) => updates(message as DownloadFileRequest)) as DownloadFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DownloadFileRequest create() => DownloadFileRequest._();
  DownloadFileRequest createEmptyInstance() => create();
  static $pb.PbList<DownloadFileRequest> createRepeated() => $pb.PbList<DownloadFileRequest>();
  @$core.pragma('dart2js:noInline')
  static DownloadFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DownloadFileRequest>(create);
  static DownloadFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stage => $_getSZ(1);
  @$pb.TagNumber(2)
  set stage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStage() => $_has(1);
  @$pb.TagNumber(2)
  void clearStage() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get chunkIndex => $_getI64(2);
  @$pb.TagNumber(3)
  set chunkIndex($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChunkIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearChunkIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get fileName => $_getSZ(4);
  @$pb.TagNumber(5)
  set fileName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFileName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFileName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get specs => $_getSZ(5);
  @$pb.TagNumber(6)
  set specs($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSpecs() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpecs() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get subPath => $_getSZ(6);
  @$pb.TagNumber(7)
  set subPath($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSubPath() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubPath() => clearField(7);
}

class DownloadFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DownloadFileResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataId')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunk', $pb.PbFieldType.OY)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkMd5')
    ..hasRequiredFields = false
  ;

  DownloadFileResponse._() : super();
  factory DownloadFileResponse({
    $core.String? dataId,
    $fixnum.Int64? chunkIndex,
    $core.List<$core.int>? chunk,
    $core.String? chunkMd5,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    if (chunkIndex != null) {
      _result.chunkIndex = chunkIndex;
    }
    if (chunk != null) {
      _result.chunk = chunk;
    }
    if (chunkMd5 != null) {
      _result.chunkMd5 = chunkMd5;
    }
    return _result;
  }
  factory DownloadFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DownloadFileResponse clone() => DownloadFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DownloadFileResponse copyWith(void Function(DownloadFileResponse) updates) => super.copyWith((message) => updates(message as DownloadFileResponse)) as DownloadFileResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DownloadFileResponse create() => DownloadFileResponse._();
  DownloadFileResponse createEmptyInstance() => create();
  static $pb.PbList<DownloadFileResponse> createRepeated() => $pb.PbList<DownloadFileResponse>();
  @$core.pragma('dart2js:noInline')
  static DownloadFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DownloadFileResponse>(create);
  static DownloadFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get chunkIndex => $_getI64(1);
  @$pb.TagNumber(3)
  set chunkIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasChunkIndex() => $_has(1);
  @$pb.TagNumber(3)
  void clearChunkIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get chunk => $_getN(2);
  @$pb.TagNumber(4)
  set chunk($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasChunk() => $_has(2);
  @$pb.TagNumber(4)
  void clearChunk() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get chunkMd5 => $_getSZ(3);
  @$pb.TagNumber(5)
  set chunkMd5($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasChunkMd5() => $_has(3);
  @$pb.TagNumber(5)
  void clearChunkMd5() => clearField(5);
}

