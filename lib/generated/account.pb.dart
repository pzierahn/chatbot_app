//
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ModelUsages_Usage extends $pb.GeneratedMessage {
  factory ModelUsages_Usage() => create();
  ModelUsages_Usage._() : super();
  factory ModelUsages_Usage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelUsages_Usage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelUsages.Usage', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.account.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'model')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'input', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'output', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModelUsages_Usage clone() => ModelUsages_Usage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelUsages_Usage copyWith(void Function(ModelUsages_Usage) updates) => super.copyWith((message) => updates(message as ModelUsages_Usage)) as ModelUsages_Usage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModelUsages_Usage create() => ModelUsages_Usage._();
  ModelUsages_Usage createEmptyInstance() => create();
  static $pb.PbList<ModelUsages_Usage> createRepeated() => $pb.PbList<ModelUsages_Usage>();
  @$core.pragma('dart2js:noInline')
  static ModelUsages_Usage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelUsages_Usage>(create);
  static ModelUsages_Usage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get model => $_getSZ(0);
  @$pb.TagNumber(1)
  set model($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearModel() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get input => $_getIZ(1);
  @$pb.TagNumber(2)
  set input($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(1);
  @$pb.TagNumber(2)
  void clearInput() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get output => $_getIZ(2);
  @$pb.TagNumber(3)
  set output($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutput() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutput() => clearField(3);
}

class ModelUsages extends $pb.GeneratedMessage {
  factory ModelUsages() => create();
  ModelUsages._() : super();
  factory ModelUsages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelUsages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelUsages', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.account.v1'), createEmptyInstance: create)
    ..pc<ModelUsages_Usage>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ModelUsages_Usage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModelUsages clone() => ModelUsages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelUsages copyWith(void Function(ModelUsages) updates) => super.copyWith((message) => updates(message as ModelUsages)) as ModelUsages;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModelUsages create() => ModelUsages._();
  ModelUsages createEmptyInstance() => create();
  static $pb.PbList<ModelUsages> createRepeated() => $pb.PbList<ModelUsages>();
  @$core.pragma('dart2js:noInline')
  static ModelUsages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelUsages>(create);
  static ModelUsages? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ModelUsages_Usage> get items => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');