///
//  Generated code. Do not modify.
//  source: version.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Version extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Version', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'files')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'removed')
    ..hasRequiredFields = false
  ;

  Version._() : super();
  factory Version({
    $core.String? name,
    $core.Iterable<$core.String>? files,
    $core.bool? removed,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (files != null) {
      _result.files.addAll(files);
    }
    if (removed != null) {
      _result.removed = removed;
    }
    return _result;
  }
  factory Version.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Version.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Version clone() => Version()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Version copyWith(void Function(Version) updates) => super.copyWith((message) => updates(message as Version)) as Version; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Version create() => Version._();
  Version createEmptyInstance() => create();
  static $pb.PbList<Version> createRepeated() => $pb.PbList<Version>();
  @$core.pragma('dart2js:noInline')
  static Version getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version>(create);
  static Version? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get files => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get removed => $_getBF(2);
  @$pb.TagNumber(3)
  set removed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRemoved() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemoved() => clearField(3);
}

class AddStageVersionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddStageVersionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..hasRequiredFields = false
  ;

  AddStageVersionRequest._() : super();
  factory AddStageVersionRequest({
    $core.String? stageId,
    $core.String? version,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory AddStageVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddStageVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddStageVersionRequest clone() => AddStageVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddStageVersionRequest copyWith(void Function(AddStageVersionRequest) updates) => super.copyWith((message) => updates(message as AddStageVersionRequest)) as AddStageVersionRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddStageVersionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  AddStageVersionResponse._() : super();
  factory AddStageVersionResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory AddStageVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddStageVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddStageVersionResponse clone() => AddStageVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddStageVersionResponse copyWith(void Function(AddStageVersionResponse) updates) => super.copyWith((message) => updates(message as AddStageVersionResponse)) as AddStageVersionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddStageVersionResponse create() => AddStageVersionResponse._();
  AddStageVersionResponse createEmptyInstance() => create();
  static $pb.PbList<AddStageVersionResponse> createRepeated() => $pb.PbList<AddStageVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static AddStageVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddStageVersionResponse>(create);
  static AddStageVersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class ListStageVersionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListStageVersionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..hasRequiredFields = false
  ;

  ListStageVersionsRequest._() : super();
  factory ListStageVersionsRequest({
    $core.String? stageId,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    return _result;
  }
  factory ListStageVersionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStageVersionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStageVersionsRequest clone() => ListStageVersionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStageVersionsRequest copyWith(void Function(ListStageVersionsRequest) updates) => super.copyWith((message) => updates(message as ListStageVersionsRequest)) as ListStageVersionsRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListStageVersionsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..pc<Version>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'versions', $pb.PbFieldType.PM, subBuilder: Version.create)
    ..hasRequiredFields = false
  ;

  ListStageVersionsResponse._() : super();
  factory ListStageVersionsResponse({
    $core.Iterable<Version>? versions,
  }) {
    final _result = create();
    if (versions != null) {
      _result.versions.addAll(versions);
    }
    return _result;
  }
  factory ListStageVersionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStageVersionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStageVersionsResponse clone() => ListStageVersionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStageVersionsResponse copyWith(void Function(ListStageVersionsResponse) updates) => super.copyWith((message) => updates(message as ListStageVersionsResponse)) as ListStageVersionsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListStageVersionsResponse create() => ListStageVersionsResponse._();
  ListStageVersionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListStageVersionsResponse> createRepeated() => $pb.PbList<ListStageVersionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStageVersionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStageVersionsResponse>(create);
  static ListStageVersionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Version> get versions => $_getList(0);
}

class SetStageCurrentVersionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetStageCurrentVersionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetVersion')
    ..hasRequiredFields = false
  ;

  SetStageCurrentVersionRequest._() : super();
  factory SetStageCurrentVersionRequest({
    $core.String? stageId,
    $core.String? targetVersion,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    if (targetVersion != null) {
      _result.targetVersion = targetVersion;
    }
    return _result;
  }
  factory SetStageCurrentVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetStageCurrentVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetStageCurrentVersionRequest clone() => SetStageCurrentVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetStageCurrentVersionRequest copyWith(void Function(SetStageCurrentVersionRequest) updates) => super.copyWith((message) => updates(message as SetStageCurrentVersionRequest)) as SetStageCurrentVersionRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetStageCurrentVersionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  SetStageCurrentVersionResponse._() : super();
  factory SetStageCurrentVersionResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory SetStageCurrentVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetStageCurrentVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetStageCurrentVersionResponse clone() => SetStageCurrentVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetStageCurrentVersionResponse copyWith(void Function(SetStageCurrentVersionResponse) updates) => super.copyWith((message) => updates(message as SetStageCurrentVersionResponse)) as SetStageCurrentVersionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetStageCurrentVersionResponse create() => SetStageCurrentVersionResponse._();
  SetStageCurrentVersionResponse createEmptyInstance() => create();
  static $pb.PbList<SetStageCurrentVersionResponse> createRepeated() => $pb.PbList<SetStageCurrentVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static SetStageCurrentVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetStageCurrentVersionResponse>(create);
  static SetStageCurrentVersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class RemoveStageVersionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveStageVersionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..hasRequiredFields = false
  ;

  RemoveStageVersionRequest._() : super();
  factory RemoveStageVersionRequest({
    $core.String? stageId,
    $core.String? version,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory RemoveStageVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveStageVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveStageVersionRequest clone() => RemoveStageVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveStageVersionRequest copyWith(void Function(RemoveStageVersionRequest) updates) => super.copyWith((message) => updates(message as RemoveStageVersionRequest)) as RemoveStageVersionRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveStageVersionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  RemoveStageVersionResponse._() : super();
  factory RemoveStageVersionResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory RemoveStageVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveStageVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveStageVersionResponse clone() => RemoveStageVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveStageVersionResponse copyWith(void Function(RemoveStageVersionResponse) updates) => super.copyWith((message) => updates(message as RemoveStageVersionResponse)) as RemoveStageVersionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveStageVersionResponse create() => RemoveStageVersionResponse._();
  RemoveStageVersionResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveStageVersionResponse> createRepeated() => $pb.PbList<RemoveStageVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveStageVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveStageVersionResponse>(create);
  static RemoveStageVersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class AddFileToVersionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddFileToVersionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filePath')
    ..hasRequiredFields = false
  ;

  AddFileToVersionRequest._() : super();
  factory AddFileToVersionRequest({
    $core.String? stageId,
    $core.String? version,
    $core.Iterable<$core.String>? filePath,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    if (version != null) {
      _result.version = version;
    }
    if (filePath != null) {
      _result.filePath.addAll(filePath);
    }
    return _result;
  }
  factory AddFileToVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileToVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileToVersionRequest clone() => AddFileToVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileToVersionRequest copyWith(void Function(AddFileToVersionRequest) updates) => super.copyWith((message) => updates(message as AddFileToVersionRequest)) as AddFileToVersionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFileToVersionRequest create() => AddFileToVersionRequest._();
  AddFileToVersionRequest createEmptyInstance() => create();
  static $pb.PbList<AddFileToVersionRequest> createRepeated() => $pb.PbList<AddFileToVersionRequest>();
  @$core.pragma('dart2js:noInline')
  static AddFileToVersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFileToVersionRequest>(create);
  static AddFileToVersionRequest? _defaultInstance;

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
  $core.List<$core.String> get filePath => $_getList(2);
}

class AddFileToVersionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddFileToVersionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  AddFileToVersionResponse._() : super();
  factory AddFileToVersionResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory AddFileToVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileToVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileToVersionResponse clone() => AddFileToVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileToVersionResponse copyWith(void Function(AddFileToVersionResponse) updates) => super.copyWith((message) => updates(message as AddFileToVersionResponse)) as AddFileToVersionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFileToVersionResponse create() => AddFileToVersionResponse._();
  AddFileToVersionResponse createEmptyInstance() => create();
  static $pb.PbList<AddFileToVersionResponse> createRepeated() => $pb.PbList<AddFileToVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static AddFileToVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFileToVersionResponse>(create);
  static AddFileToVersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class AddFileSetToVersionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddFileSetToVersionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filePathes')
    ..hasRequiredFields = false
  ;

  AddFileSetToVersionRequest._() : super();
  factory AddFileSetToVersionRequest({
    $core.String? stageId,
    $core.String? version,
    $core.Iterable<$core.String>? filePathes,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    if (version != null) {
      _result.version = version;
    }
    if (filePathes != null) {
      _result.filePathes.addAll(filePathes);
    }
    return _result;
  }
  factory AddFileSetToVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileSetToVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileSetToVersionRequest clone() => AddFileSetToVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileSetToVersionRequest copyWith(void Function(AddFileSetToVersionRequest) updates) => super.copyWith((message) => updates(message as AddFileSetToVersionRequest)) as AddFileSetToVersionRequest; // ignore: deprecated_member_use
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

  @$pb.TagNumber(3)
  $core.List<$core.String> get filePathes => $_getList(2);
}

class AddFileSetToVersionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddFileSetToVersionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  AddFileSetToVersionResponse._() : super();
  factory AddFileSetToVersionResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory AddFileSetToVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileSetToVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileSetToVersionResponse clone() => AddFileSetToVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileSetToVersionResponse copyWith(void Function(AddFileSetToVersionResponse) updates) => super.copyWith((message) => updates(message as AddFileSetToVersionResponse)) as AddFileSetToVersionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFileSetToVersionResponse create() => AddFileSetToVersionResponse._();
  AddFileSetToVersionResponse createEmptyInstance() => create();
  static $pb.PbList<AddFileSetToVersionResponse> createRepeated() => $pb.PbList<AddFileSetToVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static AddFileSetToVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFileSetToVersionResponse>(create);
  static AddFileSetToVersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class AddFileSequenceToVersionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddFileSequenceToVersionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'padding', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'end', $pb.PbFieldType.O3)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseName')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extension')
    ..hasRequiredFields = false
  ;

  AddFileSequenceToVersionRequest._() : super();
  factory AddFileSequenceToVersionRequest({
    $core.String? stageId,
    $core.int? padding,
    $core.String? version,
    $core.int? start,
    $core.int? end,
    $core.String? baseName,
    $core.String? extension_8,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    if (padding != null) {
      _result.padding = padding;
    }
    if (version != null) {
      _result.version = version;
    }
    if (start != null) {
      _result.start = start;
    }
    if (end != null) {
      _result.end = end;
    }
    if (baseName != null) {
      _result.baseName = baseName;
    }
    if (extension_8 != null) {
      _result.extension_8 = extension_8;
    }
    return _result;
  }
  factory AddFileSequenceToVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileSequenceToVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileSequenceToVersionRequest clone() => AddFileSequenceToVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileSequenceToVersionRequest copyWith(void Function(AddFileSequenceToVersionRequest) updates) => super.copyWith((message) => updates(message as AddFileSequenceToVersionRequest)) as AddFileSequenceToVersionRequest; // ignore: deprecated_member_use
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
  $core.int get padding => $_getIZ(1);
  @$pb.TagNumber(2)
  set padding($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPadding() => $_has(1);
  @$pb.TagNumber(2)
  void clearPadding() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(5)
  $core.int get start => $_getIZ(3);
  @$pb.TagNumber(5)
  set start($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasStart() => $_has(3);
  @$pb.TagNumber(5)
  void clearStart() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get end => $_getIZ(4);
  @$pb.TagNumber(6)
  set end($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasEnd() => $_has(4);
  @$pb.TagNumber(6)
  void clearEnd() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get baseName => $_getSZ(5);
  @$pb.TagNumber(7)
  set baseName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasBaseName() => $_has(5);
  @$pb.TagNumber(7)
  void clearBaseName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get extension_8 => $_getSZ(6);
  @$pb.TagNumber(8)
  set extension_8($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasExtension_8() => $_has(6);
  @$pb.TagNumber(8)
  void clearExtension_8() => clearField(8);
}

class AddFileSequenceToVersionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddFileSequenceToVersionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  AddFileSequenceToVersionResponse._() : super();
  factory AddFileSequenceToVersionResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory AddFileSequenceToVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFileSequenceToVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFileSequenceToVersionResponse clone() => AddFileSequenceToVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFileSequenceToVersionResponse copyWith(void Function(AddFileSequenceToVersionResponse) updates) => super.copyWith((message) => updates(message as AddFileSequenceToVersionResponse)) as AddFileSequenceToVersionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFileSequenceToVersionResponse create() => AddFileSequenceToVersionResponse._();
  AddFileSequenceToVersionResponse createEmptyInstance() => create();
  static $pb.PbList<AddFileSequenceToVersionResponse> createRepeated() => $pb.PbList<AddFileSequenceToVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static AddFileSequenceToVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFileSequenceToVersionResponse>(create);
  static AddFileSequenceToVersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class RemoveFilesFromVersionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveFilesFromVersionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filePathes')
    ..hasRequiredFields = false
  ;

  RemoveFilesFromVersionRequest._() : super();
  factory RemoveFilesFromVersionRequest({
    $core.String? stageId,
    $core.String? version,
    $core.Iterable<$core.String>? filePathes,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    if (version != null) {
      _result.version = version;
    }
    if (filePathes != null) {
      _result.filePathes.addAll(filePathes);
    }
    return _result;
  }
  factory RemoveFilesFromVersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveFilesFromVersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveFilesFromVersionRequest clone() => RemoveFilesFromVersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveFilesFromVersionRequest copyWith(void Function(RemoveFilesFromVersionRequest) updates) => super.copyWith((message) => updates(message as RemoveFilesFromVersionRequest)) as RemoveFilesFromVersionRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveFilesFromVersionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  RemoveFilesFromVersionResponse._() : super();
  factory RemoveFilesFromVersionResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory RemoveFilesFromVersionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveFilesFromVersionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveFilesFromVersionResponse clone() => RemoveFilesFromVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveFilesFromVersionResponse copyWith(void Function(RemoveFilesFromVersionResponse) updates) => super.copyWith((message) => updates(message as RemoveFilesFromVersionResponse)) as RemoveFilesFromVersionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveFilesFromVersionResponse create() => RemoveFilesFromVersionResponse._();
  RemoveFilesFromVersionResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveFilesFromVersionResponse> createRepeated() => $pb.PbList<RemoveFilesFromVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveFilesFromVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveFilesFromVersionResponse>(create);
  static RemoveFilesFromVersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class ListVersionFolderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListVersionFolderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..hasRequiredFields = false
  ;

  ListVersionFolderRequest._() : super();
  factory ListVersionFolderRequest({
    $core.String? stageId,
    $core.String? version,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory ListVersionFolderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListVersionFolderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListVersionFolderRequest clone() => ListVersionFolderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListVersionFolderRequest copyWith(void Function(ListVersionFolderRequest) updates) => super.copyWith((message) => updates(message as ListVersionFolderRequest)) as ListVersionFolderRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListVersionFolderResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'folders')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'files')
    ..hasRequiredFields = false
  ;

  ListVersionFolderResponse._() : super();
  factory ListVersionFolderResponse({
    $core.Iterable<$core.String>? folders,
    $core.Iterable<$core.String>? files,
  }) {
    final _result = create();
    if (folders != null) {
      _result.folders.addAll(folders);
    }
    if (files != null) {
      _result.files.addAll(files);
    }
    return _result;
  }
  factory ListVersionFolderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListVersionFolderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListVersionFolderResponse clone() => ListVersionFolderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListVersionFolderResponse copyWith(void Function(ListVersionFolderResponse) updates) => super.copyWith((message) => updates(message as ListVersionFolderResponse)) as ListVersionFolderResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListVersionFolderResponse create() => ListVersionFolderResponse._();
  ListVersionFolderResponse createEmptyInstance() => create();
  static $pb.PbList<ListVersionFolderResponse> createRepeated() => $pb.PbList<ListVersionFolderResponse>();
  @$core.pragma('dart2js:noInline')
  static ListVersionFolderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListVersionFolderResponse>(create);
  static ListVersionFolderResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get folders => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get files => $_getList(1);
}

class DeleteVersionFolderEntriesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteVersionFolderEntriesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stageId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filePathes')
    ..hasRequiredFields = false
  ;

  DeleteVersionFolderEntriesRequest._() : super();
  factory DeleteVersionFolderEntriesRequest({
    $core.String? stageId,
    $core.String? version,
    $core.Iterable<$core.String>? filePathes,
  }) {
    final _result = create();
    if (stageId != null) {
      _result.stageId = stageId;
    }
    if (version != null) {
      _result.version = version;
    }
    if (filePathes != null) {
      _result.filePathes.addAll(filePathes);
    }
    return _result;
  }
  factory DeleteVersionFolderEntriesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteVersionFolderEntriesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteVersionFolderEntriesRequest clone() => DeleteVersionFolderEntriesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteVersionFolderEntriesRequest copyWith(void Function(DeleteVersionFolderEntriesRequest) updates) => super.copyWith((message) => updates(message as DeleteVersionFolderEntriesRequest)) as DeleteVersionFolderEntriesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteVersionFolderEntriesRequest create() => DeleteVersionFolderEntriesRequest._();
  DeleteVersionFolderEntriesRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteVersionFolderEntriesRequest> createRepeated() => $pb.PbList<DeleteVersionFolderEntriesRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteVersionFolderEntriesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteVersionFolderEntriesRequest>(create);
  static DeleteVersionFolderEntriesRequest? _defaultInstance;

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

class DeleteVersionFolderEntriesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteVersionFolderEntriesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  DeleteVersionFolderEntriesResponse._() : super();
  factory DeleteVersionFolderEntriesResponse({
    $core.Iterable<$core.String>? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result.addAll(result);
    }
    return _result;
  }
  factory DeleteVersionFolderEntriesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteVersionFolderEntriesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteVersionFolderEntriesResponse clone() => DeleteVersionFolderEntriesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteVersionFolderEntriesResponse copyWith(void Function(DeleteVersionFolderEntriesResponse) updates) => super.copyWith((message) => updates(message as DeleteVersionFolderEntriesResponse)) as DeleteVersionFolderEntriesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteVersionFolderEntriesResponse create() => DeleteVersionFolderEntriesResponse._();
  DeleteVersionFolderEntriesResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteVersionFolderEntriesResponse> createRepeated() => $pb.PbList<DeleteVersionFolderEntriesResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteVersionFolderEntriesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteVersionFolderEntriesResponse>(create);
  static DeleteVersionFolderEntriesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get result => $_getList(0);
}

