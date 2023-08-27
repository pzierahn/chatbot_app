//
//  Generated code. Do not modify.
//  source: google/protobuf/descriptor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ExtensionRangeOptions_VerificationState extends $pb.ProtobufEnum {
  static const ExtensionRangeOptions_VerificationState DECLARATION = ExtensionRangeOptions_VerificationState._(0, _omitEnumNames ? '' : 'DECLARATION');
  static const ExtensionRangeOptions_VerificationState UNVERIFIED = ExtensionRangeOptions_VerificationState._(1, _omitEnumNames ? '' : 'UNVERIFIED');

  static const $core.List<ExtensionRangeOptions_VerificationState> values = <ExtensionRangeOptions_VerificationState> [
    DECLARATION,
    UNVERIFIED,
  ];

  static final $core.Map<$core.int, ExtensionRangeOptions_VerificationState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExtensionRangeOptions_VerificationState? valueOf($core.int value) => _byValue[value];

  const ExtensionRangeOptions_VerificationState._($core.int v, $core.String n) : super(v, n);
}

class FieldDescriptorProto_Type extends $pb.ProtobufEnum {
  static const FieldDescriptorProto_Type TYPE_DOUBLE = FieldDescriptorProto_Type._(1, _omitEnumNames ? '' : 'TYPE_DOUBLE');
  static const FieldDescriptorProto_Type TYPE_FLOAT = FieldDescriptorProto_Type._(2, _omitEnumNames ? '' : 'TYPE_FLOAT');
  static const FieldDescriptorProto_Type TYPE_INT64 = FieldDescriptorProto_Type._(3, _omitEnumNames ? '' : 'TYPE_INT64');
  static const FieldDescriptorProto_Type TYPE_UINT64 = FieldDescriptorProto_Type._(4, _omitEnumNames ? '' : 'TYPE_UINT64');
  static const FieldDescriptorProto_Type TYPE_INT32 = FieldDescriptorProto_Type._(5, _omitEnumNames ? '' : 'TYPE_INT32');
  static const FieldDescriptorProto_Type TYPE_FIXED64 = FieldDescriptorProto_Type._(6, _omitEnumNames ? '' : 'TYPE_FIXED64');
  static const FieldDescriptorProto_Type TYPE_FIXED32 = FieldDescriptorProto_Type._(7, _omitEnumNames ? '' : 'TYPE_FIXED32');
  static const FieldDescriptorProto_Type TYPE_BOOL = FieldDescriptorProto_Type._(8, _omitEnumNames ? '' : 'TYPE_BOOL');
  static const FieldDescriptorProto_Type TYPE_STRING = FieldDescriptorProto_Type._(9, _omitEnumNames ? '' : 'TYPE_STRING');
  static const FieldDescriptorProto_Type TYPE_GROUP = FieldDescriptorProto_Type._(10, _omitEnumNames ? '' : 'TYPE_GROUP');
  static const FieldDescriptorProto_Type TYPE_MESSAGE = FieldDescriptorProto_Type._(11, _omitEnumNames ? '' : 'TYPE_MESSAGE');
  static const FieldDescriptorProto_Type TYPE_BYTES = FieldDescriptorProto_Type._(12, _omitEnumNames ? '' : 'TYPE_BYTES');
  static const FieldDescriptorProto_Type TYPE_UINT32 = FieldDescriptorProto_Type._(13, _omitEnumNames ? '' : 'TYPE_UINT32');
  static const FieldDescriptorProto_Type TYPE_ENUM = FieldDescriptorProto_Type._(14, _omitEnumNames ? '' : 'TYPE_ENUM');
  static const FieldDescriptorProto_Type TYPE_SFIXED32 = FieldDescriptorProto_Type._(15, _omitEnumNames ? '' : 'TYPE_SFIXED32');
  static const FieldDescriptorProto_Type TYPE_SFIXED64 = FieldDescriptorProto_Type._(16, _omitEnumNames ? '' : 'TYPE_SFIXED64');
  static const FieldDescriptorProto_Type TYPE_SINT32 = FieldDescriptorProto_Type._(17, _omitEnumNames ? '' : 'TYPE_SINT32');
  static const FieldDescriptorProto_Type TYPE_SINT64 = FieldDescriptorProto_Type._(18, _omitEnumNames ? '' : 'TYPE_SINT64');

