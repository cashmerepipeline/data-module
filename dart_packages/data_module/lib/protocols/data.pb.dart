//
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'data_type.pbenum.dart' as $1;
import 'package:cashmere_core/protocols/name.pb.dart' as $0;

class DataInfo extends $pb.GeneratedMessage {
  factory DataInfo({
    $1.DataType? dataType,
    $core.String? specsId,
    $core.Iterable<$core.String>? stages,
  }) {
    final $result = create();
    if (dataType != null) {
      $result.dataType = dataType;
    }
    if (specsId != null) {
      $result.specsId = specsId;
    }
    if (stages != null) {
      $result.stages.addAll(stages);
    }
    return $result;
  }
  DataInfo._() : super();
  factory DataInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..e<$1.DataType>(1, _omitFieldNames ? '' : 'dataType', $pb.PbFieldType.OE, defaultOrMaker: $1.DataType.FileData, valueOf: $1.DataType.valueOf, enumValues: $1.DataType.values)
    ..aOS(2, _omitFieldNames ? '' : 'specsId')
    ..pPS(3, _omitFieldNames ? '' : 'stages')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataInfo clone() => DataInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataInfo copyWith(void Function(DataInfo) updates) => super.copyWith((message) => updates(message as DataInfo)) as DataInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataInfo create() => DataInfo._();
  DataInfo createEmptyInstance() => create();
  static $pb.PbList<DataInfo> createRepeated() => $pb.PbList<DataInfo>();
  @$core.pragma('dart2js:noInline')
  static DataInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataInfo>(create);
  static DataInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $1.DataType get dataType => $_getN(0);
  @$pb.TagNumber(1)
  set dataType($1.DataType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get specsId => $_getSZ(1);
  @$pb.TagNumber(2)
  set specsId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpecsId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpecsId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get stages => $_getList(2);
}

/// 新建数据
class NewDataRequest extends $pb.GeneratedMessage {
  factory NewDataRequest({
    $0.Name? name,
    $1.DataType? dataType,
    $core.String? specsId,
    $core.String? mark,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (dataType != null) {
      $result.dataType = dataType;
    }
    if (specsId != null) {
      $result.specsId = specsId;
    }
    if (mark != null) {
      $result.mark = mark;
    }
    return $result;
  }
  NewDataRequest._() : super();
  factory NewDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOM<$0.Name>(1, _omitFieldNames ? '' : 'name', subBuilder: $0.Name.create)
    ..e<$1.DataType>(2, _omitFieldNames ? '' : 'dataType', $pb.PbFieldType.OE, defaultOrMaker: $1.DataType.FileData, valueOf: $1.DataType.valueOf, enumValues: $1.DataType.values)
    ..aOS(3, _omitFieldNames ? '' : 'specsId')
    ..aOS(4, _omitFieldNames ? '' : 'mark')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewDataRequest clone() => NewDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewDataRequest copyWith(void Function(NewDataRequest) updates) => super.copyWith((message) => updates(message as NewDataRequest)) as NewDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewDataRequest create() => NewDataRequest._();
  NewDataRequest createEmptyInstance() => create();
  static $pb.PbList<NewDataRequest> createRepeated() => $pb.PbList<NewDataRequest>();
  @$core.pragma('dart2js:noInline')
  static NewDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewDataRequest>(create);
  static NewDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Name get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($0.Name v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
  @$pb.TagNumber(1)
  $0.Name ensureName() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.DataType get dataType => $_getN(1);
  @$pb.TagNumber(2)
  set dataType($1.DataType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDataType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get specsId => $_getSZ(2);
  @$pb.TagNumber(3)
  set specsId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpecsId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpecsId() => clearField(3);

  /// zh: 用于同一规格下不同数据分离标记
  @$pb.TagNumber(4)
  $core.String get mark => $_getSZ(3);
  @$pb.TagNumber(4)
  set mark($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMark() => $_has(3);
  @$pb.TagNumber(4)
  void clearMark() => clearField(4);
}

class NewDataResponse extends $pb.GeneratedMessage {
  factory NewDataResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  NewDataResponse._() : super();
  factory NewDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewDataResponse clone() => NewDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewDataResponse copyWith(void Function(NewDataResponse) updates) => super.copyWith((message) => updates(message as NewDataResponse)) as NewDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewDataResponse create() => NewDataResponse._();
  NewDataResponse createEmptyInstance() => create();
  static $pb.PbList<NewDataResponse> createRepeated() => $pb.PbList<NewDataResponse>();
  @$core.pragma('dart2js:noInline')
  static NewDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewDataResponse>(create);
  static NewDataResponse? _defaultInstance;

  /// 成功返回新id，失败返回错误
  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 取得数据信息
class GetDataInfoRequest extends $pb.GeneratedMessage {
  factory GetDataInfoRequest({
    $core.String? dataId,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  GetDataInfoRequest._() : super();
  factory GetDataInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDataInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDataInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDataInfoRequest clone() => GetDataInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDataInfoRequest copyWith(void Function(GetDataInfoRequest) updates) => super.copyWith((message) => updates(message as GetDataInfoRequest)) as GetDataInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDataInfoRequest create() => GetDataInfoRequest._();
  GetDataInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetDataInfoRequest> createRepeated() => $pb.PbList<GetDataInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDataInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDataInfoRequest>(create);
  static GetDataInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);
}

class GetDataInfoResponse extends $pb.GeneratedMessage {
  factory GetDataInfoResponse({
    DataInfo? dataInfo,
  }) {
    final $result = create();
    if (dataInfo != null) {
      $result.dataInfo = dataInfo;
    }
    return $result;
  }
  GetDataInfoResponse._() : super();
  factory GetDataInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDataInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDataInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOM<DataInfo>(1, _omitFieldNames ? '' : 'dataInfo', subBuilder: DataInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDataInfoResponse clone() => GetDataInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDataInfoResponse copyWith(void Function(GetDataInfoResponse) updates) => super.copyWith((message) => updates(message as GetDataInfoResponse)) as GetDataInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDataInfoResponse create() => GetDataInfoResponse._();
  GetDataInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetDataInfoResponse> createRepeated() => $pb.PbList<GetDataInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDataInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDataInfoResponse>(create);
  static GetDataInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DataInfo get dataInfo => $_getN(0);
  @$pb.TagNumber(1)
  set dataInfo(DataInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataInfo() => clearField(1);
  @$pb.TagNumber(1)
  DataInfo ensureDataInfo() => $_ensure(0);
}

/// 删除数据
class MarkDataRemovedRequest extends $pb.GeneratedMessage {
  factory MarkDataRemovedRequest({
    $core.String? dataId,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  MarkDataRemovedRequest._() : super();
  factory MarkDataRemovedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarkDataRemovedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MarkDataRemovedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarkDataRemovedRequest clone() => MarkDataRemovedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarkDataRemovedRequest copyWith(void Function(MarkDataRemovedRequest) updates) => super.copyWith((message) => updates(message as MarkDataRemovedRequest)) as MarkDataRemovedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarkDataRemovedRequest create() => MarkDataRemovedRequest._();
  MarkDataRemovedRequest createEmptyInstance() => create();
  static $pb.PbList<MarkDataRemovedRequest> createRepeated() => $pb.PbList<MarkDataRemovedRequest>();
  @$core.pragma('dart2js:noInline')
  static MarkDataRemovedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarkDataRemovedRequest>(create);
  static MarkDataRemovedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);
}

class MarkDataRemovedResponse extends $pb.GeneratedMessage {
  factory MarkDataRemovedResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  MarkDataRemovedResponse._() : super();
  factory MarkDataRemovedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarkDataRemovedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MarkDataRemovedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarkDataRemovedResponse clone() => MarkDataRemovedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarkDataRemovedResponse copyWith(void Function(MarkDataRemovedResponse) updates) => super.copyWith((message) => updates(message as MarkDataRemovedResponse)) as MarkDataRemovedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarkDataRemovedResponse create() => MarkDataRemovedResponse._();
  MarkDataRemovedResponse createEmptyInstance() => create();
  static $pb.PbList<MarkDataRemovedResponse> createRepeated() => $pb.PbList<MarkDataRemovedResponse>();
  @$core.pragma('dart2js:noInline')
  static MarkDataRemovedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarkDataRemovedResponse>(create);
  static MarkDataRemovedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
