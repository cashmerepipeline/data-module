//
//  Generated code. Do not modify.
//  source: version.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'file_info.pb.dart' as $0;

/// 版本包含一个完整的访问数据路径
class Version extends $pb.GeneratedMessage {
  factory Version({
    $core.String? manageId,
    $core.String? specsId,
    $core.String? dataId,
    $core.String? stage,
    $core.String? version,
    $core.Map<$core.String, $0.FileInfo>? files,
  }) {
    final $result = create();
    if (manageId != null) {
      $result.manageId = manageId;
    }
    if (specsId != null) {
      $result.specsId = specsId;
    }
    if (dataId != null) {
      $result.dataId = dataId;
    }
    if (stage != null) {
      $result.stage = stage;
    }
    if (version != null) {
      $result.version = version;
    }
    if (files != null) {
      $result.files.addAll(files);
    }
    return $result;
  }
  Version._() : super();
  factory Version.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Version.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Version', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'manageId')
    ..aOS(2, _omitFieldNames ? '' : 'specsId')
    ..aOS(3, _omitFieldNames ? '' : 'dataId')
    ..aOS(4, _omitFieldNames ? '' : 'stage')
    ..aOS(5, _omitFieldNames ? '' : 'version')
    ..m<$core.String, $0.FileInfo>(6, _omitFieldNames ? '' : 'files', entryClassName: 'Version.FilesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.FileInfo.create, valueDefaultOrMaker: $0.FileInfo.getDefault, packageName: const $pb.PackageName('data.cashmere'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Version clone() => Version()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Version copyWith(void Function(Version) updates) => super.copyWith((message) => updates(message as Version)) as Version;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Version create() => Version._();
  Version createEmptyInstance() => create();
  static $pb.PbList<Version> createRepeated() => $pb.PbList<Version>();
  @$core.pragma('dart2js:noInline')
  static Version getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version>(create);
  static Version? _defaultInstance;

  /// 目标管理编号
  @$pb.TagNumber(1)
  $core.String get manageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set manageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearManageId() => clearField(1);

  /// 规格管理编号
  @$pb.TagNumber(2)
  $core.String get specsId => $_getSZ(1);
  @$pb.TagNumber(2)
  set specsId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpecsId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpecsId() => clearField(2);

  /// 数据集编号
  @$pb.TagNumber(3)
  $core.String get dataId => $_getSZ(2);
  @$pb.TagNumber(3)
  set dataId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataId() => clearField(3);

  /// 阶段
  @$pb.TagNumber(4)
  $core.String get stage => $_getSZ(3);
  @$pb.TagNumber(4)
  set stage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStage() => $_has(3);
  @$pb.TagNumber(4)
  void clearStage() => clearField(4);

  /// 版本
  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => clearField(5);

  /// protobuf不支持嵌套repeated，所以使用 “,” 分隔的字符串, 形式为["sub_dir, ...,file_name"]
  /// 路径不允许使用相对路径符号"."和".."
  /// 文件集为多个文件列表
  /// 文件序列为规则: ["base_name, start, end, padding, extension"]
  /// bson document格式，包含有文件信息
  @$pb.TagNumber(6)
  $core.Map<$core.String, $0.FileInfo> get files => $_getMap(5);
}

/// 取得规格版本表
class ListSpecsVersionsRequest extends $pb.GeneratedMessage {
  factory ListSpecsVersionsRequest({
    $core.String? specsId,
  }) {
    final $result = create();
    if (specsId != null) {
      $result.specsId = specsId;
    }
    return $result;
  }
  ListSpecsVersionsRequest._() : super();
  factory ListSpecsVersionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSpecsVersionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSpecsVersionsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'specsId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSpecsVersionsRequest clone() => ListSpecsVersionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSpecsVersionsRequest copyWith(void Function(ListSpecsVersionsRequest) updates) => super.copyWith((message) => updates(message as ListSpecsVersionsRequest)) as ListSpecsVersionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpecsVersionsRequest create() => ListSpecsVersionsRequest._();
  ListSpecsVersionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSpecsVersionsRequest> createRepeated() => $pb.PbList<ListSpecsVersionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSpecsVersionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSpecsVersionsRequest>(create);
  static ListSpecsVersionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get specsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set specsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpecsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecsId() => clearField(1);
}

class ListSpecsVersionsResponse extends $pb.GeneratedMessage {
  factory ListSpecsVersionsResponse({
    $core.Iterable<$core.List<$core.int>>? versions,
  }) {
    final $result = create();
    if (versions != null) {
      $result.versions.addAll(versions);
    }
    return $result;
  }
  ListSpecsVersionsResponse._() : super();
  factory ListSpecsVersionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSpecsVersionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSpecsVersionsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'versions', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSpecsVersionsResponse clone() => ListSpecsVersionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSpecsVersionsResponse copyWith(void Function(ListSpecsVersionsResponse) updates) => super.copyWith((message) => updates(message as ListSpecsVersionsResponse)) as ListSpecsVersionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpecsVersionsResponse create() => ListSpecsVersionsResponse._();
  ListSpecsVersionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSpecsVersionsResponse> createRepeated() => $pb.PbList<ListSpecsVersionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSpecsVersionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSpecsVersionsResponse>(create);
  static ListSpecsVersionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get versions => $_getList(0);
}

/// 取得规格版本表
class ListDataVersionsRequest extends $pb.GeneratedMessage {
  factory ListDataVersionsRequest({
    $core.String? specsId,
    $core.String? dataId,
  }) {
    final $result = create();
    if (specsId != null) {
      $result.specsId = specsId;
    }
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  ListDataVersionsRequest._() : super();
  factory ListDataVersionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDataVersionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListDataVersionsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'specsId')
    ..aOS(3, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDataVersionsRequest clone() => ListDataVersionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDataVersionsRequest copyWith(void Function(ListDataVersionsRequest) updates) => super.copyWith((message) => updates(message as ListDataVersionsRequest)) as ListDataVersionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDataVersionsRequest create() => ListDataVersionsRequest._();
  ListDataVersionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListDataVersionsRequest> createRepeated() => $pb.PbList<ListDataVersionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDataVersionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDataVersionsRequest>(create);
  static ListDataVersionsRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get specsId => $_getSZ(0);
  @$pb.TagNumber(2)
  set specsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpecsId() => $_has(0);
  @$pb.TagNumber(2)
  void clearSpecsId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dataId => $_getSZ(1);
  @$pb.TagNumber(3)
  set dataId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataId() => $_has(1);
  @$pb.TagNumber(3)
  void clearDataId() => clearField(3);
}

class ListDataVersionsResponse extends $pb.GeneratedMessage {
  factory ListDataVersionsResponse({
    $core.Iterable<$core.List<$core.int>>? versions,
  }) {
    final $result = create();
    if (versions != null) {
      $result.versions.addAll(versions);
    }
    return $result;
  }
  ListDataVersionsResponse._() : super();
  factory ListDataVersionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDataVersionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListDataVersionsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'versions', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDataVersionsResponse clone() => ListDataVersionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDataVersionsResponse copyWith(void Function(ListDataVersionsResponse) updates) => super.copyWith((message) => updates(message as ListDataVersionsResponse)) as ListDataVersionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDataVersionsResponse create() => ListDataVersionsResponse._();
  ListDataVersionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListDataVersionsResponse> createRepeated() => $pb.PbList<ListDataVersionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDataVersionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDataVersionsResponse>(create);
  static ListDataVersionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get versions => $_getList(0);
}

/// 添加数据版本到阶段
class AddStageVersionRequest extends $pb.GeneratedMessage {
  factory AddStageVersionRequest({
    $core.String? stageId,
    $core.String? version,
  }) {
    final $result = create();
    if (stageId != null) {
      $result.stageId = stageId;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  AddStageVersionRequest._() : super();
  factory AddStageVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddStageVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddStageVersionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stageId')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddStageVersionRequest clone() => AddStageVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddStageVersionRequest copyWith(void Function(AddStageVersionRequest) updates) => super.copyWith((message) => updates(message as AddStageVersionRequest)) as AddStageVersionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddStageVersionRequest create() => AddStageVersionRequest._();
  AddStageVersionRequest createEmptyInstance() => create();
  static $pb.PbList<AddStageVersionRequest> createRepeated() => $pb.PbList<AddStageVersionRequest>();
  @$core.pragma('dart2js:noInline')
  static AddStageVersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddStageVersionRequest>(create);
  static AddStageVersionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStageId() => clearField(1);

  /// 版本一般有具体的含义，不只是一个数字，比如"v001"
  /// 将作为实体的id，还将作为阶段的路径使用，不能重复
  /// 阶段的字符集需要注意软件支持的字符集，比如Maya对中文支持友好
  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);
}

class AddStageVersionResponse extends $pb.GeneratedMessage {
  factory AddStageVersionResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  AddStageVersionResponse._() : super();
  factory AddStageVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddStageVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddStageVersionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddStageVersionResponse clone() => AddStageVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddStageVersionResponse copyWith(void Function(AddStageVersionResponse) updates) => super.copyWith((message) => updates(message as AddStageVersionResponse)) as AddStageVersionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddStageVersionResponse create() => AddStageVersionResponse._();
  AddStageVersionResponse createEmptyInstance() => create();
  static $pb.PbList<AddStageVersionResponse> createRepeated() => $pb.PbList<AddStageVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static AddStageVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddStageVersionResponse>(create);
  static AddStageVersionResponse? _defaultInstance;

