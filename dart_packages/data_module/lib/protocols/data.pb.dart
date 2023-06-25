///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:cashmere_core/protocols/name.pb.dart' as $0;

import 'data.pbenum.dart';

export 'data.pbenum.dart';

class DataInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DataInfo',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..e<DataType>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dataType',
        $pb.PbFieldType.OE,
        defaultOrMaker: DataType.FileData,
        valueOf: DataType.valueOf,
        enumValues: DataType.values)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ownerManageId',
        $pb.PbFieldType.O3)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ownerEntityId')
    ..pPS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'specs')
    ..hasRequiredFields = false;

  DataInfo._() : super();
  factory DataInfo({
    DataType? dataType,
    $core.int? ownerManageId,
    $core.String? ownerEntityId,
    $core.Iterable<$core.String>? specs,
  }) {
    final _result = create();
    if (dataType != null) {
      _result.dataType = dataType;
    }
    if (ownerManageId != null) {
      _result.ownerManageId = ownerManageId;
    }
    if (ownerEntityId != null) {
      _result.ownerEntityId = ownerEntityId;
    }
    if (specs != null) {
      _result.specs.addAll(specs);
    }
    return _result;
  }
  factory DataInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DataInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DataInfo clone() => DataInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DataInfo copyWith(void Function(DataInfo) updates) =>
      super.copyWith((message) => updates(message as DataInfo))
          as DataInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataInfo create() => DataInfo._();
  DataInfo createEmptyInstance() => create();
  static $pb.PbList<DataInfo> createRepeated() => $pb.PbList<DataInfo>();
  @$core.pragma('dart2js:noInline')
  static DataInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataInfo>(create);
  static DataInfo? _defaultInstance;

  @$pb.TagNumber(1)
  DataType get dataType => $_getN(0);
  @$pb.TagNumber(1)
  set dataType(DataType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDataType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataType() => clearField(1);

  @$pb.TagNumber(3)
  $core.int get ownerManageId => $_getIZ(1);
  @$pb.TagNumber(3)
  set ownerManageId($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOwnerManageId() => $_has(1);
  @$pb.TagNumber(3)
  void clearOwnerManageId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get ownerEntityId => $_getSZ(2);
  @$pb.TagNumber(4)
  set ownerEntityId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOwnerEntityId() => $_has(2);
  @$pb.TagNumber(4)
  void clearOwnerEntityId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get specs => $_getList(3);
}

class NewDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NewDataRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOM<$0.Name>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name',
        subBuilder: $0.Name.create)
    ..e<DataType>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dataType',
        $pb.PbFieldType.OE,
        defaultOrMaker: DataType.FileData,
        valueOf: DataType.valueOf,
        enumValues: DataType.values)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ownerManageId',
        $pb.PbFieldType.O3)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ownerEntityId')
    ..hasRequiredFields = false;

  NewDataRequest._() : super();
  factory NewDataRequest({
    $0.Name? name,
    DataType? dataType,
    $core.int? ownerManageId,
    $core.String? ownerEntityId,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (dataType != null) {
      _result.dataType = dataType;
    }
    if (ownerManageId != null) {
      _result.ownerManageId = ownerManageId;
    }
    if (ownerEntityId != null) {
      _result.ownerEntityId = ownerEntityId;
    }
    return _result;
  }
  factory NewDataRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewDataRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewDataRequest clone() => NewDataRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewDataRequest copyWith(void Function(NewDataRequest) updates) =>
      super.copyWith((message) => updates(message as NewDataRequest))
          as NewDataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewDataRequest create() => NewDataRequest._();
  NewDataRequest createEmptyInstance() => create();
  static $pb.PbList<NewDataRequest> createRepeated() =>
      $pb.PbList<NewDataRequest>();
  @$core.pragma('dart2js:noInline')
  static NewDataRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NewDataRequest>(create);
  static NewDataRequest? _defaultInstance;

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
  DataType get dataType => $_getN(1);
  @$pb.TagNumber(2)
  set dataType(DataType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDataType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get ownerManageId => $_getIZ(2);
  @$pb.TagNumber(3)
  set ownerManageId($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOwnerManageId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwnerManageId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get ownerEntityId => $_getSZ(3);
  @$pb.TagNumber(4)
  set ownerEntityId($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOwnerEntityId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwnerEntityId() => clearField(4);
}

class NewDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NewDataResponse',
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

  NewDataResponse._() : super();
  factory NewDataResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory NewDataResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewDataResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewDataResponse clone() => NewDataResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewDataResponse copyWith(void Function(NewDataResponse) updates) =>
      super.copyWith((message) => updates(message as NewDataResponse))
          as NewDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewDataResponse create() => NewDataResponse._();
  NewDataResponse createEmptyInstance() => create();
  static $pb.PbList<NewDataResponse> createRepeated() =>
      $pb.PbList<NewDataResponse>();
  @$core.pragma('dart2js:noInline')
  static NewDataResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NewDataResponse>(create);
  static NewDataResponse? _defaultInstance;

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

class GetDataInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetDataInfoRequest',
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

  GetDataInfoRequest._() : super();
  factory GetDataInfoRequest({
    $core.String? dataId,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    return _result;
  }
  factory GetDataInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetDataInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetDataInfoRequest clone() => GetDataInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetDataInfoRequest copyWith(void Function(GetDataInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetDataInfoRequest))
          as GetDataInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDataInfoRequest create() => GetDataInfoRequest._();
  GetDataInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetDataInfoRequest> createRepeated() =>
      $pb.PbList<GetDataInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDataInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDataInfoRequest>(create);
  static GetDataInfoRequest? _defaultInstance;

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

class GetDataInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetDataInfoResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..aOM<DataInfo>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dataInfo',
        subBuilder: DataInfo.create)
    ..hasRequiredFields = false;

  GetDataInfoResponse._() : super();
  factory GetDataInfoResponse({
    DataInfo? dataInfo,
  }) {
    final _result = create();
    if (dataInfo != null) {
      _result.dataInfo = dataInfo;
    }
    return _result;
  }
  factory GetDataInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetDataInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetDataInfoResponse clone() => GetDataInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetDataInfoResponse copyWith(void Function(GetDataInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetDataInfoResponse))
          as GetDataInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDataInfoResponse create() => GetDataInfoResponse._();
  GetDataInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetDataInfoResponse> createRepeated() =>
      $pb.PbList<GetDataInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDataInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDataInfoResponse>(create);
  static GetDataInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DataInfo get dataInfo => $_getN(0);
  @$pb.TagNumber(1)
  set dataInfo(DataInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDataInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataInfo() => clearField(1);
  @$pb.TagNumber(1)
  DataInfo ensureDataInfo() => $_ensure(0);
}

class MarkDataRemovedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MarkDataRemovedRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ownerManageId',
        $pb.PbFieldType.O3)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ownerEntityId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dataId')
    ..hasRequiredFields = false;

  MarkDataRemovedRequest._() : super();
  factory MarkDataRemovedRequest({
    $core.int? ownerManageId,
    $core.String? ownerEntityId,
    $core.String? dataId,
  }) {
    final _result = create();
    if (ownerManageId != null) {
      _result.ownerManageId = ownerManageId;
    }
    if (ownerEntityId != null) {
      _result.ownerEntityId = ownerEntityId;
    }
    if (dataId != null) {
      _result.dataId = dataId;
    }
    return _result;
  }
  factory MarkDataRemovedRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MarkDataRemovedRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MarkDataRemovedRequest clone() =>
      MarkDataRemovedRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MarkDataRemovedRequest copyWith(
          void Function(MarkDataRemovedRequest) updates) =>
      super.copyWith((message) => updates(message as MarkDataRemovedRequest))
          as MarkDataRemovedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarkDataRemovedRequest create() => MarkDataRemovedRequest._();
  MarkDataRemovedRequest createEmptyInstance() => create();
  static $pb.PbList<MarkDataRemovedRequest> createRepeated() =>
      $pb.PbList<MarkDataRemovedRequest>();
  @$core.pragma('dart2js:noInline')
  static MarkDataRemovedRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MarkDataRemovedRequest>(create);
  static MarkDataRemovedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get ownerManageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set ownerManageId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOwnerManageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnerManageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerEntityId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerEntityId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOwnerEntityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerEntityId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dataId => $_getSZ(2);
  @$pb.TagNumber(3)
  set dataId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDataId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataId() => clearField(3);
}

class MarkDataRemovedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MarkDataRemovedResponse',
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

  MarkDataRemovedResponse._() : super();
  factory MarkDataRemovedResponse({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory MarkDataRemovedResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MarkDataRemovedResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MarkDataRemovedResponse clone() =>
      MarkDataRemovedResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MarkDataRemovedResponse copyWith(
          void Function(MarkDataRemovedResponse) updates) =>
      super.copyWith((message) => updates(message as MarkDataRemovedResponse))
          as MarkDataRemovedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarkDataRemovedResponse create() => MarkDataRemovedResponse._();
  MarkDataRemovedResponse createEmptyInstance() => create();
  static $pb.PbList<MarkDataRemovedResponse> createRepeated() =>
      $pb.PbList<MarkDataRemovedResponse>();
  @$core.pragma('dart2js:noInline')
  static MarkDataRemovedResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MarkDataRemovedResponse>(create);
  static MarkDataRemovedResponse? _defaultInstance;

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

class ListEntityDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListEntityDataRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'manageId',
        $pb.PbFieldType.O3)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'entityId')
    ..hasRequiredFields = false;

  ListEntityDataRequest._() : super();
  factory ListEntityDataRequest({
    $core.int? manageId,
    $core.String? entityId,
  }) {
    final _result = create();
    if (manageId != null) {
      _result.manageId = manageId;
    }
    if (entityId != null) {
      _result.entityId = entityId;
    }
    return _result;
  }
  factory ListEntityDataRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListEntityDataRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListEntityDataRequest clone() =>
      ListEntityDataRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListEntityDataRequest copyWith(
          void Function(ListEntityDataRequest) updates) =>
      super.copyWith((message) => updates(message as ListEntityDataRequest))
          as ListEntityDataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListEntityDataRequest create() => ListEntityDataRequest._();
  ListEntityDataRequest createEmptyInstance() => create();
  static $pb.PbList<ListEntityDataRequest> createRepeated() =>
      $pb.PbList<ListEntityDataRequest>();
  @$core.pragma('dart2js:noInline')
  static ListEntityDataRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEntityDataRequest>(create);
  static ListEntityDataRequest? _defaultInstance;

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
}

class ListEntityDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListEntityDataResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'data.cashmere'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dataIds')
    ..hasRequiredFields = false;

  ListEntityDataResponse._() : super();
  factory ListEntityDataResponse({
    $core.Iterable<$core.String>? dataIds,
  }) {
    final _result = create();
    if (dataIds != null) {
      _result.dataIds.addAll(dataIds);
    }
    return _result;
  }
  factory ListEntityDataResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListEntityDataResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListEntityDataResponse clone() =>
      ListEntityDataResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListEntityDataResponse copyWith(
          void Function(ListEntityDataResponse) updates) =>
      super.copyWith((message) => updates(message as ListEntityDataResponse))
          as ListEntityDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListEntityDataResponse create() => ListEntityDataResponse._();
  ListEntityDataResponse createEmptyInstance() => create();
  static $pb.PbList<ListEntityDataResponse> createRepeated() =>
      $pb.PbList<ListEntityDataResponse>();
  @$core.pragma('dart2js:noInline')
  static ListEntityDataResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEntityDataResponse>(create);
  static ListEntityDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get dataIds => $_getList(0);
}
