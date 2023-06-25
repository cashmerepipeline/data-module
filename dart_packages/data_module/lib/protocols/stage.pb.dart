///
//  Generated code. Do not modify.
//  source: stage.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:cashmere_core/protocols/name.pb.dart' as $0;

class StageInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StageInfo',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..p<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'versions',
        $pb.PbFieldType.PY)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'currentVersion')
    ..hasRequiredFields = false;

  StageInfo._() : super();
  factory StageInfo({
    $core.String? name,
    $core.Iterable<$core.List<$core.int>>? versions,
    $core.String? currentVersion,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (versions != null) {
      _result.versions.addAll(versions);
    }
    if (currentVersion != null) {
      _result.currentVersion = currentVersion;
    }
    return _result;
  }
  factory StageInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StageInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StageInfo clone() => StageInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StageInfo copyWith(void Function(StageInfo) updates) =>
      super.copyWith((message) => updates(message as StageInfo))
          as StageInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StageInfo create() => StageInfo._();
  StageInfo createEmptyInstance() => create();
  static $pb.PbList<StageInfo> createRepeated() => $pb.PbList<StageInfo>();
  @$core.pragma('dart2js:noInline')
  static StageInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StageInfo>(create);
  static StageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get versions => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get currentVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set currentVersion($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCurrentVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentVersion() => clearField(3);
}

class NewStageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NewStageRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'specsId')
    ..aOM<$0.Name>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'stageName',
        subBuilder: $0.Name.create)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..hasRequiredFields = false;

  NewStageRequest._() : super();
  factory NewStageRequest({
    $core.String? specsId,
    $0.Name? stageName,
    $core.String? description,
  }) {
    final _result = create();
    if (specsId != null) {
      _result.specsId = specsId;
    }
    if (stageName != null) {
      _result.stageName = stageName;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory NewStageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewStageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewStageRequest clone() => NewStageRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewStageRequest copyWith(void Function(NewStageRequest) updates) =>
      super.copyWith((message) => updates(message as NewStageRequest))
          as NewStageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewStageRequest create() => NewStageRequest._();
  NewStageRequest createEmptyInstance() => create();
  static $pb.PbList<NewStageRequest> createRepeated() =>
      $pb.PbList<NewStageRequest>();
  @$core.pragma('dart2js:noInline')
  static NewStageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NewStageRequest>(create);
  static NewStageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get specsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set specsId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpecsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecsId() => clearField(1);

  @$pb.TagNumber(2)
  $0.Name get stageName => $_getN(1);
  @$pb.TagNumber(2)
  set stageName($0.Name v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearStageName() => clearField(2);
  @$pb.TagNumber(2)
  $0.Name ensureStageName() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class NewStageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NewStageResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'result')
    ..hasRequiredFields = false;

  NewStageResponse._() : super();
  factory NewStageResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory NewStageResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewStageResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewStageResponse clone() => NewStageResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewStageResponse copyWith(void Function(NewStageResponse) updates) =>
      super.copyWith((message) => updates(message as NewStageResponse))
          as NewStageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewStageResponse create() => NewStageResponse._();
  NewStageResponse createEmptyInstance() => create();
  static $pb.PbList<NewStageResponse> createRepeated() =>
      $pb.PbList<NewStageResponse>();
  @$core.pragma('dart2js:noInline')
  static NewStageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NewStageResponse>(create);
  static NewStageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class RemoveStageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RemoveStageRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'specsId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'stage')
    ..hasRequiredFields = false;

  RemoveStageRequest._() : super();
  factory RemoveStageRequest({
    $core.String? specsId,
    $core.String? stage,
  }) {
    final _result = create();
    if (specsId != null) {
      _result.specsId = specsId;
    }
    if (stage != null) {
      _result.stage = stage;
    }
    return _result;
  }
  factory RemoveStageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoveStageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoveStageRequest clone() => RemoveStageRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoveStageRequest copyWith(void Function(RemoveStageRequest) updates) =>
      super.copyWith((message) => updates(message as RemoveStageRequest))
          as RemoveStageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveStageRequest create() => RemoveStageRequest._();
  RemoveStageRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveStageRequest> createRepeated() =>
      $pb.PbList<RemoveStageRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveStageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveStageRequest>(create);
  static RemoveStageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get specsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set specsId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpecsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecsId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stage => $_getSZ(1);
  @$pb.TagNumber(2)
  set stage($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStage() => $_has(1);
  @$pb.TagNumber(2)
  void clearStage() => clearField(2);
}

class RemoveStageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RemoveStageResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'result')
    ..hasRequiredFields = false;

  RemoveStageResponse._() : super();
  factory RemoveStageResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory RemoveStageResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoveStageResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoveStageResponse clone() => RemoveStageResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoveStageResponse copyWith(void Function(RemoveStageResponse) updates) =>
      super.copyWith((message) => updates(message as RemoveStageResponse))
          as RemoveStageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveStageResponse create() => RemoveStageResponse._();
  RemoveStageResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveStageResponse> createRepeated() =>
      $pb.PbList<RemoveStageResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveStageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveStageResponse>(create);
  static RemoveStageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class ListStagesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListStagesRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'specsId')
    ..hasRequiredFields = false;

  ListStagesRequest._() : super();
  factory ListStagesRequest({
    $core.String? specsId,
  }) {
    final _result = create();
    if (specsId != null) {
      _result.specsId = specsId;
    }
    return _result;
  }
  factory ListStagesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListStagesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListStagesRequest clone() => ListStagesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListStagesRequest copyWith(void Function(ListStagesRequest) updates) =>
      super.copyWith((message) => updates(message as ListStagesRequest))
          as ListStagesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListStagesRequest create() => ListStagesRequest._();
  ListStagesRequest createEmptyInstance() => create();
  static $pb.PbList<ListStagesRequest> createRepeated() =>
      $pb.PbList<ListStagesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListStagesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListStagesRequest>(create);
  static ListStagesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get specsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set specsId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpecsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecsId() => clearField(1);
}

class ListStagesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListStagesResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'stages',
        $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  ListStagesResponse._() : super();
  factory ListStagesResponse({
    $core.Iterable<$core.List<$core.int>>? stages,
  }) {
    final _result = create();
    if (stages != null) {
      _result.stages.addAll(stages);
    }
    return _result;
  }
  factory ListStagesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListStagesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListStagesResponse clone() => ListStagesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListStagesResponse copyWith(void Function(ListStagesResponse) updates) =>
      super.copyWith((message) => updates(message as ListStagesResponse))
          as ListStagesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListStagesResponse create() => ListStagesResponse._();
  ListStagesResponse createEmptyInstance() => create();
  static $pb.PbList<ListStagesResponse> createRepeated() =>
      $pb.PbList<ListStagesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStagesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListStagesResponse>(create);
  static ListStagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get stages => $_getList(0);
}
