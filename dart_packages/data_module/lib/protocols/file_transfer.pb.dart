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

import 'data_type.pbenum.dart' as $1;
import 'file_info.pb.dart' as $0;

/// 上传文件数据
/// 第一个包编号为0，包含文件信息等信息，最后一个包块编号为0, 即从0开始，到0结束
/// 第一个包和最后一个包不包含文件数据，作为传输标记用，用于建立连接等操作
/// 传输包不包含文件信息等信息，只包含数据块的必要信息
/// 最终路径为：/{specs_id}/{data_id}/{stage}/{version}/{sub_path}/{file_name}
class UploadFileToVersionRequest extends $pb.GeneratedMessage {
  factory UploadFileToVersionRequest({
    $core.String? specsId,
    $fixnum.Int64? totalChunks,
    $fixnum.Int64? currentChunkIndex,
    $core.List<$core.int>? chunk,
    $0.FileInfo? fileInfo,
    $core.String? chunkMd5,
    $core.String? stage,
    $core.String? version,
    $core.String? dataId,
    $1.DataType? dataType,
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
    if (dataType != null) {
      $result.dataType = dataType;
    }
    if (subPath != null) {
      $result.subPath = subPath;
    }
    return $result;
  }
  UploadFileToVersionRequest._() : super();
  factory UploadFileToVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFileToVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadFileToVersionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'specsId')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'totalChunks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'currentChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'chunk', $pb.PbFieldType.OY)
    ..aOM<$0.FileInfo>(5, _omitFieldNames ? '' : 'fileInfo', subBuilder: $0.FileInfo.create)
    ..aOS(6, _omitFieldNames ? '' : 'chunkMd5')
    ..aOS(8, _omitFieldNames ? '' : 'stage')
    ..aOS(9, _omitFieldNames ? '' : 'version')
    ..aOS(10, _omitFieldNames ? '' : 'dataId')
    ..e<$1.DataType>(11, _omitFieldNames ? '' : 'dataType', $pb.PbFieldType.OE, defaultOrMaker: $1.DataType.FileData, valueOf: $1.DataType.valueOf, enumValues: $1.DataType.values)
    ..aOS(12, _omitFieldNames ? '' : 'subPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFileToVersionRequest clone() => UploadFileToVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFileToVersionRequest copyWith(void Function(UploadFileToVersionRequest) updates) => super.copyWith((message) => updates(message as UploadFileToVersionRequest)) as UploadFileToVersionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadFileToVersionRequest create() => UploadFileToVersionRequest._();
  UploadFileToVersionRequest createEmptyInstance() => create();
  static $pb.PbList<UploadFileToVersionRequest> createRepeated() => $pb.PbList<UploadFileToVersionRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadFileToVersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadFileToVersionRequest>(create);
  static UploadFileToVersionRequest? _defaultInstance;

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

  /// 阶段名，如：开发，测试，生产
  @$pb.TagNumber(8)
  $core.String get stage => $_getSZ(6);
  @$pb.TagNumber(8)
  set stage($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasStage() => $_has(6);
  @$pb.TagNumber(8)
  void clearStage() => clearField(8);

  /// 版本名，如：v01
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

  @$pb.TagNumber(11)
  $1.DataType get dataType => $_getN(9);
  @$pb.TagNumber(11)
  set dataType($1.DataType v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasDataType() => $_has(9);
  @$pb.TagNumber(11)
  void clearDataType() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get subPath => $_getSZ(10);
  @$pb.TagNumber(12)
  set subPath($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasSubPath() => $_has(10);
  @$pb.TagNumber(12)
  void clearSubPath() => clearField(12);
}

/// 下一个包块编号
class UploadFileToVersionResponse extends $pb.GeneratedMessage {
  factory UploadFileToVersionResponse({
    $fixnum.Int64? nextChunkIndex,
  }) {
    final $result = create();
    if (nextChunkIndex != null) {
      $result.nextChunkIndex = nextChunkIndex;
    }
    return $result;
  }
  UploadFileToVersionResponse._() : super();
  factory UploadFileToVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFileToVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadFileToVersionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'nextChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFileToVersionResponse clone() => UploadFileToVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFileToVersionResponse copyWith(void Function(UploadFileToVersionResponse) updates) => super.copyWith((message) => updates(message as UploadFileToVersionResponse)) as UploadFileToVersionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadFileToVersionResponse create() => UploadFileToVersionResponse._();
  UploadFileToVersionResponse createEmptyInstance() => create();
  static $pb.PbList<UploadFileToVersionResponse> createRepeated() => $pb.PbList<UploadFileToVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadFileToVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadFileToVersionResponse>(create);
  static UploadFileToVersionResponse? _defaultInstance;

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
class DownloadFileFromVersionRequest extends $pb.GeneratedMessage {
  factory DownloadFileFromVersionRequest({
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
  DownloadFileFromVersionRequest._() : super();
  factory DownloadFileFromVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadFileFromVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DownloadFileFromVersionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
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
  DownloadFileFromVersionRequest clone() => DownloadFileFromVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DownloadFileFromVersionRequest copyWith(void Function(DownloadFileFromVersionRequest) updates) => super.copyWith((message) => updates(message as DownloadFileFromVersionRequest)) as DownloadFileFromVersionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DownloadFileFromVersionRequest create() => DownloadFileFromVersionRequest._();
  DownloadFileFromVersionRequest createEmptyInstance() => create();
  static $pb.PbList<DownloadFileFromVersionRequest> createRepeated() => $pb.PbList<DownloadFileFromVersionRequest>();
  @$core.pragma('dart2js:noInline')
  static DownloadFileFromVersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DownloadFileFromVersionRequest>(create);
  static DownloadFileFromVersionRequest? _defaultInstance;

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
class DownloadFileFromVersionResponse extends $pb.GeneratedMessage {
  factory DownloadFileFromVersionResponse({
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
  DownloadFileFromVersionResponse._() : super();
  factory DownloadFileFromVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadFileFromVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DownloadFileFromVersionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
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
  DownloadFileFromVersionResponse clone() => DownloadFileFromVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DownloadFileFromVersionResponse copyWith(void Function(DownloadFileFromVersionResponse) updates) => super.copyWith((message) => updates(message as DownloadFileFromVersionResponse)) as DownloadFileFromVersionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DownloadFileFromVersionResponse create() => DownloadFileFromVersionResponse._();
  DownloadFileFromVersionResponse createEmptyInstance() => create();
  static $pb.PbList<DownloadFileFromVersionResponse> createRepeated() => $pb.PbList<DownloadFileFromVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static DownloadFileFromVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DownloadFileFromVersionResponse>(create);
  static DownloadFileFromVersionResponse? _defaultInstance;

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
