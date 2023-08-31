//
//  Generated code. Do not modify.
//  source: specs.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:cashmere_core/protocols/name.pb.dart' as $0;

class SpecsAttribute extends $pb.GeneratedMessage {
  factory SpecsAttribute({
    $0.Name? name,
    $core.String? value,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  SpecsAttribute._() : super();
  factory SpecsAttribute.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpecsAttribute.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpecsAttribute',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOM<$0.Name>(1, _omitFieldNames ? '' : 'name', subBuilder: $0.Name.create)
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpecsAttribute clone() => SpecsAttribute()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpecsAttribute copyWith(void Function(SpecsAttribute) updates) =>
      super.copyWith((message) => updates(message as SpecsAttribute))
          as SpecsAttribute;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpecsAttribute create() => SpecsAttribute._();
  SpecsAttribute createEmptyInstance() => create();
  static $pb.PbList<SpecsAttribute> createRepeated() =>
      $pb.PbList<SpecsAttribute>();
  @$core.pragma('dart2js:noInline')
  static SpecsAttribute getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpecsAttribute>(create);
  static SpecsAttribute? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Name get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($0.Name v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
  @$pb.TagNumber(1)
  $0.Name ensureName() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class NewSpecsRequest extends $pb.GeneratedMessage {
  factory NewSpecsRequest({
    $core.int? manageId,
    $core.String? entityId,
    $0.Name? name,
    $core.String? description,
    $core.Iterable<$core.List<$core.int>>? attibutes,
  }) {
    final $result = create();
    if (manageId != null) {
      $result.manageId = manageId;
    }
    if (entityId != null) {
      $result.entityId = entityId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (attibutes != null) {
      $result.attibutes.addAll(attibutes);
    }
    return $result;
  }
  NewSpecsRequest._() : super();
  factory NewSpecsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewSpecsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NewSpecsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'manageId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'entityId')
    ..aOM<$0.Name>(3, _omitFieldNames ? '' : 'name', subBuilder: $0.Name.create)
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..p<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'attibutes', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewSpecsRequest clone() => NewSpecsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewSpecsRequest copyWith(void Function(NewSpecsRequest) updates) =>
      super.copyWith((message) => updates(message as NewSpecsRequest))
          as NewSpecsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewSpecsRequest create() => NewSpecsRequest._();
  NewSpecsRequest createEmptyInstance() => create();
  static $pb.PbList<NewSpecsRequest> createRepeated() =>
      $pb.PbList<NewSpecsRequest>();
  @$core.pragma('dart2js:noInline')
  static NewSpecsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NewSpecsRequest>(create);
  static NewSpecsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get manageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set manageId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasManageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearManageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get entityId => $_getSZ(1);
  @$pb.TagNumber(2)
  set entityId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEntityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntityId() => clearField(2);

  @$pb.TagNumber(3)
  $0.Name get name => $_getN(2);
  @$pb.TagNumber(3)
  set name($0.Name v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
  @$pb.TagNumber(3)
  $0.Name ensureName() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.List<$core.int>> get attibutes => $_getList(4);
}

class NewSpecsResponse extends $pb.GeneratedMessage {
  factory NewSpecsResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  NewSpecsResponse._() : super();
  factory NewSpecsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewSpecsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NewSpecsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewSpecsResponse clone() => NewSpecsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewSpecsResponse copyWith(void Function(NewSpecsResponse) updates) =>
      super.copyWith((message) => updates(message as NewSpecsResponse))
          as NewSpecsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewSpecsResponse create() => NewSpecsResponse._();
  NewSpecsResponse createEmptyInstance() => create();
  static $pb.PbList<NewSpecsResponse> createRepeated() =>
      $pb.PbList<NewSpecsResponse>();
  @$core.pragma('dart2js:noInline')
  static NewSpecsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NewSpecsResponse>(create);
  static NewSpecsResponse? _defaultInstance;

  /// 成功反回id，失败返回错误信息
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

class ListSpecsRequest extends $pb.GeneratedMessage {
  factory ListSpecsRequest({
    $core.String? manageId,
    $core.String? entityId,
  }) {
    final $result = create();
    if (manageId != null) {
      $result.manageId = manageId;
    }
    if (entityId != null) {
      $result.entityId = entityId;
    }
    return $result;
  }
  ListSpecsRequest._() : super();
  factory ListSpecsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSpecsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'manageId')
    ..aOS(2, _omitFieldNames ? '' : 'entityId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSpecsRequest clone() => ListSpecsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSpecsRequest copyWith(void Function(ListSpecsRequest) updates) =>
      super.copyWith((message) => updates(message as ListSpecsRequest))
          as ListSpecsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpecsRequest create() => ListSpecsRequest._();
  ListSpecsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSpecsRequest> createRepeated() =>
      $pb.PbList<ListSpecsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSpecsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSpecsRequest>(create);
  static ListSpecsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get manageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set manageId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasManageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearManageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get entityId => $_getSZ(1);
  @$pb.TagNumber(2)
  set entityId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEntityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntityId() => clearField(2);
}

class ListSpecsResponse extends $pb.GeneratedMessage {
  factory ListSpecsResponse({
    $core.Iterable<$core.List<$core.int>>? specses,
  }) {
    final $result = create();
    if (specses != null) {
      $result.specses.addAll(specses);
    }
    return $result;
  }
  ListSpecsResponse._() : super();
  factory ListSpecsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSpecsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'specses', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSpecsResponse clone() => ListSpecsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSpecsResponse copyWith(void Function(ListSpecsResponse) updates) =>
      super.copyWith((message) => updates(message as ListSpecsResponse))
          as ListSpecsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpecsResponse create() => ListSpecsResponse._();
  ListSpecsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSpecsResponse> createRepeated() =>
      $pb.PbList<ListSpecsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSpecsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSpecsResponse>(create);
  static ListSpecsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get specses => $_getList(0);
}

/// 列出规格的数据
class ListSpecsDataRequest extends $pb.GeneratedMessage {
  factory ListSpecsDataRequest({
    $core.String? specsId,
  }) {
    final $result = create();
    if (specsId != null) {
      $result.specsId = specsId;
    }
    return $result;
  }
  ListSpecsDataRequest._() : super();
  factory ListSpecsDataRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsDataRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSpecsDataRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'specsId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSpecsDataRequest clone() =>
      ListSpecsDataRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSpecsDataRequest copyWith(void Function(ListSpecsDataRequest) updates) =>
      super.copyWith((message) => updates(message as ListSpecsDataRequest))
          as ListSpecsDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpecsDataRequest create() => ListSpecsDataRequest._();
  ListSpecsDataRequest createEmptyInstance() => create();
  static $pb.PbList<ListSpecsDataRequest> createRepeated() =>
      $pb.PbList<ListSpecsDataRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSpecsDataRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSpecsDataRequest>(create);
  static ListSpecsDataRequest? _defaultInstance;

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

class ListSpecsDataResponse extends $pb.GeneratedMessage {
  factory ListSpecsDataResponse({
    $core.Iterable<$core.List<$core.int>>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  ListSpecsDataResponse._() : super();
  factory ListSpecsDataResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsDataResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSpecsDataResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSpecsDataResponse clone() =>
      ListSpecsDataResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSpecsDataResponse copyWith(
          void Function(ListSpecsDataResponse) updates) =>
      super.copyWith((message) => updates(message as ListSpecsDataResponse))
          as ListSpecsDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpecsDataResponse create() => ListSpecsDataResponse._();
  ListSpecsDataResponse createEmptyInstance() => create();
  static $pb.PbList<ListSpecsDataResponse> createRepeated() =>
      $pb.PbList<ListSpecsDataResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSpecsDataResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSpecsDataResponse>(create);
  static ListSpecsDataResponse? _defaultInstance;

  /// bson 列表
  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get data => $_getList(0);
}

/// 列出规格的预制件
class ListSpecsPrefabsRequest extends $pb.GeneratedMessage {
  factory ListSpecsPrefabsRequest({
    $core.String? specsId,
  }) {
    final $result = create();
    if (specsId != null) {
      $result.specsId = specsId;
    }
    return $result;
  }
  ListSpecsPrefabsRequest._() : super();
  factory ListSpecsPrefabsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsPrefabsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSpecsPrefabsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'specsId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSpecsPrefabsRequest clone() =>
      ListSpecsPrefabsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSpecsPrefabsRequest copyWith(
          void Function(ListSpecsPrefabsRequest) updates) =>
      super.copyWith((message) => updates(message as ListSpecsPrefabsRequest))
          as ListSpecsPrefabsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpecsPrefabsRequest create() => ListSpecsPrefabsRequest._();
  ListSpecsPrefabsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSpecsPrefabsRequest> createRepeated() =>
      $pb.PbList<ListSpecsPrefabsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSpecsPrefabsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSpecsPrefabsRequest>(create);
  static ListSpecsPrefabsRequest? _defaultInstance;

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

class ListSpecsPrefabsResponse extends $pb.GeneratedMessage {
  factory ListSpecsPrefabsResponse({
    $core.Iterable<$core.List<$core.int>>? prefabs,
  }) {
    final $result = create();
    if (prefabs != null) {
      $result.prefabs.addAll(prefabs);
    }
    return $result;
  }
  ListSpecsPrefabsResponse._() : super();
  factory ListSpecsPrefabsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsPrefabsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSpecsPrefabsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'prefabs', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSpecsPrefabsResponse clone() =>
      ListSpecsPrefabsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSpecsPrefabsResponse copyWith(
          void Function(ListSpecsPrefabsResponse) updates) =>
      super.copyWith((message) => updates(message as ListSpecsPrefabsResponse))
          as ListSpecsPrefabsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpecsPrefabsResponse create() => ListSpecsPrefabsResponse._();
  ListSpecsPrefabsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSpecsPrefabsResponse> createRepeated() =>
      $pb.PbList<ListSpecsPrefabsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSpecsPrefabsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSpecsPrefabsResponse>(create);
  static ListSpecsPrefabsResponse? _defaultInstance;

  /// bson 列表
  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get prefabs => $_getList(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