  static const $core.List<FieldDescriptorProto_Type> values = <FieldDescriptorProto_Type> [
    TYPE_DOUBLE,
    TYPE_FLOAT,
    TYPE_INT64,
    TYPE_UINT64,
    TYPE_INT32,
    TYPE_FIXED64,
    TYPE_FIXED32,
    TYPE_BOOL,
    TYPE_STRING,
    TYPE_GROUP,
    TYPE_MESSAGE,
    TYPE_BYTES,
    TYPE_UINT32,
    TYPE_ENUM,
    TYPE_SFIXED32,
    TYPE_SFIXED64,
    TYPE_SINT32,
    TYPE_SINT64,
  ];

  static final $core.Map<$core.int, FieldDescriptorProto_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FieldDescriptorProto_Type? valueOf($core.int value) => _byValue[value];

  const FieldDescriptorProto_Type._($core.int v, $core.String n) : super(v, n);
}

class FieldDescriptorProto_Label extends $pb.ProtobufEnum {
  static const FieldDescriptorProto_Label LABEL_OPTIONAL = FieldDescriptorProto_Label._(1, _omitEnumNames ? '' : 'LABEL_OPTIONAL');
  static const FieldDescriptorProto_Label LABEL_REQUIRED = FieldDescriptorProto_Label._(2, _omitEnumNames ? '' : 'LABEL_REQUIRED');
  static const FieldDescriptorProto_Label LABEL_REPEATED = FieldDescriptorProto_Label._(3, _omitEnumNames ? '' : 'LABEL_REPEATED');

  static const $core.List<FieldDescriptorProto_Label> values = <FieldDescriptorProto_Label> [
    LABEL_OPTIONAL,
    LABEL_REQUIRED,
    LABEL_REPEATED,
  ];

  static final $core.Map<$core.int, FieldDescriptorProto_Label> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FieldDescriptorProto_Label? valueOf($core.int value) => _byValue[value];

  const FieldDescriptorProto_Label._($core.int v, $core.String n) : super(v, n);
}

class FileOptions_OptimizeMode extends $pb.ProtobufEnum {
  static const FileOptions_OptimizeMode SPEED = FileOptions_OptimizeMode._(1, _omitEnumNames ? '' : 'SPEED');
  static const FileOptions_OptimizeMode CODE_SIZE = FileOptions_OptimizeMode._(2, _omitEnumNames ? '' : 'CODE_SIZE');
  static const FileOptions_OptimizeMode LITE_RUNTIME = FileOptions_OptimizeMode._(3, _omitEnumNames ? '' : 'LITE_RUNTIME');

  static const $core.List<FileOptions_OptimizeMode> values = <FileOptions_OptimizeMode> [
    SPEED,
    CODE_SIZE,
    LITE_RUNTIME,
  ];

  static final $core.Map<$core.int, FileOptions_OptimizeMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileOptions_OptimizeMode? valueOf($core.int value) => _byValue[value];

  const FileOptions_OptimizeMode._($core.int v, $core.String n) : super(v, n);
}

class FieldOptions_CType extends $pb.ProtobufEnum {
  static const FieldOptions_CType STRING = FieldOptions_CType._(0, _omitEnumNames ? '' : 'STRING');
  static const FieldOptions_CType CORD = FieldOptions_CType._(1, _omitEnumNames ? '' : 'CORD');
  static const FieldOptions_CType STRING_PIECE = FieldOptions_CType._(2, _omitEnumNames ? '' : 'STRING_PIECE');