  /// 成功返回 "ok"
  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 取得数据阶段版本表
class ListStageVersionsRequest extends $pb.GeneratedMessage {
  factory ListStageVersionsRequest({
    $core.String? stageId,
  }) {
    final $result = create();
    if (stageId != null) {
      $result.stageId = stageId;
    }
    return $result;
  }
  ListStageVersionsRequest._() : super();
  factory ListStageVersionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStageVersionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStageVersionsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stageId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStageVersionsRequest clone() => ListStageVersionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStageVersionsRequest copyWith(void Function(ListStageVersionsRequest) updates) => super.copyWith((message) => updates(message as ListStageVersionsRequest)) as ListStageVersionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStageVersionsRequest create() => ListStageVersionsRequest._();
  ListStageVersionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListStageVersionsRequest> createRepeated() => $pb.PbList<ListStageVersionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListStageVersionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStageVersionsRequest>(create);
  static ListStageVersionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStageId() => clearField(1);
}

class ListStageVersionsResponse extends $pb.GeneratedMessage {
  factory ListStageVersionsResponse({
    $core.Iterable<$core.List<$core.int>>? versions,
  }) {
    final $result = create();
    if (versions != null) {
      $result.versions.addAll(versions);
    }
    return $result;
  }
  ListStageVersionsResponse._() : super();
  factory ListStageVersionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStageVersionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStageVersionsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'versions', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStageVersionsResponse clone() => ListStageVersionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStageVersionsResponse copyWith(void Function(ListStageVersionsResponse) updates) => super.copyWith((message) => updates(message as ListStageVersionsResponse)) as ListStageVersionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStageVersionsResponse create() => ListStageVersionsResponse._();
  ListStageVersionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListStageVersionsResponse> createRepeated() => $pb.PbList<ListStageVersionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStageVersionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStageVersionsResponse>(create);
  static ListStageVersionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get versions => $_getList(0);
}

/// 改变阶段文件连接
class SetStageCurrentVersionRequest extends $pb.GeneratedMessage {
  factory SetStageCurrentVersionRequest({
    $core.String? stageId,
    $core.String? targetVersion,
  }) {
    final $result = create();
    if (stageId != null) {
      $result.stageId = stageId;
    }
    if (targetVersion != null) {
      $result.targetVersion = targetVersion;
    }
    return $result;
  }
  SetStageCurrentVersionRequest._() : super();
  factory SetStageCurrentVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetStageCurrentVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetStageCurrentVersionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stageId')
    ..aOS(3, _omitFieldNames ? '' : 'targetVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetStageCurrentVersionRequest clone() => SetStageCurrentVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetStageCurrentVersionRequest copyWith(void Function(SetStageCurrentVersionRequest) updates) => super.copyWith((message) => updates(message as SetStageCurrentVersionRequest)) as SetStageCurrentVersionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetStageCurrentVersionRequest create() => SetStageCurrentVersionRequest._();
  SetStageCurrentVersionRequest createEmptyInstance() => create();
  static $pb.PbList<SetStageCurrentVersionRequest> createRepeated() => $pb.PbList<SetStageCurrentVersionRequest>();
  @$core.pragma('dart2js:noInline')
  static SetStageCurrentVersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetStageCurrentVersionRequest>(create);
  static SetStageCurrentVersionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStageId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get targetVersion => $_getSZ(1);
  @$pb.TagNumber(3)
  set targetVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetVersion() => $_has(1);
  @$pb.TagNumber(3)
  void clearTargetVersion() => clearField(3);
}

class SetStageCurrentVersionResponse extends $pb.GeneratedMessage {
  factory SetStageCurrentVersionResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  SetStageCurrentVersionResponse._() : super();
  factory SetStageCurrentVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetStageCurrentVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetStageCurrentVersionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetStageCurrentVersionResponse clone() => SetStageCurrentVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetStageCurrentVersionResponse copyWith(void Function(SetStageCurrentVersionResponse) updates) => super.copyWith((message) => updates(message as SetStageCurrentVersionResponse)) as SetStageCurrentVersionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetStageCurrentVersionResponse create() => SetStageCurrentVersionResponse._();
  SetStageCurrentVersionResponse createEmptyInstance() => create();
  static $pb.PbList<SetStageCurrentVersionResponse> createRepeated() => $pb.PbList<SetStageCurrentVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static SetStageCurrentVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetStageCurrentVersionResponse>(create);
  static SetStageCurrentVersionResponse? _defaultInstance;

