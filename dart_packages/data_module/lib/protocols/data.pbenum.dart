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

class DataType extends $pb.ProtobufEnum {
  static const DataType FileData = DataType._(0, _omitEnumNames ? '' : 'FileData');
  static const DataType SequenceData = DataType._(1, _omitEnumNames ? '' : 'SequenceData');
  static const DataType FileSetData = DataType._(2, _omitEnumNames ? '' : 'FileSetData');
  static const DataType DocumentData = DataType._(3, _omitEnumNames ? '' : 'DocumentData');
  static const DataType ImageData = DataType._(4, _omitEnumNames ? '' : 'ImageData');
  static const DataType VideoData = DataType._(5, _omitEnumNames ? '' : 'VideoData');

  static const $core.List<DataType> values = <DataType> [
    FileData,
    SequenceData,
    FileSetData,
    DocumentData,
    ImageData,
    VideoData,
  ];

  static final $core.Map<$core.int, DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataType? valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
