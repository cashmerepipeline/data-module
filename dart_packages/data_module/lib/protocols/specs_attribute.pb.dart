//
//  Generated code. Do not modify.
//  source: specs_attribute.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:cashmere_core/protocols/name.pb.dart' as $0;

class NewSpecsAttributeRequest extends $pb.GeneratedMessage {
  factory NewSpecsAttributeRequest({
    $core.int? manageId,
    $0.Name? name,
    $core.String? dataType,
    $core.String? description,
    $core.List<$core.int>? defaultValue,
    $core.int? index,
  }) {
    final $result = create();
    if (manageId != null) {
      $result.manageId = manageId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (dataType != null) {
      $result.dataType = dataType;
    }
    if (description != null) {
      $result.description = description;
    }
    if (defaultValue != null) {
      $result.defaultValue = defaultValue;
    }
    if (index != null) {
      $result.index = index;
    }
    return $result;
  }
  NewSpecsAttributeRequest._() : super();
  factory NewSpecsAttributeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewSpecsAttributeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewSpecsAttributeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'manageId', $pb.PbFieldType.O3)
    ..aOM<$0.Name>(2, _omitFieldNames ? '' : 'name', subBuilder: $0.Name.create)
    ..aOS(3, _omitFieldNames ? '' : 'dataType')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'defaultValue', $pb.PbFieldType.OY)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'index', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewSpecsAttributeRequest clone() => NewSpecsAttributeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewSpecsAttributeRequest copyWith(void Function(NewSpecsAttributeRequest) updates) => super.copyWith((message) => updates(message as NewSpecsAttributeRequest)) as NewSpecsAttributeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewSpecsAttributeRequest create() => NewSpecsAttributeRequest._();
  NewSpecsAttributeRequest createEmptyInstance() => create();
  static $pb.PbList<NewSpecsAttributeRequest> createRepeated() => $pb.PbList<NewSpecsAttributeRequest>();
  @$core.pragma('dart2js:noInline')
  static NewSpecsAttributeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewSpecsAttributeRequest>(create);
  static NewSpecsAttributeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get manageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set manageId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearManageId() => clearField(1);

  @$pb.TagNumber(2)
  $0.Name get name => $_getN(1);
  @$pb.TagNumber(2)
  set name($0.Name v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
  @$pb.TagNumber(2)
  $0.Name ensureName() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get dataType => $_getSZ(2);
  @$pb.TagNumber(3)
  set dataType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataType() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get defaultValue => $_getN(4);
  @$pb.TagNumber(5)
  set defaultValue($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDefaultValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearDefaultValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get index => $_getIZ(5);
  @$pb.TagNumber(6)
  set index($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIndex() => $_has(5);
  @$pb.TagNumber(6)
  void clearIndex() => clearField(6);
}

class NewSpecsAttributeResponse extends $pb.GeneratedMessage {
  factory NewSpecsAttributeResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  NewSpecsAttributeResponse._() : super();
  factory NewSpecsAttributeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewSpecsAttributeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewSpecsAttributeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewSpecsAttributeResponse clone() => NewSpecsAttributeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewSpecsAttributeResponse copyWith(void Function(NewSpecsAttributeResponse) updates) => super.copyWith((message) => updates(message as NewSpecsAttributeResponse)) as NewSpecsAttributeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewSpecsAttributeResponse create() => NewSpecsAttributeResponse._();
  NewSpecsAttributeResponse createEmptyInstance() => create();
  static $pb.PbList<NewSpecsAttributeResponse> createRepeated() => $pb.PbList<NewSpecsAttributeResponse>();
  @$core.pragma('dart2js:noInline')
  static NewSpecsAttributeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewSpecsAttributeResponse>(create);
  static NewSpecsAttributeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class DeleteSpecsAttributeRequest extends $pb.GeneratedMessage {
  factory DeleteSpecsAttributeRequest({
    $core.int? manageId,
    $core.int? index,
  }) {
    final $result = create();
    if (manageId != null) {
      $result.manageId = manageId;
    }
    if (index != null) {
      $result.index = index;
    }
    return $result;
  }
  DeleteSpecsAttributeRequest._() : super();
  factory DeleteSpecsAttributeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSpecsAttributeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSpecsAttributeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'manageId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSpecsAttributeRequest clone() => DeleteSpecsAttributeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSpecsAttributeRequest copyWith(void Function(DeleteSpecsAttributeRequest) updates) => super.copyWith((message) => updates(message as DeleteSpecsAttributeRequest)) as DeleteSpecsAttributeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSpecsAttributeRequest create() => DeleteSpecsAttributeRequest._();
  DeleteSpecsAttributeRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSpecsAttributeRequest> createRepeated() => $pb.PbList<DeleteSpecsAttributeRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSpecsAttributeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSpecsAttributeRequest>(create);
  static DeleteSpecsAttributeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get manageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set manageId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearManageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
}

class DeleteSpecsAttributeResponse extends $pb.GeneratedMessage {
  factory DeleteSpecsAttributeResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  DeleteSpecsAttributeResponse._() : super();
  factory DeleteSpecsAttributeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSpecsAttributeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSpecsAttributeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSpecsAttributeResponse clone() => DeleteSpecsAttributeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSpecsAttributeResponse copyWith(void Function(DeleteSpecsAttributeResponse) updates) => super.copyWith((message) => updates(message as DeleteSpecsAttributeResponse)) as DeleteSpecsAttributeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSpecsAttributeResponse create() => DeleteSpecsAttributeResponse._();
  DeleteSpecsAttributeResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSpecsAttributeResponse> createRepeated() => $pb.PbList<DeleteSpecsAttributeResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSpecsAttributeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSpecsAttributeResponse>(create);
  static DeleteSpecsAttributeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class GetSpecsAttributesRequest extends $pb.GeneratedMessage {
  factory GetSpecsAttributesRequest({
    $core.int? manageId,
  }) {
    final $result = create();
    if (manageId != null) {
      $result.manageId = manageId;
    }
    return $result;
  }
  GetSpecsAttributesRequest._() : super();
  factory GetSpecsAttributesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSpecsAttributesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSpecsAttributesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'manageId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSpecsAttributesRequest clone() => GetSpecsAttributesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSpecsAttributesRequest copyWith(void Function(GetSpecsAttributesRequest) updates) => super.copyWith((message) => updates(message as GetSpecsAttributesRequest)) as GetSpecsAttributesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSpecsAttributesRequest create() => GetSpecsAttributesRequest._();
  GetSpecsAttributesRequest createEmptyInstance() => create();
  static $pb.PbList<GetSpecsAttributesRequest> createRepeated() => $pb.PbList<GetSpecsAttributesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSpecsAttributesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSpecsAttributesRequest>(create);
  static GetSpecsAttributesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get manageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set manageId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearManageId() => clearField(1);
}

class GetSpecsAttributesResponse extends $pb.GeneratedMessage {
  factory GetSpecsAttributesResponse({
    $core.Iterable<$core.List<$core.int>>? attributes,
  }) {
    final $result = create();
    if (attributes != null) {
      $result.attributes.addAll(attributes);
    }
    return $result;
  }
  GetSpecsAttributesResponse._() : super();
  factory GetSpecsAttributesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSpecsAttributesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSpecsAttributesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'attributes', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSpecsAttributesResponse clone() => GetSpecsAttributesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSpecsAttributesResponse copyWith(void Function(GetSpecsAttributesResponse) updates) => super.copyWith((message) => updates(message as GetSpecsAttributesResponse)) as GetSpecsAttributesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSpecsAttributesResponse create() => GetSpecsAttributesResponse._();
  GetSpecsAttributesResponse createEmptyInstance() => create();
  static $pb.PbList<GetSpecsAttributesResponse> createRepeated() => $pb.PbList<GetSpecsAttributesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSpecsAttributesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSpecsAttributesResponse>(create);
  static GetSpecsAttributesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get attributes => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
