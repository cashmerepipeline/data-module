///
//  Generated code. Do not modify.
//  source: specs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:cashmere_core/protocols/name.pb.dart' as $0;

class NewSpecsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NewSpecsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dataId')
    ..aOM<$0.Name>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name',
        subBuilder: $0.Name.create)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..hasRequiredFields = false;

  NewSpecsRequest._() : super();
  factory NewSpecsRequest({
    $core.String? dataId,
    $0.Name? name,
    $core.String? description,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory NewSpecsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewSpecsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewSpecsRequest clone() => NewSpecsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewSpecsRequest copyWith(void Function(NewSpecsRequest) updates) =>
      super.copyWith((message) => updates(message as NewSpecsRequest))
          as NewSpecsRequest; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(2)
  set dataId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(2)
  void clearDataId() => clearField(2);

  @$pb.TagNumber(3)
  $0.Name get name => $_getN(1);
  @$pb.TagNumber(3)
  set name($0.Name v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
  @$pb.TagNumber(3)
  $0.Name ensureName() => $_ensure(1);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(4)
  set description($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);
}

class NewSpecsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NewSpecsResponse',
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

  NewSpecsResponse._() : super();
  factory NewSpecsResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory NewSpecsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewSpecsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewSpecsResponse clone() => NewSpecsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewSpecsResponse copyWith(void Function(NewSpecsResponse) updates) =>
      super.copyWith((message) => updates(message as NewSpecsResponse))
          as NewSpecsResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListSpecsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dataId')
    ..hasRequiredFields = false;

  ListSpecsRequest._() : super();
  factory ListSpecsRequest({
    $core.String? dataId,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    return _result;
  }
  factory ListSpecsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSpecsRequest clone() => ListSpecsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSpecsRequest copyWith(void Function(ListSpecsRequest) updates) =>
      super.copyWith((message) => updates(message as ListSpecsRequest))
          as ListSpecsRequest; // ignore: deprecated_member_use
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
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);
}

class ListSpecsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListSpecsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'specses',
        $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  ListSpecsResponse._() : super();
  factory ListSpecsResponse({
    $core.Iterable<$core.List<$core.int>>? specses,
  }) {
    final _result = create();
    if (specses != null) {
      _result.specses.addAll(specses);
    }
    return _result;
  }
  factory ListSpecsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSpecsResponse clone() => ListSpecsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSpecsResponse copyWith(void Function(ListSpecsResponse) updates) =>
      super.copyWith((message) => updates(message as ListSpecsResponse))
          as ListSpecsResponse; // ignore: deprecated_member_use
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

class ListSpecsPrefabsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListSpecsPrefabsRequest',
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

  ListSpecsPrefabsRequest._() : super();
  factory ListSpecsPrefabsRequest({
    $core.String? specsId,
  }) {
    final _result = create();
    if (specsId != null) {
      _result.specsId = specsId;
    }
    return _result;
  }
  factory ListSpecsPrefabsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsPrefabsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as ListSpecsPrefabsRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListSpecsPrefabsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'prefabs',
        $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  ListSpecsPrefabsResponse._() : super();
  factory ListSpecsPrefabsResponse({
    $core.Iterable<$core.List<$core.int>>? prefabs,
  }) {
    final _result = create();
    if (prefabs != null) {
      _result.prefabs.addAll(prefabs);
    }
    return _result;
  }
  factory ListSpecsPrefabsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSpecsPrefabsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as ListSpecsPrefabsResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get prefabs => $_getList(0);
}
