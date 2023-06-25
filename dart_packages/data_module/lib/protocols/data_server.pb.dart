///
//  Generated code. Do not modify.
//  source: data_server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class DataServerConfigs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DataServerConfigs', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rootDirPath')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxFileSize', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxSetSize', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxSequenceLength', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxFileUploadNumber', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxFileDownloadNumber', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transferChunkSize', $pb.PbFieldType.OU3)
    ..m<$core.String, $core.String>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'internalRootDirMap', entryClassName: 'DataServerConfigs.InternalRootDirMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('data.cashmere'))
    ..hasRequiredFields = false
  ;

  DataServerConfigs._() : super();
  factory DataServerConfigs({
    $core.String? rootDirPath,
    $fixnum.Int64? maxFileSize,
    $core.int? maxSetSize,
    $fixnum.Int64? maxSequenceLength,
    $core.int? maxFileUploadNumber,
    $core.int? maxFileDownloadNumber,
    $core.int? transferChunkSize,
    $core.Map<$core.String, $core.String>? internalRootDirMap,
  }) {
    final _result = create();
    if (rootDirPath != null) {
      _result.rootDirPath = rootDirPath;
    }
    if (maxFileSize != null) {
      _result.maxFileSize = maxFileSize;
    }
    if (maxSetSize != null) {
      _result.maxSetSize = maxSetSize;
    }
    if (maxSequenceLength != null) {
      _result.maxSequenceLength = maxSequenceLength;
    }
    if (maxFileUploadNumber != null) {
      _result.maxFileUploadNumber = maxFileUploadNumber;
    }
    if (maxFileDownloadNumber != null) {
      _result.maxFileDownloadNumber = maxFileDownloadNumber;
    }
    if (transferChunkSize != null) {
      _result.transferChunkSize = transferChunkSize;
    }
    if (internalRootDirMap != null) {
      _result.internalRootDirMap.addAll(internalRootDirMap);
    }
    return _result;
  }
  factory DataServerConfigs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataServerConfigs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataServerConfigs clone() => DataServerConfigs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataServerConfigs copyWith(void Function(DataServerConfigs) updates) => super.copyWith((message) => updates(message as DataServerConfigs)) as DataServerConfigs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataServerConfigs create() => DataServerConfigs._();
  DataServerConfigs createEmptyInstance() => create();
  static $pb.PbList<DataServerConfigs> createRepeated() => $pb.PbList<DataServerConfigs>();
  @$core.pragma('dart2js:noInline')
  static DataServerConfigs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataServerConfigs>(create);
  static DataServerConfigs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rootDirPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set rootDirPath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRootDirPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootDirPath() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get maxFileSize => $_getI64(1);
  @$pb.TagNumber(2)
  set maxFileSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxFileSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxFileSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxSetSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxSetSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxSetSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxSetSize() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get maxSequenceLength => $_getI64(3);
  @$pb.TagNumber(4)
  set maxSequenceLength($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxSequenceLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxSequenceLength() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get maxFileUploadNumber => $_getIZ(4);
  @$pb.TagNumber(5)
  set maxFileUploadNumber($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaxFileUploadNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxFileUploadNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get maxFileDownloadNumber => $_getIZ(5);
  @$pb.TagNumber(6)
  set maxFileDownloadNumber($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaxFileDownloadNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxFileDownloadNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get transferChunkSize => $_getIZ(6);
  @$pb.TagNumber(7)
  set transferChunkSize($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTransferChunkSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearTransferChunkSize() => clearField(7);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.String> get internalRootDirMap => $_getMap(7);
}

class GetDataServerConfigsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDataServerConfigsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetDataServerConfigsRequest._() : super();
  factory GetDataServerConfigsRequest() => create();
  factory GetDataServerConfigsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDataServerConfigsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDataServerConfigsRequest clone() => GetDataServerConfigsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDataServerConfigsRequest copyWith(void Function(GetDataServerConfigsRequest) updates) => super.copyWith((message) => updates(message as GetDataServerConfigsRequest)) as GetDataServerConfigsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDataServerConfigsRequest create() => GetDataServerConfigsRequest._();
  GetDataServerConfigsRequest createEmptyInstance() => create();
  static $pb.PbList<GetDataServerConfigsRequest> createRepeated() => $pb.PbList<GetDataServerConfigsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDataServerConfigsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDataServerConfigsRequest>(create);
  static GetDataServerConfigsRequest? _defaultInstance;
}

class GetDataServerConfigsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDataServerConfigsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOM<DataServerConfigs>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configs', subBuilder: DataServerConfigs.create)
    ..hasRequiredFields = false
  ;

  GetDataServerConfigsResponse._() : super();
  factory GetDataServerConfigsResponse({
    DataServerConfigs? configs,
  }) {
    final _result = create();
    if (configs != null) {
      _result.configs = configs;
    }
    return _result;
  }
  factory GetDataServerConfigsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDataServerConfigsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDataServerConfigsResponse clone() => GetDataServerConfigsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDataServerConfigsResponse copyWith(void Function(GetDataServerConfigsResponse) updates) => super.copyWith((message) => updates(message as GetDataServerConfigsResponse)) as GetDataServerConfigsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDataServerConfigsResponse create() => GetDataServerConfigsResponse._();
  GetDataServerConfigsResponse createEmptyInstance() => create();
  static $pb.PbList<GetDataServerConfigsResponse> createRepeated() => $pb.PbList<GetDataServerConfigsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDataServerConfigsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDataServerConfigsResponse>(create);
  static GetDataServerConfigsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DataServerConfigs get configs => $_getN(0);
  @$pb.TagNumber(1)
  set configs(DataServerConfigs v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfigs() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfigs() => clearField(1);
  @$pb.TagNumber(1)
  DataServerConfigs ensureConfigs() => $_ensure(0);
}

