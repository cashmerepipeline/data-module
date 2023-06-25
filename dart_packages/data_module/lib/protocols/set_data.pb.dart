///
//  Generated code. Do not modify.
//  source: set_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'set_data_info.pb.dart' as $0;
import 'file_info.pb.dart' as $1;

class GetSetDataInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSetDataInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  GetSetDataInfoRequest._() : super();
  factory GetSetDataInfoRequest({
    $core.String? dataId,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    return _result;
  }
  factory GetSetDataInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSetDataInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSetDataInfoRequest clone() => GetSetDataInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSetDataInfoRequest copyWith(void Function(GetSetDataInfoRequest) updates) => super.copyWith((message) => updates(message as GetSetDataInfoRequest)) as GetSetDataInfoRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSetDataInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOM<$0.SetDataInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataInfo', subBuilder: $0.SetDataInfo.create)
    ..hasRequiredFields = false
  ;

  GetSetDataInfoResponse._() : super();
  factory GetSetDataInfoResponse({
    $0.SetDataInfo? dataInfo,
  }) {
    final _result = create();
    if (dataInfo != null) {
      _result.dataInfo = dataInfo;
    }
    return _result;
  }
  factory GetSetDataInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSetDataInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSetDataInfoResponse clone() => GetSetDataInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSetDataInfoResponse copyWith(void Function(GetSetDataInfoResponse) updates) => super.copyWith((message) => updates(message as GetSetDataInfoResponse)) as GetSetDataInfoResponse; // ignore: deprecated_member_use
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

class SetDataUploadFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetDataUploadFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalChunks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunk', $pb.PbFieldType.OY)
    ..aOM<$1.FileInfo>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileInfo', subBuilder: $1.FileInfo.create)
    ..hasRequiredFields = false
  ;

  SetDataUploadFileRequest._() : super();
  factory SetDataUploadFileRequest({
    $core.String? dataId,
    $fixnum.Int64? totalChunks,
    $fixnum.Int64? currentChunkIndex,
    $core.List<$core.int>? chunk,
    $1.FileInfo? fileInfo,
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
    return _result;
  }
  factory SetDataUploadFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataUploadFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataUploadFileRequest clone() => SetDataUploadFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataUploadFileRequest copyWith(void Function(SetDataUploadFileRequest) updates) => super.copyWith((message) => updates(message as SetDataUploadFileRequest)) as SetDataUploadFileRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetDataUploadFileResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  SetDataUploadFileResponse._() : super();
  factory SetDataUploadFileResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory SetDataUploadFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataUploadFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataUploadFileResponse clone() => SetDataUploadFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataUploadFileResponse copyWith(void Function(SetDataUploadFileResponse) updates) => super.copyWith((message) => updates(message as SetDataUploadFileResponse)) as SetDataUploadFileResponse; // ignore: deprecated_member_use
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

class SetDataUploadFilesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetDataUploadFilesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentTotalChunks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentChunkIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunk', $pb.PbFieldType.OY)
    ..pc<$1.FileInfo>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileInfo', $pb.PbFieldType.PM, subBuilder: $1.FileInfo.create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentMd5')
    ..hasRequiredFields = false
  ;

  SetDataUploadFilesRequest._() : super();
  factory SetDataUploadFilesRequest({
    $core.String? dataId,
    $fixnum.Int64? currentTotalChunks,
    $fixnum.Int64? currentChunkIndex,
    $core.List<$core.int>? chunk,
    $core.Iterable<$1.FileInfo>? fileInfo,
    $core.String? currentMd5,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    if (currentTotalChunks != null) {
      _result.currentTotalChunks = currentTotalChunks;
    }
    if (currentChunkIndex != null) {
      _result.currentChunkIndex = currentChunkIndex;
    }
    if (chunk != null) {
      _result.chunk = chunk;
    }
    if (fileInfo != null) {
      _result.fileInfo.addAll(fileInfo);
    }
    if (currentMd5 != null) {
      _result.currentMd5 = currentMd5;
    }
    return _result;
  }
  factory SetDataUploadFilesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataUploadFilesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataUploadFilesRequest clone() => SetDataUploadFilesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataUploadFilesRequest copyWith(void Function(SetDataUploadFilesRequest) updates) => super.copyWith((message) => updates(message as SetDataUploadFilesRequest)) as SetDataUploadFilesRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetDataUploadFilesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  SetDataUploadFilesResponse._() : super();
  factory SetDataUploadFilesResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory SetDataUploadFilesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataUploadFilesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataUploadFilesResponse clone() => SetDataUploadFilesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataUploadFilesResponse copyWith(void Function(SetDataUploadFilesResponse) updates) => super.copyWith((message) => updates(message as SetDataUploadFilesResponse)) as SetDataUploadFilesResponse; // ignore: deprecated_member_use
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

class SetDataDownloadSetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetDataDownloadSetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  SetDataDownloadSetRequest._() : super();
  factory SetDataDownloadSetRequest({
    $core.String? dataId,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    return _result;
  }
  factory SetDataDownloadSetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataDownloadSetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataDownloadSetRequest clone() => SetDataDownloadSetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataDownloadSetRequest copyWith(void Function(SetDataDownloadSetRequest) updates) => super.copyWith((message) => updates(message as SetDataDownloadSetRequest)) as SetDataDownloadSetRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetDataDownloadSetResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setName')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileCounts', $pb.PbFieldType.OU3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentFile')
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalChancks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentChunck', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunck', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SetDataDownloadSetResponse._() : super();
  factory SetDataDownloadSetResponse({
    $core.String? dataId,
    $core.String? setName,
    $core.int? fileCounts,
    $core.String? currentFile,
    $fixnum.Int64? totalChancks,
    $core.int? currentChunck,
    $core.List<$core.int>? chunck,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    if (setName != null) {
      _result.setName = setName;
    }
    if (fileCounts != null) {
      _result.fileCounts = fileCounts;
    }
    if (currentFile != null) {
      _result.currentFile = currentFile;
    }
    if (totalChancks != null) {
      _result.totalChancks = totalChancks;
    }
    if (currentChunck != null) {
      _result.currentChunck = currentChunck;
    }
    if (chunck != null) {
      _result.chunck = chunck;
    }
    return _result;
  }
  factory SetDataDownloadSetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataDownloadSetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataDownloadSetResponse clone() => SetDataDownloadSetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataDownloadSetResponse copyWith(void Function(SetDataDownloadSetResponse) updates) => super.copyWith((message) => updates(message as SetDataDownloadSetResponse)) as SetDataDownloadSetResponse; // ignore: deprecated_member_use
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