  static const $core.List<FieldOptions_CType> values = <FieldOptions_CType> [
    STRING,
    CORD,
    STRING_PIECE,
  ];

  static final $core.Map<$core.int, FieldOptions_CType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FieldOptions_CType? valueOf($core.int value) => _byValue[value];

  const FieldOptions_CType._($core.int v, $core.String n) : super(v, n);
}

class FieldOptions_JSType extends $pb.ProtobufEnum {
  static const FieldOptions_JSType JS_NORMAL = FieldOptions_JSType._(0, _omitEnumNames ? '' : 'JS_NORMAL');
  static const FieldOptions_JSType JS_STRING = FieldOptions_JSType._(1, _omitEnumNames ? '' : 'JS_STRING');
  static const FieldOptions_JSType JS_NUMBER = FieldOptions_JSType._(2, _omitEnumNames ? '' : 'JS_NUMBER');

  static const $core.List<FieldOptions_JSType> values = <FieldOptions_JSType> [
    JS_NORMAL,
    JS_STRING,
    JS_NUMBER,
  ];

  static final $core.Map<$core.int, FieldOptions_JSType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FieldOptions_JSType? valueOf($core.int value) => _byValue[value];

  const FieldOptions_JSType._($core.int v, $core.String n) : super(v, n);
}

class FieldOptions_OptionRetention extends $pb.ProtobufEnum {
  static const FieldOptions_OptionRetention RETENTION_UNKNOWN = FieldOptions_OptionRetention._(0, _omitEnumNames ? '' : 'RETENTION_UNKNOWN');
  static const FieldOptions_OptionRetention RETENTION_RUNTIME = FieldOptions_OptionRetention._(1, _omitEnumNames ? '' : 'RETENTION_RUNTIME');
  static const FieldOptions_OptionRetention RETENTION_SOURCE = FieldOptions_OptionRetention._(2, _omitEnumNames ? '' : 'RETENTION_SOURCE');

  static const $core.List<FieldOptions_OptionRetention> values = <FieldOptions_OptionRetention> [
    RETENTION_UNKNOWN,
    RETENTION_RUNTIME,
    RETENTION_SOURCE,
  ];

  static final $core.Map<$core.int, FieldOptions_OptionRetention> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FieldOptions_OptionRetention? valueOf($core.int value) => _byValue[value];

  const FieldOptions_OptionRetention._($core.int v, $core.String n) : super(v, n);
}

class FieldOptions_OptionTargetType extends $pb.ProtobufEnum {
  static const FieldOptions_OptionTargetType TARGET_TYPE_UNKNOWN = FieldOptions_OptionTargetType._(0, _omitEnumNames ? '' : 'TARGET_TYPE_UNKNOWN');
  static const FieldOptions_OptionTargetType TARGET_TYPE_FILE = FieldOptions_OptionTargetType._(1, _omitEnumNames ? '' : 'TARGET_TYPE_FILE');
  static const FieldOptions_OptionTargetType TARGET_TYPE_EXTENSION_RANGE = FieldOptions_OptionTargetType._(2, _omitEnumNames ? '' : 'TARGET_TYPE_EXTENSION_RANGE');
  static const FieldOptions_OptionTargetType TARGET_TYPE_MESSAGE = FieldOptions_OptionTargetType._(3, _omitEnumNames ? '' : 'TARGET_TYPE_MESSAGE');
  static const FieldOptions_OptionTargetType TARGET_TYPE_FIELD = FieldOptions_OptionTargetType._(4, _omitEnumNames ? '' : 'TARGET_TYPE_FIELD');
  static const FieldOptions_OptionTargetType TARGET_TYPE_ONEOF = FieldOptions_OptionTargetType._(5, _omitEnumNames ? '' : 'TARGET_TYPE_ONEOF');
  static const FieldOptions_OptionTargetType TARGET_TYPE_ENUM = FieldOptions_OptionTargetType._(6, _omitEnumNames ? '' : 'TARGET_TYPE_ENUM');
  static const FieldOptions_OptionTargetType TARGET_TYPE_ENUM_ENTRY = FieldOptions_OptionTargetType._(7, _omitEnumNames ? '' : 'TARGET_TYPE_ENUM_ENTRY');
  static const FieldOptions_OptionTargetType TARGET_TYPE_SERVICE = FieldOptions_OptionTargetType._(8, _omitEnumNames ? '' : 'TARGET_TYPE_SERVICE');
  static const FieldOptions_OptionTargetType TARGET_TYPE_METHOD = FieldOptions_OptionTargetType._(9, _omitEnumNames ? '' : 'TARGET_TYPE_METHOD');

