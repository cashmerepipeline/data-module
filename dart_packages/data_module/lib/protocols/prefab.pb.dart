//
//  Generated code. Do not modify.
//  source: prefab.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:cashmere_core/protocols/name.pb.dart' as $0;

class NewPrefabRequest extends $pb.GeneratedMessage {
  factory NewPrefabRequest({
    $core.String? specsId,
    $core.String? stageId,
    $core.String? version,
    $0.Name? name,
    $core.List<$core.int>? modifies,
    $core.String? description,
  }) {
    final $result = create();
    if (specsId != null) {
      $result.specsId = specsId;
    }
    if (stageId != null) {
      $result.stageId = stageId;
    }
    if (version != null) {
      $result.version = version;
    }
    if (name != null) {
      $result.name = name;
    }
    if (modifies != null) {
      $result.modifies = modifies;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  NewPrefabRequest._() : super();
  factory NewPrefabRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewPrefabRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewPrefabRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'specsId')
    ..aOS(2, _omitFieldNames ? '' : 'stageId')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..aOM<$0.Name>(4, _omitFieldNames ? '' : 'name', subBuilder: $0.Name.create)
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'modifies', $pb.PbFieldType.OY)
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewPrefabRequest clone() => NewPrefabRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewPrefabRequest copyWith(void Function(NewPrefabRequest) updates) => super.copyWith((message) => updates(message as NewPrefabRequest)) as NewPrefabRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewPrefabRequest create() => NewPrefabRequest._();
  NewPrefabRequest createEmptyInstance() => create();
  static $pb.PbList<NewPrefabRequest> createRepeated() => $pb.PbList<NewPrefabRequest>();
  @$core.pragma('dart2js:noInline')
  static NewPrefabRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewPrefabRequest>(create);
  static NewPrefabRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get specsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set specsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpecsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecsId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set stageId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStageId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $0.Name get name => $_getN(3);
  @$pb.TagNumber(4)
  set name($0.Name v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);
  @$pb.TagNumber(4)
  $0.Name ensureName() => $_ensure(3);

  /// 使用bson格式存储修改信息
  @$pb.TagNumber(5)
  $core.List<$core.int> get modifies => $_getN(4);
  @$pb.TagNumber(5)
  set modifies($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasModifies() => $_has(4);
  @$pb.TagNumber(5)
  void clearModifies() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);
}

class NewPrefabResponse extends $pb.GeneratedMessage {
  factory NewPrefabResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  NewPrefabResponse._() : super();
  factory NewPrefabResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewPrefabResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewPrefabResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewPrefabResponse clone() => NewPrefabResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewPrefabResponse copyWith(void Function(NewPrefabResponse) updates) => super.copyWith((message) => updates(message as NewPrefabResponse)) as NewPrefabResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewPrefabResponse create() => NewPrefabResponse._();
  NewPrefabResponse createEmptyInstance() => create();
  static $pb.PbList<NewPrefabResponse> createRepeated() => $pb.PbList<NewPrefabResponse>();
  @$core.pragma('dart2js:noInline')
  static NewPrefabResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewPrefabResponse>(create);
  static NewPrefabResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 列出预制件
class ListPrefabRequest extends $pb.GeneratedMessage {
  factory ListPrefabRequest({
    $core.String? specsId,
  }) {
    final $result = create();
    if (specsId != null) {
      $result.specsId = specsId;
    }
    return $result;
  }
  ListPrefabRequest._() : super();
  factory ListPrefabRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPrefabRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPrefabRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'specsId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPrefabRequest clone() => ListPrefabRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPrefabRequest copyWith(void Function(ListPrefabRequest) updates) => super.copyWith((message) => updates(message as ListPrefabRequest)) as ListPrefabRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPrefabRequest create() => ListPrefabRequest._();
  ListPrefabRequest createEmptyInstance() => create();
  static $pb.PbList<ListPrefabRequest> createRepeated() => $pb.PbList<ListPrefabRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPrefabRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPrefabRequest>(create);
  static ListPrefabRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get specsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set specsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpecsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecsId() => clearField(1);
}

class ListPrefabResponse extends $pb.GeneratedMessage {
  factory ListPrefabResponse({
    $core.Iterable<$core.List<$core.int>>? prefabs,
  }) {
    final $result = create();
    if (prefabs != null) {
      $result.prefabs.addAll(prefabs);
    }
    return $result;
  }
  ListPrefabResponse._() : super();
  factory ListPrefabResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPrefabResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPrefabResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'prefabs', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPrefabResponse clone() => ListPrefabResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPrefabResponse copyWith(void Function(ListPrefabResponse) updates) => super.copyWith((message) => updates(message as ListPrefabResponse)) as ListPrefabResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPrefabResponse create() => ListPrefabResponse._();
  ListPrefabResponse createEmptyInstance() => create();
  static $pb.PbList<ListPrefabResponse> createRepeated() => $pb.PbList<ListPrefabResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPrefabResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPrefabResponse>(create);
  static ListPrefabResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get prefabs => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