  /// 成功返回 当前版本
  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 删除数据版本
class RemoveStageVersionRequest extends $pb.GeneratedMessage {
  factory RemoveStageVersionRequest({
    $core.String? stageId,
    $core.String? version,
  }) {
    final $result = create();
    if (stageId != null) {
      $result.stageId = stageId;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  RemoveStageVersionRequest._() : super();
  factory RemoveStageVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveStageVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveStageVersionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stageId')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveStageVersionRequest clone() => RemoveStageVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveStageVersionRequest copyWith(void Function(RemoveStageVersionRequest) updates) => super.copyWith((message) => updates(message as RemoveStageVersionRequest)) as RemoveStageVersionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveStageVersionRequest create() => RemoveStageVersionRequest._();
  RemoveStageVersionRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveStageVersionRequest> createRepeated() => $pb.PbList<RemoveStageVersionRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveStageVersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveStageVersionRequest>(create);
  static RemoveStageVersionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStageId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);
}

class RemoveStageVersionResponse extends $pb.GeneratedMessage {
  factory RemoveStageVersionResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  RemoveStageVersionResponse._() : super();
  factory RemoveStageVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveStageVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveStageVersionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveStageVersionResponse clone() => RemoveStageVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveStageVersionResponse copyWith(void Function(RemoveStageVersionResponse) updates) => super.copyWith((message) => updates(message as RemoveStageVersionResponse)) as RemoveStageVersionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveStageVersionResponse create() => RemoveStageVersionResponse._();
  RemoveStageVersionResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveStageVersionResponse> createRepeated() => $pb.PbList<RemoveStageVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveStageVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveStageVersionResponse>(create);
  static RemoveStageVersionResponse? _defaultInstance;

