//
//  Generated code. Do not modify.
//  source: set_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'file_info.pb.dart' as $1;
import 'set_data_info.pb.dart' as $0;

/// 取得数据集合信息
class GetSetDataInfoRequest extends $pb.GeneratedMessage {
  factory GetSetDataInfoRequest({
    $core.String? dataId,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  GetSetDataInfoRequest._() : super();
  factory GetSetDataInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSetDataInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSetDataInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSetDataInfoRequest clone() => GetSetDataInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSetDataInfoRequest copyWith(void Function(GetSetDataInfoRequest) updates) => super.copyWith((message) => updates(message as GetSetDataInfoRequest)) as GetSetDataInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSetDataInfoRequest create() => GetSetDataInfoRequest._();
  GetSetDataInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetSetDataInfoRequest> createRepeated() => $pb.PbList<GetSetDataInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSetDataInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSetDataInfoRequest>(create);
  static GetSetDataInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);
}

class GetSetDataInfoResponse extends $pb.GeneratedMessage {
  factory GetSetDataInfoResponse({
    $0.SetDataInfo? dataInfo,
  }) {
    final $result = create();
    if (dataInfo != null) {
      $result.dataInfo = dataInfo;
    }
    return $result;
  }
  GetSetDataInfoResponse._() : super();
  factory GetSetDataInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSetDataInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSetDataInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOM<$0.SetDataInfo>(1, _omitFieldNames ? '' : 'dataInfo', subBuilder: $0.SetDataInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSetDataInfoResponse clone() => GetSetDataInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSetDataInfoResponse copyWith(void Function(GetSetDataInfoResponse) updates) => super.copyWith((message) => updates(message as GetSetDataInfoResponse)) as GetSetDataInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSetDataInfoResponse create() => GetSetDataInfoResponse._();
  GetSetDataInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetSetDataInfoResponse> createRepeated() => $pb.PbList<GetSetDataInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSetDataInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSetDataInfoResponse>(create);
  static GetSetDataInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SetDataInfo get dataInfo => $_getN(0);
  @$pb.TagNumber(1)
  set dataInfo($0.SetDataInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataInfo() => clearField(1);
  @$pb.TagNumber(1)
  $0.SetDataInfo ensureDataInfo() => $_ensure(0);
}

/// 上传单个文件到集合
class SetDataUploadFileRequest extends $pb.GeneratedMessage {
  factory SetDataUploadFileRequest({
    $core.String? dataId,
    $fixnum.Int64? totalChunks,
    $fixnum.Int64? currentChunkIndex,
    $core.List<$core.int>? chunk,
    $1.FileInfo? fileInfo,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
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
    return $result;
  }
  SetDataUploadFileRequest._() : super();
  factory SetDataUploadFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataUploadFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetDataUploadFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'totalChunks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'currentChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'chunk', $pb.PbFieldType.OY)
    ..aOM<$1.FileInfo>(5, _omitFieldNames ? '' : 'fileInfo', subBuilder: $1.FileInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataUploadFileRequest clone() => SetDataUploadFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataUploadFileRequest copyWith(void Function(SetDataUploadFileRequest) updates) => super.copyWith((message) => updates(message as SetDataUploadFileRequest)) as SetDataUploadFileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDataUploadFileRequest create() => SetDataUploadFileRequest._();
  SetDataUploadFileRequest createEmptyInstance() => create();
  static $pb.PbList<SetDataUploadFileRequest> createRepeated() => $pb.PbList<SetDataUploadFileRequest>();
  @$core.pragma('dart2js:noInline')
  static SetDataUploadFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDataUploadFileRequest>(create);
  static SetDataUploadFileRequest? _defaultInstance;

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
  $1.FileInfo get fileInfo => $_getN(4);
  @$pb.TagNumber(5)
  set fileInfo($1.FileInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFileInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearFileInfo() => clearField(5);
  @$pb.TagNumber(5)
  $1.FileInfo ensureFileInfo() => $_ensure(4);
}

class SetDataUploadFileResponse extends $pb.GeneratedMessage {
  factory SetDataUploadFileResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  SetDataUploadFileResponse._() : super();
  factory SetDataUploadFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataUploadFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetDataUploadFileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataUploadFileResponse clone() => SetDataUploadFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataUploadFileResponse copyWith(void Function(SetDataUploadFileResponse) updates) => super.copyWith((message) => updates(message as SetDataUploadFileResponse)) as SetDataUploadFileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDataUploadFileResponse create() => SetDataUploadFileResponse._();
  SetDataUploadFileResponse createEmptyInstance() => create();
  static $pb.PbList<SetDataUploadFileResponse> createRepeated() => $pb.PbList<SetDataUploadFileResponse>();
  @$core.pragma('dart2js:noInline')
  static SetDataUploadFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDataUploadFileResponse>(create);
  static SetDataUploadFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 上传多个文件到集合, 批量上传可能不是很需要
class SetDataUploadFilesRequest extends $pb.GeneratedMessage {
  factory SetDataUploadFilesRequest({
    $core.String? dataId,
    $fixnum.Int64? currentTotalChunks,
    $fixnum.Int64? currentChunkIndex,
    $core.List<$core.int>? chunk,
    $core.Iterable<$1.FileInfo>? fileInfo,
    $core.String? currentMd5,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    if (currentTotalChunks != null) {
      $result.currentTotalChunks = currentTotalChunks;
    }
    if (currentChunkIndex != null) {
      $result.currentChunkIndex = currentChunkIndex;
    }
    if (chunk != null) {
      $result.chunk = chunk;
    }
    if (fileInfo != null) {
      $result.fileInfo.addAll(fileInfo);
    }
    if (currentMd5 != null) {
      $result.currentMd5 = currentMd5;
    }
    return $result;
  }
  SetDataUploadFilesRequest._() : super();
  factory SetDataUploadFilesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataUploadFilesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetDataUploadFilesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'currentTotalChunks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'currentChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'chunk', $pb.PbFieldType.OY)
    ..pc<$1.FileInfo>(5, _omitFieldNames ? '' : 'fileInfo', $pb.PbFieldType.PM, subBuilder: $1.FileInfo.create)
    ..aOS(6, _omitFieldNames ? '' : 'currentMd5')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataUploadFilesRequest clone() => SetDataUploadFilesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataUploadFilesRequest copyWith(void Function(SetDataUploadFilesRequest) updates) => super.copyWith((message) => updates(message as SetDataUploadFilesRequest)) as SetDataUploadFilesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDataUploadFilesRequest create() => SetDataUploadFilesRequest._();
  SetDataUploadFilesRequest createEmptyInstance() => create();
  static $pb.PbList<SetDataUploadFilesRequest> createRepeated() => $pb.PbList<SetDataUploadFilesRequest>();
  @$core.pragma('dart2js:noInline')
  static SetDataUploadFilesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDataUploadFilesRequest>(create);
  static SetDataUploadFilesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get currentTotalChunks => $_getI64(1);
  @$pb.TagNumber(2)
  set currentTotalChunks($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentTotalChunks() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentTotalChunks() => clearField(2);

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
  $core.List<$1.FileInfo> get fileInfo => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get currentMd5 => $_getSZ(5);
  @$pb.TagNumber(6)
  set currentMd5($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrentMd5() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentMd5() => clearField(6);
}

class SetDataUploadFilesResponse extends $pb.GeneratedMessage {
  factory SetDataUploadFilesResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  SetDataUploadFilesResponse._() : super();
  factory SetDataUploadFilesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataUploadFilesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetDataUploadFilesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataUploadFilesResponse clone() => SetDataUploadFilesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataUploadFilesResponse copyWith(void Function(SetDataUploadFilesResponse) updates) => super.copyWith((message) => updates(message as SetDataUploadFilesResponse)) as SetDataUploadFilesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDataUploadFilesResponse create() => SetDataUploadFilesResponse._();
  SetDataUploadFilesResponse createEmptyInstance() => create();
  static $pb.PbList<SetDataUploadFilesResponse> createRepeated() => $pb.PbList<SetDataUploadFilesResponse>();
  @$core.pragma('dart2js:noInline')
  static SetDataUploadFilesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDataUploadFilesResponse>(create);
  static SetDataUploadFilesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 下载文件集合
class SetDataDownloadSetRequest extends $pb.GeneratedMessage {
  factory SetDataDownloadSetRequest({
    $core.String? dataId,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  SetDataDownloadSetRequest._() : super();
  factory SetDataDownloadSetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataDownloadSetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetDataDownloadSetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataDownloadSetRequest clone() => SetDataDownloadSetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataDownloadSetRequest copyWith(void Function(SetDataDownloadSetRequest) updates) => super.copyWith((message) => updates(message as SetDataDownloadSetRequest)) as SetDataDownloadSetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDataDownloadSetRequest create() => SetDataDownloadSetRequest._();
  SetDataDownloadSetRequest createEmptyInstance() => create();
  static $pb.PbList<SetDataDownloadSetRequest> createRepeated() => $pb.PbList<SetDataDownloadSetRequest>();
  @$core.pragma('dart2js:noInline')
  static SetDataDownloadSetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDataDownloadSetRequest>(create);
  static SetDataDownloadSetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);
}

class SetDataDownloadSetResponse extends $pb.GeneratedMessage {
  factory SetDataDownloadSetResponse({
    $core.String? dataId,
    $core.String? setName,
    $core.int? fileCounts,
    $core.String? currentFile,
    $fixnum.Int64? totalChancks,
    $core.int? currentChunck,
    $core.List<$core.int>? chunck,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    if (setName != null) {
      $result.setName = setName;
    }
    if (fileCounts != null) {
      $result.fileCounts = fileCounts;
    }
    if (currentFile != null) {
      $result.currentFile = currentFile;
    }
    if (totalChancks != null) {
      $result.totalChancks = totalChancks;
    }
    if (currentChunck != null) {
      $result.currentChunck = currentChunck;
    }
    if (chunck != null) {
      $result.chunck = chunck;
    }
    return $result;
  }
  SetDataDownloadSetResponse._() : super();
  factory SetDataDownloadSetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataDownloadSetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetDataDownloadSetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..aOS(2, _omitFieldNames ? '' : 'setName')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'fileCounts', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'currentFile')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'totalChancks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'currentChunck', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'chunck', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataDownloadSetResponse clone() => SetDataDownloadSetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataDownloadSetResponse copyWith(void Function(SetDataDownloadSetResponse) updates) => super.copyWith((message) => updates(message as SetDataDownloadSetResponse)) as SetDataDownloadSetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDataDownloadSetResponse create() => SetDataDownloadSetResponse._();
  SetDataDownloadSetResponse createEmptyInstance() => create();
  static $pb.PbList<SetDataDownloadSetResponse> createRepeated() => $pb.PbList<SetDataDownloadSetResponse>();
  @$core.pragma('dart2js:noInline')
  static SetDataDownloadSetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDataDownloadSetResponse>(create);
  static SetDataDownloadSetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get setName => $_getSZ(1);
  @$pb.TagNumber(2)
  set setName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get fileCounts => $_getIZ(2);
  @$pb.TagNumber(3)
  set fileCounts($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileCounts() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileCounts() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get currentFile => $_getSZ(3);
  @$pb.TagNumber(4)
  set currentFile($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrentFile() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentFile() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get totalChancks => $_getI64(4);
  @$pb.TagNumber(5)
  set totalChancks($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalChancks() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalChancks() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get currentChunck => $_getIZ(5);
  @$pb.TagNumber(6)
  set currentChunck($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrentChunck() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentChunck() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get chunck => $_getN(6);
  @$pb.TagNumber(7)
  set chunck($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChunck() => $_has(6);
  @$pb.TagNumber(7)
  void clearChunck() => clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
