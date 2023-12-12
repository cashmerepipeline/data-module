//
//  Generated code. Do not modify.
//  source: stage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 数据阶段信息
class StageInfo extends $pb.GeneratedMessage {
  factory StageInfo({
    $core.String? name,
    $core.Iterable<$core.List<$core.int>>? versions,
    $core.String? currentVersion,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (versions != null) {
      $result.versions.addAll(versions);
    }
    if (currentVersion != null) {
      $result.currentVersion = currentVersion;
    }
    return $result;
  }
  StageInfo._() : super();
  factory StageInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StageInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StageInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..p<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'versions', $pb.PbFieldType.PY)
    ..aOS(3, _omitFieldNames ? '' : 'currentVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StageInfo clone() => StageInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StageInfo copyWith(void Function(StageInfo) updates) => super.copyWith((message) => updates(message as StageInfo)) as StageInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StageInfo create() => StageInfo._();
  StageInfo createEmptyInstance() => create();
  static $pb.PbList<StageInfo> createRepeated() => $pb.PbList<StageInfo>();
  @$core.pragma('dart2js:noInline')
  static StageInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StageInfo>(create);
  static StageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// stage目录下的文件列表, 文件为文件列表，集合为集合目录列表
  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get versions => $_getList(1);

  /// 当前连接所指版本
  @$pb.TagNumber(3)
  $core.String get currentVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set currentVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentVersion() => clearField(3);
}

/// 新阶段
class AddDataStageRequest extends $pb.GeneratedMessage {
  factory AddDataStageRequest({
    $core.String? dataId,
    $core.String? stage,
    $core.String? description,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    if (stage != null) {
      $result.stage = stage;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  AddDataStageRequest._() : super();
  factory AddDataStageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDataStageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDataStageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..aOS(2, _omitFieldNames ? '' : 'stage')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDataStageRequest clone() => AddDataStageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDataStageRequest copyWith(void Function(AddDataStageRequest) updates) => super.copyWith((message) => updates(message as AddDataStageRequest)) as AddDataStageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDataStageRequest create() => AddDataStageRequest._();
  AddDataStageRequest createEmptyInstance() => create();
  static $pb.PbList<AddDataStageRequest> createRepeated() => $pb.PbList<AddDataStageRequest>();
  @$core.pragma('dart2js:noInline')
  static AddDataStageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDataStageRequest>(create);
  static AddDataStageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);

  /// 阶段在流程中一般是一项工作的再分解，属于一项工作的完成步骤，所以名称可能具有一定的一般性
  /// 将作为实体的id，还将作为阶段的路径使用，不能重复
  /// 阶段的字符集需要注意软件支持的字符集，比如Maya对中文支持友好
  @$pb.TagNumber(2)
  $core.String get stage => $_getSZ(1);
  @$pb.TagNumber(2)
  set stage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStage() => $_has(1);
  @$pb.TagNumber(2)
  void clearStage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class AddDataStageResponse extends $pb.GeneratedMessage {
  factory AddDataStageResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  AddDataStageResponse._() : super();
  factory AddDataStageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDataStageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDataStageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDataStageResponse clone() => AddDataStageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDataStageResponse copyWith(void Function(AddDataStageResponse) updates) => super.copyWith((message) => updates(message as AddDataStageResponse)) as AddDataStageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDataStageResponse create() => AddDataStageResponse._();
  AddDataStageResponse createEmptyInstance() => create();
  static $pb.PbList<AddDataStageResponse> createRepeated() => $pb.PbList<AddDataStageResponse>();
  @$core.pragma('dart2js:noInline')
  static AddDataStageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDataStageResponse>(create);
  static AddDataStageResponse? _defaultInstance;

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

/// 删除阶段，只删除阶段->数据的文件连接，不删除数据
class RemoveStageRequest extends $pb.GeneratedMessage {
  factory RemoveStageRequest({
    $core.String? dataId,
    $core.String? stage,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    if (stage != null) {
      $result.stage = stage;
    }
    return $result;
  }
  RemoveStageRequest._() : super();
  factory RemoveStageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveStageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveStageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..aOS(2, _omitFieldNames ? '' : 'stage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveStageRequest clone() => RemoveStageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveStageRequest copyWith(void Function(RemoveStageRequest) updates) => super.copyWith((message) => updates(message as RemoveStageRequest)) as RemoveStageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveStageRequest create() => RemoveStageRequest._();
  RemoveStageRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveStageRequest> createRepeated() => $pb.PbList<RemoveStageRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveStageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveStageRequest>(create);
  static RemoveStageRequest? _defaultInstance;

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
}

class RemoveStageResponse extends $pb.GeneratedMessage {
  factory RemoveStageResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  RemoveStageResponse._() : super();
  factory RemoveStageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveStageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveStageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveStageResponse clone() => RemoveStageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveStageResponse copyWith(void Function(RemoveStageResponse) updates) => super.copyWith((message) => updates(message as RemoveStageResponse)) as RemoveStageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveStageResponse create() => RemoveStageResponse._();
  RemoveStageResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveStageResponse> createRepeated() => $pb.PbList<RemoveStageResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveStageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveStageResponse>(create);
  static RemoveStageResponse? _defaultInstance;

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

/// 取得数据阶段表
class ListDataStagesRequest extends $pb.GeneratedMessage {
  factory ListDataStagesRequest({
    $core.String? dataId,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  ListDataStagesRequest._() : super();
  factory ListDataStagesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDataStagesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListDataStagesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDataStagesRequest clone() => ListDataStagesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDataStagesRequest copyWith(void Function(ListDataStagesRequest) updates) => super.copyWith((message) => updates(message as ListDataStagesRequest)) as ListDataStagesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDataStagesRequest create() => ListDataStagesRequest._();
  ListDataStagesRequest createEmptyInstance() => create();
  static $pb.PbList<ListDataStagesRequest> createRepeated() => $pb.PbList<ListDataStagesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDataStagesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDataStagesRequest>(create);
  static ListDataStagesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);
}

class ListDataStagesResponse extends $pb.GeneratedMessage {
  factory ListDataStagesResponse({
    $core.Iterable<$core.List<$core.int>>? stages,
  }) {
    final $result = create();
    if (stages != null) {
      $result.stages.addAll(stages);
    }
    return $result;
  }
  ListDataStagesResponse._() : super();
  factory ListDataStagesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDataStagesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListDataStagesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'stages', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDataStagesResponse clone() => ListDataStagesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDataStagesResponse copyWith(void Function(ListDataStagesResponse) updates) => super.copyWith((message) => updates(message as ListDataStagesResponse)) as ListDataStagesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDataStagesResponse create() => ListDataStagesResponse._();
  ListDataStagesResponse createEmptyInstance() => create();
  static $pb.PbList<ListDataStagesResponse> createRepeated() => $pb.PbList<ListDataStagesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDataStagesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDataStagesResponse>(create);
  static ListDataStagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get stages => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