  /// 成功返回 "ok"
  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 添加文件到数据阶段，文件路径以版本路径为根，<version_root>/["sub_dir", ..., "file_name"]
/// 路径在使用时再拼接
class AddFileSetToVersionRequest extends $pb.GeneratedMessage {
  factory AddFileSetToVersionRequest({
    $core.String? stageId,
    $core.String? version,
    $core.String? dataPath,
  }) {
    final $result = create();
    if (stageId != null) {
      $result.stageId = stageId;
    }
    if (version != null) {
      $result.version = version;
    }
    if (dataPath != null) {
      $result.dataPath = dataPath;
    }
    return $result;
  }
  AddFileSetToVersionRequest._() : super();
  factory AddFileSetToVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileSetToVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddFileSetToVersionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stageId')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'dataPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileSetToVersionRequest clone() => AddFileSetToVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileSetToVersionRequest copyWith(void Function(AddFileSetToVersionRequest) updates) => super.copyWith((message) => updates(message as AddFileSetToVersionRequest)) as AddFileSetToVersionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddFileSetToVersionRequest create() => AddFileSetToVersionRequest._();
  AddFileSetToVersionRequest createEmptyInstance() => create();
  static $pb.PbList<AddFileSetToVersionRequest> createRepeated() => $pb.PbList<AddFileSetToVersionRequest>();
  @$core.pragma('dart2js:noInline')
  static AddFileSetToVersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFileSetToVersionRequest>(create);
  static AddFileSetToVersionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  /// 因为不支持嵌套repeated，所以使用“,”分隔的字符串, 形式为["sub_dir, ...,file_name"]
  @$pb.TagNumber(3)
  $core.String get dataPath => $_getSZ(2);
  @$pb.TagNumber(3)
  set dataPath($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataPath() => clearField(3);
}

class AddFileSetToVersionResponse extends $pb.GeneratedMessage {
  factory AddFileSetToVersionResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  AddFileSetToVersionResponse._() : super();
  factory AddFileSetToVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileSetToVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddFileSetToVersionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileSetToVersionResponse clone() => AddFileSetToVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileSetToVersionResponse copyWith(void Function(AddFileSetToVersionResponse) updates) => super.copyWith((message) => updates(message as AddFileSetToVersionResponse)) as AddFileSetToVersionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddFileSetToVersionResponse create() => AddFileSetToVersionResponse._();
  AddFileSetToVersionResponse createEmptyInstance() => create();
  static $pb.PbList<AddFileSetToVersionResponse> createRepeated() => $pb.PbList<AddFileSetToVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static AddFileSetToVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFileSetToVersionResponse>(create);
  static AddFileSetToVersionResponse? _defaultInstance;

