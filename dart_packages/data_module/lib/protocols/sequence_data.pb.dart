//
//  Generated code. Do not modify.
//  source: sequence_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// 序列数据信息
/// 文件名格式：prefix_name.pattern.type_suffix
class SequenceDataInfo extends $pb.GeneratedMessage {
  factory SequenceDataInfo({
    $core.String? prefixName,
    $fixnum.Int64? sequencePattern,
    $fixnum.Int64? typeSuffix,
    $fixnum.Int64? startIndex,
    $fixnum.Int64? endIndex,
    $fixnum.Int64? totalSize,
    $core.String? md5,
  }) {
    final $result = create();
    if (prefixName != null) {
      $result.prefixName = prefixName;
    }
    if (sequencePattern != null) {
      $result.sequencePattern = sequencePattern;
    }
    if (typeSuffix != null) {
      $result.typeSuffix = typeSuffix;
    }
    if (startIndex != null) {
      $result.startIndex = startIndex;
    }
    if (endIndex != null) {
      $result.endIndex = endIndex;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    if (md5 != null) {
      $result.md5 = md5;
    }
    return $result;
  }
  SequenceDataInfo._() : super();
  factory SequenceDataInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SequenceDataInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SequenceDataInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'prefixName')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'sequencePattern', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'typeSuffix', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'startIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'endIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(7, _omitFieldNames ? '' : 'md5')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SequenceDataInfo clone() => SequenceDataInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SequenceDataInfo copyWith(void Function(SequenceDataInfo) updates) => super.copyWith((message) => updates(message as SequenceDataInfo)) as SequenceDataInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceDataInfo create() => SequenceDataInfo._();
  SequenceDataInfo createEmptyInstance() => create();
  static $pb.PbList<SequenceDataInfo> createRepeated() => $pb.PbList<SequenceDataInfo>();
  @$core.pragma('dart2js:noInline')
  static SequenceDataInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SequenceDataInfo>(create);
  static SequenceDataInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get prefixName => $_getSZ(0);
  @$pb.TagNumber(1)
  set prefixName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrefixName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrefixName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sequencePattern => $_getI64(1);
  @$pb.TagNumber(2)
  set sequencePattern($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequencePattern() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequencePattern() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get typeSuffix => $_getI64(2);
  @$pb.TagNumber(3)
  set typeSuffix($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTypeSuffix() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypeSuffix() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get startIndex => $_getI64(3);
  @$pb.TagNumber(4)
  set startIndex($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartIndex() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get endIndex => $_getI64(4);
  @$pb.TagNumber(5)
  set endIndex($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndIndex() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalSize => $_getI64(5);
  @$pb.TagNumber(6)
  set totalSize($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalSize() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalSize() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get md5 => $_getSZ(6);
  @$pb.TagNumber(7)
  set md5($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMd5() => $_has(6);
  @$pb.TagNumber(7)
  void clearMd5() => clearField(7);
}

/// 上传文件序列
class SequenceDataUploadSequenceRequest extends $pb.GeneratedMessage {
  factory SequenceDataUploadSequenceRequest({
    $core.String? sequenceName,
    $core.String? serialPattern,
    $core.int? sequenceLength,
    $core.String? currentFile,
    $fixnum.Int64? totalChancks,
    $fixnum.Int64? currentChunck,
    $core.List<$core.int>? chunck,
    $core.String? dataId,
  }) {
    final $result = create();
    if (sequenceName != null) {
      $result.sequenceName = sequenceName;
    }
    if (serialPattern != null) {
      $result.serialPattern = serialPattern;
    }
    if (sequenceLength != null) {
      $result.sequenceLength = sequenceLength;
    }
    if (currentFile != null) {
      $result.currentFile = currentFile;
    }
    if (totalChancks != null) {
      $result.totalChancks = totalChancks;
    }
    if (currentChunck != null) {
      $result.currentChunck = currentChunck;
    }
    if (chunck != null) {
      $result.chunck = chunck;
    }
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  SequenceDataUploadSequenceRequest._() : super();
  factory SequenceDataUploadSequenceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SequenceDataUploadSequenceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SequenceDataUploadSequenceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sequenceName')
    ..aOS(2, _omitFieldNames ? '' : 'serialPattern')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'sequenceLength', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'currentFile')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'totalChancks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'currentChunck', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'chunck', $pb.PbFieldType.OY)
    ..aOS(8, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SequenceDataUploadSequenceRequest clone() => SequenceDataUploadSequenceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SequenceDataUploadSequenceRequest copyWith(void Function(SequenceDataUploadSequenceRequest) updates) => super.copyWith((message) => updates(message as SequenceDataUploadSequenceRequest)) as SequenceDataUploadSequenceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceDataUploadSequenceRequest create() => SequenceDataUploadSequenceRequest._();
  SequenceDataUploadSequenceRequest createEmptyInstance() => create();
  static $pb.PbList<SequenceDataUploadSequenceRequest> createRepeated() => $pb.PbList<SequenceDataUploadSequenceRequest>();
  @$core.pragma('dart2js:noInline')
  static SequenceDataUploadSequenceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SequenceDataUploadSequenceRequest>(create);
  static SequenceDataUploadSequenceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sequenceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sequenceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSequenceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSequenceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serialPattern => $_getSZ(1);
  @$pb.TagNumber(2)
  set serialPattern($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSerialPattern() => $_has(1);
  @$pb.TagNumber(2)
  void clearSerialPattern() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sequenceLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set sequenceLength($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSequenceLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearSequenceLength() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get currentFile => $_getSZ(3);
  @$pb.TagNumber(4)
  set currentFile($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrentFile() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentFile() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get totalChancks => $_getI64(4);
  @$pb.TagNumber(5)
  set totalChancks($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalChancks() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalChancks() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get currentChunck => $_getI64(5);
  @$pb.TagNumber(6)
  set currentChunck($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrentChunck() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentChunck() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get chunck => $_getN(6);
  @$pb.TagNumber(7)
  set chunck($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChunck() => $_has(6);
  @$pb.TagNumber(7)
  void clearChunck() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get dataId => $_getSZ(7);
  @$pb.TagNumber(8)
  set dataId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDataId() => $_has(7);
  @$pb.TagNumber(8)
  void clearDataId() => clearField(8);
}

class SequenceDataUploadSequenceResponse extends $pb.GeneratedMessage {
  factory SequenceDataUploadSequenceResponse({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  SequenceDataUploadSequenceResponse._() : super();
  factory SequenceDataUploadSequenceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SequenceDataUploadSequenceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SequenceDataUploadSequenceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SequenceDataUploadSequenceResponse clone() => SequenceDataUploadSequenceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SequenceDataUploadSequenceResponse copyWith(void Function(SequenceDataUploadSequenceResponse) updates) => super.copyWith((message) => updates(message as SequenceDataUploadSequenceResponse)) as SequenceDataUploadSequenceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceDataUploadSequenceResponse create() => SequenceDataUploadSequenceResponse._();
  SequenceDataUploadSequenceResponse createEmptyInstance() => create();
  static $pb.PbList<SequenceDataUploadSequenceResponse> createRepeated() => $pb.PbList<SequenceDataUploadSequenceResponse>();
  @$core.pragma('dart2js:noInline')
  static SequenceDataUploadSequenceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SequenceDataUploadSequenceResponse>(create);
  static SequenceDataUploadSequenceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 下载文件序列
class SequenceDataDownloadSequenceRequest extends $pb.GeneratedMessage {
  factory SequenceDataDownloadSequenceRequest({
    $core.String? dataId,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  SequenceDataDownloadSequenceRequest._() : super();
  factory SequenceDataDownloadSequenceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SequenceDataDownloadSequenceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SequenceDataDownloadSequenceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SequenceDataDownloadSequenceRequest clone() => SequenceDataDownloadSequenceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SequenceDataDownloadSequenceRequest copyWith(void Function(SequenceDataDownloadSequenceRequest) updates) => super.copyWith((message) => updates(message as SequenceDataDownloadSequenceRequest)) as SequenceDataDownloadSequenceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceDataDownloadSequenceRequest create() => SequenceDataDownloadSequenceRequest._();
  SequenceDataDownloadSequenceRequest createEmptyInstance() => create();
  static $pb.PbList<SequenceDataDownloadSequenceRequest> createRepeated() => $pb.PbList<SequenceDataDownloadSequenceRequest>();
  @$core.pragma('dart2js:noInline')
  static SequenceDataDownloadSequenceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SequenceDataDownloadSequenceRequest>(create);
  static SequenceDataDownloadSequenceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);
}

class SequenceDataDownloadSequenceResponse extends $pb.GeneratedMessage {
  factory SequenceDataDownloadSequenceResponse({
    $core.String? sequenceName,
    $core.String? serialPattern,
    $core.int? sequenceLength,
    $core.String? currentFile,
    $fixnum.Int64? totalChancks,
    $fixnum.Int64? currentChunck,
    $core.List<$core.int>? chunck,
    $core.String? dataId,
  }) {
    final $result = create();
    if (sequenceName != null) {
      $result.sequenceName = sequenceName;
    }
    if (serialPattern != null) {
      $result.serialPattern = serialPattern;
    }
    if (sequenceLength != null) {
      $result.sequenceLength = sequenceLength;
    }
    if (currentFile != null) {
      $result.currentFile = currentFile;
    }
    if (totalChancks != null) {
      $result.totalChancks = totalChancks;
    }
    if (currentChunck != null) {
      $result.currentChunck = currentChunck;
    }
    if (chunck != null) {
      $result.chunck = chunck;
    }
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  SequenceDataDownloadSequenceResponse._() : super();
  factory SequenceDataDownloadSequenceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SequenceDataDownloadSequenceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SequenceDataDownloadSequenceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'data.cashmere'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sequenceName')
    ..aOS(2, _omitFieldNames ? '' : 'serialPattern')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'sequenceLength', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'currentFile')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'totalChancks', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'currentChunck', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'chunck', $pb.PbFieldType.OY)
    ..aOS(8, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SequenceDataDownloadSequenceResponse clone() => SequenceDataDownloadSequenceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SequenceDataDownloadSequenceResponse copyWith(void Function(SequenceDataDownloadSequenceResponse) updates) => super.copyWith((message) => updates(message as SequenceDataDownloadSequenceResponse)) as SequenceDataDownloadSequenceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceDataDownloadSequenceResponse create() => SequenceDataDownloadSequenceResponse._();
  SequenceDataDownloadSequenceResponse createEmptyInstance() => create();
  static $pb.PbList<SequenceDataDownloadSequenceResponse> createRepeated() => $pb.PbList<SequenceDataDownloadSequenceResponse>();
  @$core.pragma('dart2js:noInline')
  static SequenceDataDownloadSequenceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SequenceDataDownloadSequenceResponse>(create);
  static SequenceDataDownloadSequenceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sequenceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sequenceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSequenceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSequenceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serialPattern => $_getSZ(1);
  @$pb.TagNumber(2)
  set serialPattern($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSerialPattern() => $_has(1);
  @$pb.TagNumber(2)
  void clearSerialPattern() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sequenceLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set sequenceLength($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSequenceLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearSequenceLength() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get currentFile => $_getSZ(3);
  @$pb.TagNumber(4)
  set currentFile($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrentFile() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentFile() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get totalChancks => $_getI64(4);
  @$pb.TagNumber(5)
  set totalChancks($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalChancks() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalChancks() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get currentChunck => $_getI64(5);
  @$pb.TagNumber(6)
  set currentChunck($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrentChunck() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentChunck() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get chunck => $_getN(6);
  @$pb.TagNumber(7)
  set chunck($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChunck() => $_has(6);
  @$pb.TagNumber(7)
  void clearChunck() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get dataId => $_getSZ(7);
  @$pb.TagNumber(8)
  set dataId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDataId() => $_has(7);
  @$pb.TagNumber(8)
  void clearDataId() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
