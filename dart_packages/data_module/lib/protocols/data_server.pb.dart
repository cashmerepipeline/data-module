//
//  Generated code. Do not modify.
//  source: data_server.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class DataServerConfigs extends $pb.GeneratedMessage {
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
    final $result = create();
    if (rootDirPath != null) {
      $result.rootDirPath = rootDirPath;
    }
    if (maxFileSize != null) {
      $result.maxFileSize = maxFileSize;
    }
    if (maxSetSize != null) {
      $result.maxSetSize = maxSetSize;
    }
    if (maxSequenceLength != null) {
      $result.maxSequenceLength = maxSequenceLength;
    }
    if (maxFileUploadNumber != null) {
      $result.maxFileUploadNumber = maxFileUploadNumber;
    }
    if (maxFileDownloadNumber != null) {
      $result.maxFileDownloadNumber = maxFileDownloadNumber;
    }
    if (transferChunkSize != null) {
      $result.transferChunkSize = transferChunkSize;
    }
    if (internalRootDirMap != null) {
      $result.internalRootDirMap.addAll(internalRootDirMap);
    }
    return $result;
  }
  DataServerConfigs._() : super();
  factory DataServerConfigs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataServerConfigs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataServerConfigs', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rootDirPath')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'maxFileSize', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'maxSetSize', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'maxSequenceLength', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'maxFileUploadNumber', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'maxFileDownloadNumber', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'transferChunkSize', $pb.PbFieldType.OU3)
    ..m<$core.String, $core.String>(8, _omitFieldNames ? '' : 'internalRootDirMap', entryClassName: 'DataServerConfigs.InternalRootDirMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('data.cashmere'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataServerConfigs clone() => DataServerConfigs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataServerConfigs copyWith(void Function(DataServerConfigs) updates) => super.copyWith((message) => updates(message as DataServerConfigs)) as DataServerConfigs;

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

  /// 文件最大大小, 16MB
  @$pb.TagNumber(2)
  $fixnum.Int64 get maxFileSize => $_getI64(1);
  @$pb.TagNumber(2)
  set maxFileSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxFileSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxFileSize() => clearField(2);

  /// 文件集最大数量, 1000
  @$pb.TagNumber(3)
  $core.int get maxSetSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxSetSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxSetSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxSetSize() => clearField(3);

  /// 文件序列最大数量
  @$pb.TagNumber(4)
  $fixnum.Int64 get maxSequenceLength => $_getI64(3);
  @$pb.TagNumber(4)
  set maxSequenceLength($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxSequenceLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxSequenceLength() => clearField(4);

  /// 最大文件上传连接
  @$pb.TagNumber(5)
  $core.int get maxFileUploadNumber => $_getIZ(4);
  @$pb.TagNumber(5)
  set maxFileUploadNumber($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaxFileUploadNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxFileUploadNumber() => clearField(5);

  /// 最大文件下载连接
  @$pb.TagNumber(6)
  $core.int get maxFileDownloadNumber => $_getIZ(5);
  @$pb.TagNumber(6)
  set maxFileDownloadNumber($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaxFileDownloadNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxFileDownloadNumber() => clearField(6);

  /// 块最大大小，1024*128=128KB
  @$pb.TagNumber(7)
  $core.int get transferChunkSize => $_getIZ(6);
  @$pb.TagNumber(7)
  set transferChunkSize($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTransferChunkSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearTransferChunkSize() => clearField(7);

  /// 内部文件路径，不需要通过服务器上传文件, 可将文件直接存储到目标位置
  /// {"windows"="X:/data_root/dir", "linux"="/mnt/data_root/dir", "macos" = "/mnt/data_root/dir"}
  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.String> get internalRootDirMap => $_getMap(7);
}

/// 取得数据服务设置
class GetDataServerConfigsRequest extends $pb.GeneratedMessage {
  factory GetDataServerConfigsRequest() => create();
  GetDataServerConfigsRequest._() : super();
  factory GetDataServerConfigsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDataServerConfigsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDataServerConfigsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDataServerConfigsRequest clone() => GetDataServerConfigsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDataServerConfigsRequest copyWith(void Function(GetDataServerConfigsRequest) updates) => super.copyWith((message) => updates(message as GetDataServerConfigsRequest)) as GetDataServerConfigsRequest;

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
  factory GetDataServerConfigsResponse({
    DataServerConfigs? configs,
  }) {
    final $result = create();
    if (configs != null) {
      $result.configs = configs;
    }
    return $result;
  }
  GetDataServerConfigsResponse._() : super();
  factory GetDataServerConfigsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDataServerConfigsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDataServerConfigsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOM<DataServerConfigs>(1, _omitFieldNames ? '' : 'configs', subBuilder: DataServerConfigs.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDataServerConfigsResponse clone() => GetDataServerConfigsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDataServerConfigsResponse copyWith(void Function(GetDataServerConfigsResponse) updates) => super.copyWith((message) => updates(message as GetDataServerConfigsResponse)) as GetDataServerConfigsResponse;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