  /// 成功返回 "ok"
  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 数据类型为文件序列时, 序列文件直接存储在版本目录下
/// 使用规则解析文件路径[base_name, start, end, padding, extension]，不记录所有文件的路径
/// 严格使用这个顺序，不使用类似{base_name: name, start: start, end: end, padding: padding, ext: ext, number_pos: [mid, end]}的格式
/// 文件、文件集、序列存储形式上一致，易于mongodb文件查询
class AddFileSequenceToVersionRequest extends $pb.GeneratedMessage {
  factory AddFileSequenceToVersionRequest({
    $core.String? stageId,
    $core.String? version,
    $core.String? dataPath,
  }) {
    final $result = create();
    if (stageId != null) {
      $result.stageId = stageId;
    }
    if (version != null) {
      $result.version = version;
    }
    if (dataPath != null) {
      $result.dataPath = dataPath;
    }
    return $result;
  }
  AddFileSequenceToVersionRequest._() : super();
  factory AddFileSequenceToVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileSequenceToVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddFileSequenceToVersionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stageId')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'dataPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileSequenceToVersionRequest clone() => AddFileSequenceToVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileSequenceToVersionRequest copyWith(void Function(AddFileSequenceToVersionRequest) updates) => super.copyWith((message) => updates(message as AddFileSequenceToVersionRequest)) as AddFileSequenceToVersionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddFileSequenceToVersionRequest create() => AddFileSequenceToVersionRequest._();
  AddFileSequenceToVersionRequest createEmptyInstance() => create();
  static $pb.PbList<AddFileSequenceToVersionRequest> createRepeated() => $pb.PbList<AddFileSequenceToVersionRequest>();
  @$core.pragma('dart2js:noInline')
  static AddFileSequenceToVersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFileSequenceToVersionRequest>(create);
  static AddFileSequenceToVersionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dataPath => $_getSZ(2);
  @$pb.TagNumber(3)
  set dataPath($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataPath() => clearField(3);
}

class AddFileSequenceToVersionResponse extends $pb.GeneratedMessage {
  factory AddFileSequenceToVersionResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  AddFileSequenceToVersionResponse._() : super();
  factory AddFileSequenceToVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileSequenceToVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddFileSequenceToVersionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileSequenceToVersionResponse clone() => AddFileSequenceToVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileSequenceToVersionResponse copyWith(void Function(AddFileSequenceToVersionResponse) updates) => super.copyWith((message) => updates(message as AddFileSequenceToVersionResponse)) as AddFileSequenceToVersionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddFileSequenceToVersionResponse create() => AddFileSequenceToVersionResponse._();
  AddFileSequenceToVersionResponse createEmptyInstance() => create();
  static $pb.PbList<AddFileSequenceToVersionResponse> createRepeated() => $pb.PbList<AddFileSequenceToVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static AddFileSequenceToVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFileSequenceToVersionResponse>(create);
  static AddFileSequenceToVersionResponse? _defaultInstance;