  static const $core.List<FieldOptions_OptionTargetType> values = <FieldOptions_OptionTargetType> [
    TARGET_TYPE_UNKNOWN,
    TARGET_TYPE_FILE,
    TARGET_TYPE_EXTENSION_RANGE,
    TARGET_TYPE_MESSAGE,
    TARGET_TYPE_FIELD,
    TARGET_TYPE_ONEOF,
    TARGET_TYPE_ENUM,
    TARGET_TYPE_ENUM_ENTRY,
    TARGET_TYPE_SERVICE,
    TARGET_TYPE_METHOD,
  ];

  static final $core.Map<$core.int, FieldOptions_OptionTargetType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FieldOptions_OptionTargetType? valueOf($core.int value) => _byValue[value];

  const FieldOptions_OptionTargetType._($core.int v, $core.String n) : super(v, n);
}

class MethodOptions_IdempotencyLevel extends $pb.ProtobufEnum {
  static const MethodOptions_IdempotencyLevel IDEMPOTENCY_UNKNOWN = MethodOptions_IdempotencyLevel._(0, _omitEnumNames ? '' : 'IDEMPOTENCY_UNKNOWN');
  static const MethodOptions_IdempotencyLevel NO_SIDE_EFFECTS = MethodOptions_IdempotencyLevel._(1, _omitEnumNames ? '' : 'NO_SIDE_EFFECTS');
  static const MethodOptions_IdempotencyLevel IDEMPOTENT = MethodOptions_IdempotencyLevel._(2, _omitEnumNames ? '' : 'IDEMPOTENT');

  static const $core.List<MethodOptions_IdempotencyLevel> values = <MethodOptions_IdempotencyLevel> [
    IDEMPOTENCY_UNKNOWN,
    NO_SIDE_EFFECTS,
    IDEMPOTENT,
  ];

  static final $core.Map<$core.int, MethodOptions_IdempotencyLevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MethodOptions_IdempotencyLevel? valueOf($core.int value) => _byValue[value];

  const MethodOptions_IdempotencyLevel._($core.int v, $core.String n) : super(v, n);
}

class GeneratedCodeInfo_Annotation_Semantic extends $pb.ProtobufEnum {
  static const GeneratedCodeInfo_Annotation_Semantic NONE = GeneratedCodeInfo_Annotation_Semantic._(0, _omitEnumNames ? '' : 'NONE');
  static const GeneratedCodeInfo_Annotation_Semantic SET = GeneratedCodeInfo_Annotation_Semantic._(1, _omitEnumNames ? '' : 'SET');
  static const GeneratedCodeInfo_Annotation_Semantic ALIAS = GeneratedCodeInfo_Annotation_Semantic._(2, _omitEnumNames ? '' : 'ALIAS');

  static const $core.List<GeneratedCodeInfo_Annotation_Semantic> values = <GeneratedCodeInfo_Annotation_Semantic> [
    NONE,
    SET,
    ALIAS,
  ];

  static final $core.Map<$core.int, GeneratedCodeInfo_Annotation_Semantic> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GeneratedCodeInfo_Annotation_Semantic? valueOf($core.int value) => _byValue[value];

  const GeneratedCodeInfo_Annotation_Semantic._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
