//
//  Generated code. Do not modify.
//  source: file_transfer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'file_info.pb.dart' as $0;

/// 上传文件数据
/// 第一个包块编号为0，最后一个包块编号为0, 即从0开始，到0结束
/// 第一个包和最后一个包不包含文件数据，作为传输标记用
/// 最终路径为：/{specs_id}/{data_id}/{stage}/{version}/{sub_path}/{file_name}
class UploadFileRequest extends $pb.GeneratedMessage {
  factory UploadFileRequest({
    $core.String? specsId,
    $fixnum.Int64? totalChunks,
    $fixnum.Int64? currentChunkIndex,
    $core.List<$core.int>? chunk,
    $0.FileInfo? fileInfo,
    $core.String? chunkMd5,
    $core.String? stage,
    $core.String? version,
    $core.String? dataId,
    $core.String? subPath,
  }) {
    final $result = create();
    if (specsId != null) {
      $result.specsId = specsId;
    }
    if (totalChunks != null) {
      $result.totalChunks = totalChunks;
    }
    if (currentChunkIndex != null) {
      $result.currentChunkIndex = currentChunkIndex;
    }
    if (chunk != null) {
      $result.chunk = chunk;
    }
    if (fileInfo != null) {
      $result.fileInfo = fileInfo;
    }
    if (chunkMd5 != null) {
      $result.chunkMd5 = chunkMd5;
    }
    if (stage != null) {
      $result.stage = stage;
    }
    if (version != null) {
      $result.version = version;
    }
    if (dataId != null) {
      $result.dataId = dataId;
    }
    if (subPath != null) {
      $result.subPath = subPath;
    }
    return $result;
  }
  UploadFileRequest._() : super();
  factory UploadFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'specsId')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'totalChunks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'currentChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'chunk', $pb.PbFieldType.OY)
    ..aOM<$0.FileInfo>(5, _omitFieldNames ? '' : 'fileInfo', subBuilder: $0.FileInfo.create)
    ..aOS(6, _omitFieldNames ? '' : 'chunkMd5')
    ..aOS(8, _omitFieldNames ? '' : 'stage')
    ..aOS(9, _omitFieldNames ? '' : 'version')
    ..aOS(10, _omitFieldNames ? '' : 'dataId')
    ..aOS(11, _omitFieldNames ? '' : 'subPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFileRequest clone() => UploadFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFileRequest copyWith(void Function(UploadFileRequest) updates) => super.copyWith((message) => updates(message as UploadFileRequest)) as UploadFileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadFileRequest create() => UploadFileRequest._();
  UploadFileRequest createEmptyInstance() => create();
  static $pb.PbList<UploadFileRequest> createRepeated() => $pb.PbList<UploadFileRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadFileRequest>(create);
  static UploadFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get specsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set specsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpecsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecsId() => clearField(1);

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

  /// 阶段，如：开发，测试，生产
  @$pb.TagNumber(8)
  $core.String get stage => $_getSZ(6);
  @$pb.TagNumber(8)
  set stage($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasStage() => $_has(6);
  @$pb.TagNumber(8)
  void clearStage() => clearField(8);

  /// 版本，如：v01
  @$pb.TagNumber(9)
  $core.String get version => $_getSZ(7);
  @$pb.TagNumber(9)
  set version($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasVersion() => $_has(7);
  @$pb.TagNumber(9)
  void clearVersion() => clearField(9);

  /// 规格，如：普通款，高级款，豪华款
  @$pb.TagNumber(10)
  $core.String get dataId => $_getSZ(8);
  @$pb.TagNumber(10)
  set dataId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasDataId() => $_has(8);
  @$pb.TagNumber(10)
  void clearDataId() => clearField(10);

  /// 相对于版本目录的子路径，用于保持文件集的相对良好组织，如：v01/a/b/c
  @$pb.TagNumber(11)
  $core.String get subPath => $_getSZ(9);
  @$pb.TagNumber(11)
  set subPath($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasSubPath() => $_has(9);
  @$pb.TagNumber(11)
  void clearSubPath() => clearField(11);
}

/// 下一个包块编号
class UploadFileResponse extends $pb.GeneratedMessage {
  factory UploadFileResponse({
    $fixnum.Int64? nextChunkIndex,
  }) {
    final $result = create();
    if (nextChunkIndex != null) {
      $result.nextChunkIndex = nextChunkIndex;
    }
    return $result;
  }
  UploadFileResponse._() : super();
  factory UploadFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadFileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'nextChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFileResponse clone() => UploadFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFileResponse copyWith(void Function(UploadFileResponse) updates) => super.copyWith((message) => updates(message as UploadFileResponse)) as UploadFileResponse;

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

/// 下载文件数据
/// 编号为0请求返回文件信息
class DownloadFileRequest extends $pb.GeneratedMessage {
  factory DownloadFileRequest({
    $core.String? dataId,
    $core.String? stage,
    $fixnum.Int64? chunkIndex,
    $core.String? version,
    $core.String? fileName,
    $core.String? specsId,
    $core.String? subPath,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    if (stage != null) {
      $result.stage = stage;
    }
    if (chunkIndex != null) {
      $result.chunkIndex = chunkIndex;
    }
    if (version != null) {
      $result.version = version;
    }
    if (fileName != null) {
      $result.fileName = fileName;
    }
    if (specsId != null) {
      $result.specsId = specsId;
    }
    if (subPath != null) {
      $result.subPath = subPath;
    }
    return $result;
  }
  DownloadFileRequest._() : super();
  factory DownloadFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DownloadFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..aOS(2, _omitFieldNames ? '' : 'stage')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'chunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOS(5, _omitFieldNames ? '' : 'fileName')
    ..aOS(6, _omitFieldNames ? '' : 'specsId')
    ..aOS(7, _omitFieldNames ? '' : 'subPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DownloadFileRequest clone() => DownloadFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DownloadFileRequest copyWith(void Function(DownloadFileRequest) updates) => super.copyWith((message) => updates(message as DownloadFileRequest)) as DownloadFileRequest;

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

  /// 如果给出版本，则下载对应版本的文件，没有则下载阶段软连接指向的文件
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
  $core.String get specsId => $_getSZ(5);
  @$pb.TagNumber(6)
  set specsId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSpecsId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpecsId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get subPath => $_getSZ(6);
  @$pb.TagNumber(7)
  set subPath($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSubPath() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubPath() => clearField(7);
}

/// 返回文件流
/// 最后一个包编号为0, 表示下载完成
/// 最后一个包不包含文件数据，作为传输标记用
class DownloadFileResponse extends $pb.GeneratedMessage {
  factory DownloadFileResponse({
    $core.String? dataId,
    $fixnum.Int64? chunkIndex,
    $core.List<$core.int>? chunk,
    $core.String? chunkMd5,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    if (chunkIndex != null) {
      $result.chunkIndex = chunkIndex;
    }
    if (chunk != null) {
      $result.chunk = chunk;
    }
    if (chunkMd5 != null) {
      $result.chunkMd5 = chunkMd5;
    }
    return $result;
  }
  DownloadFileResponse._() : super();
  factory DownloadFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DownloadFileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'chunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'chunk', $pb.PbFieldType.OY)
    ..aOS(5, _omitFieldNames ? '' : 'chunkMd5')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DownloadFileResponse clone() => DownloadFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DownloadFileResponse copyWith(void Function(DownloadFileResponse) updates) => super.copyWith((message) => updates(message as DownloadFileResponse)) as DownloadFileResponse;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