  /// 成功返回 "ok"
  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 从版本中移除多个文件，只支持文件、文件集， 不支持文件序列
class RemoveFilesFromVersionRequest extends $pb.GeneratedMessage {
  factory RemoveFilesFromVersionRequest({
    $core.String? stageId,
    $core.String? version,
    $core.Iterable<$core.String>? filePathes,
  }) {
    final $result = create();
    if (stageId != null) {
      $result.stageId = stageId;
    }
    if (version != null) {
      $result.version = version;
    }
    if (filePathes != null) {
      $result.filePathes.addAll(filePathes);
    }
    return $result;
  }
  RemoveFilesFromVersionRequest._() : super();
  factory RemoveFilesFromVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveFilesFromVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveFilesFromVersionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stageId')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..pPS(3, _omitFieldNames ? '' : 'filePathes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveFilesFromVersionRequest clone() => RemoveFilesFromVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveFilesFromVersionRequest copyWith(void Function(RemoveFilesFromVersionRequest) updates) => super.copyWith((message) => updates(message as RemoveFilesFromVersionRequest)) as RemoveFilesFromVersionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveFilesFromVersionRequest create() => RemoveFilesFromVersionRequest._();
  RemoveFilesFromVersionRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveFilesFromVersionRequest> createRepeated() => $pb.PbList<RemoveFilesFromVersionRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveFilesFromVersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveFilesFromVersionRequest>(create);
  static RemoveFilesFromVersionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get filePathes => $_getList(2);
}

class RemoveFilesFromVersionResponse extends $pb.GeneratedMessage {
  factory RemoveFilesFromVersionResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  RemoveFilesFromVersionResponse._() : super();
  factory RemoveFilesFromVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveFilesFromVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveFilesFromVersionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveFilesFromVersionResponse clone() => RemoveFilesFromVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveFilesFromVersionResponse copyWith(void Function(RemoveFilesFromVersionResponse) updates) => super.copyWith((message) => updates(message as RemoveFilesFromVersionResponse)) as RemoveFilesFromVersionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveFilesFromVersionResponse create() => RemoveFilesFromVersionResponse._();
  RemoveFilesFromVersionResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveFilesFromVersionResponse> createRepeated() => $pb.PbList<RemoveFilesFromVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveFilesFromVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveFilesFromVersionResponse>(create);
  static RemoveFilesFromVersionResponse? _defaultInstance;

