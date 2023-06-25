///
//  Generated code. Do not modify.
//  source: set_data_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'file_info.pb.dart' as $0;

class SetDataInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetDataInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSize', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$0.FileInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileInfos', $pb.PbFieldType.PM, subBuilder: $0.FileInfo.create)
    ..hasRequiredFields = false
  ;

  SetDataInfo._() : super();
  factory SetDataInfo({
    $core.String? dataId,
    $fixnum.Int64? totalSize,
    $core.Iterable<$0.FileInfo>? fileInfos,
  }) {
    final _result = create();
    if (dataId != null) {
      _result.dataId = dataId;
    }
    if (totalSize != null) {
      _result.totalSize = totalSize;
    }
    if (fileInfos != null) {
      _result.fileInfos.addAll(fileInfos);
    }
    return _result;
  }
  factory SetDataInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDataInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDataInfo clone() => SetDataInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDataInfo copyWith(void Function(SetDataInfo) updates) => super.copyWith((message) => updates(message as SetDataInfo)) as SetDataInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetDataInfo create() => SetDataInfo._();
  SetDataInfo createEmptyInstance() => create();
  static $pb.PbList<SetDataInfo> createRepeated() => $pb.PbList<SetDataInfo>();
  @$core.pragma('dart2js:noInline')
  static SetDataInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDataInfo>(create);
  static SetDataInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get totalSize => $_getI64(1);
  @$pb.TagNumber(2)
  set totalSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$0.FileInfo> get fileInfos => $_getList(2);
}

