///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class DataType extends $pb.ProtobufEnum {
  static const DataType FileData = DataType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FileData');
  static const DataType SequenceData = DataType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SequenceData');
  static const DataType FileSetData = DataType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FileSetData');
  static const DataType DocumentData = DataType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DocumentData');

  static const $core.List<DataType> values = <DataType> [
    FileData,
    SequenceData,
    FileSetData,
    DocumentData,
  ];

  static final $core.Map<$core.int, DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataType? valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}