  /// 成功返回被删除的文件路径
  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 列出版本文件目录下的文件和文件夹
class ListVersionFolderRequest extends $pb.GeneratedMessage {
  factory ListVersionFolderRequest({
    $core.String? stageId,
    $core.String? version,
  }) {
    final $result = create();
    if (stageId != null) {
      $result.stageId = stageId;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  ListVersionFolderRequest._() : super();
  factory ListVersionFolderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListVersionFolderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListVersionFolderRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stageId')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListVersionFolderRequest clone() => ListVersionFolderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListVersionFolderRequest copyWith(void Function(ListVersionFolderRequest) updates) => super.copyWith((message) => updates(message as ListVersionFolderRequest)) as ListVersionFolderRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListVersionFolderRequest create() => ListVersionFolderRequest._();
  ListVersionFolderRequest createEmptyInstance() => create();
  static $pb.PbList<ListVersionFolderRequest> createRepeated() => $pb.PbList<ListVersionFolderRequest>();
  @$core.pragma('dart2js:noInline')
  static ListVersionFolderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListVersionFolderRequest>(create);
  static ListVersionFolderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

class ListVersionFolderResponse extends $pb.GeneratedMessage {
  factory ListVersionFolderResponse({
    $core.Iterable<$core.String>? folders,
    $core.Iterable<$core.String>? files,
  }) {
    final $result = create();
    if (folders != null) {
      $result.folders.addAll(folders);
    }
    if (files != null) {
      $result.files.addAll(files);
    }
    return $result;
  }
  ListVersionFolderResponse._() : super();
  factory ListVersionFolderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListVersionFolderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListVersionFolderResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'folders')
    ..pPS(2, _omitFieldNames ? '' : 'files')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListVersionFolderResponse clone() => ListVersionFolderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListVersionFolderResponse copyWith(void Function(ListVersionFolderResponse) updates) => super.copyWith((message) => updates(message as ListVersionFolderResponse)) as ListVersionFolderResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListVersionFolderResponse create() => ListVersionFolderResponse._();
  ListVersionFolderResponse createEmptyInstance() => create();
  static $pb.PbList<ListVersionFolderResponse> createRepeated() => $pb.PbList<ListVersionFolderResponse>();
  @$core.pragma('dart2js:noInline')
  static ListVersionFolderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListVersionFolderResponse>(create);
  static ListVersionFolderResponse? _defaultInstance;

  /// 文件夹
  @$pb.TagNumber(1)
  $core.List<$core.String> get folders => $_getList(0);

  /// 文件
  @$pb.TagNumber(2)
  $core.List<$core.String> get files => $_getList(1);
}

/// 删除版本目录下的文件或文件夹，若文件或文件夹在版本文件列表中，否则返回，不做任何操作
/// 注意路径表示规则
class DeleteVersionFolderEntriesRequest extends $pb.GeneratedMessage {
  factory DeleteVersionFolderEntriesRequest({
    $core.String? versionId,
    $core.Iterable<$core.String>? filePathes,
  }) {
    final $result = create();
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (filePathes != null) {
      $result.filePathes.addAll(filePathes);
    }
    return $result;
  }
  DeleteVersionFolderEntriesRequest._() : super();
  factory DeleteVersionFolderEntriesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteVersionFolderEntriesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteVersionFolderEntriesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'versionId')
    ..pPS(2, _omitFieldNames ? '' : 'filePathes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteVersionFolderEntriesRequest clone() => DeleteVersionFolderEntriesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteVersionFolderEntriesRequest copyWith(void Function(DeleteVersionFolderEntriesRequest) updates) => super.copyWith((message) => updates(message as DeleteVersionFolderEntriesRequest)) as DeleteVersionFolderEntriesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteVersionFolderEntriesRequest create() => DeleteVersionFolderEntriesRequest._();
  DeleteVersionFolderEntriesRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteVersionFolderEntriesRequest> createRepeated() => $pb.PbList<DeleteVersionFolderEntriesRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteVersionFolderEntriesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteVersionFolderEntriesRequest>(create);
  static DeleteVersionFolderEntriesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get versionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set versionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get filePathes => $_getList(1);
}

class DeleteVersionFolderEntriesResponse extends $pb.GeneratedMessage {
  factory DeleteVersionFolderEntriesResponse({
    $core.Iterable<$core.String>? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result.addAll(result);
    }
    return $result;
  }
  DeleteVersionFolderEntriesResponse._() : super();
  factory DeleteVersionFolderEntriesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteVersionFolderEntriesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteVersionFolderEntriesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteVersionFolderEntriesResponse clone() => DeleteVersionFolderEntriesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteVersionFolderEntriesResponse copyWith(void Function(DeleteVersionFolderEntriesResponse) updates) => super.copyWith((message) => updates(message as DeleteVersionFolderEntriesResponse)) as DeleteVersionFolderEntriesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteVersionFolderEntriesResponse create() => DeleteVersionFolderEntriesResponse._();
  DeleteVersionFolderEntriesResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteVersionFolderEntriesResponse> createRepeated() => $pb.PbList<DeleteVersionFolderEntriesResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteVersionFolderEntriesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteVersionFolderEntriesResponse>(create);
  static DeleteVersionFolderEntriesResponse? _defaultInstance;

  /// 成功返回被删除的文件路径
  @$pb.TagNumber(1)
  $core.List<$core.String> get result => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
