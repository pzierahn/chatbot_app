//
//  Generated code. Do not modify.
//  source: account_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $6;

class BalanceSheet extends $pb.GeneratedMessage {
  factory BalanceSheet() => create();
  BalanceSheet._() : super();
  factory BalanceSheet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalanceSheet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BalanceSheet', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.account.v1'), createEmptyInstance: create)
    ..pc<Payment>(1, _omitFieldNames ? '' : 'payments', $pb.PbFieldType.PM, subBuilder: Payment.create)
    ..pc<ModelCosts>(2, _omitFieldNames ? '' : 'costs', $pb.PbFieldType.PM, subBuilder: ModelCosts.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalanceSheet clone() => BalanceSheet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalanceSheet copyWith(void Function(BalanceSheet) updates) => super.copyWith((message) => updates(message as BalanceSheet)) as BalanceSheet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BalanceSheet create() => BalanceSheet._();
  BalanceSheet createEmptyInstance() => create();
  static $pb.PbList<BalanceSheet> createRepeated() => $pb.PbList<BalanceSheet>();
  @$core.pragma('dart2js:noInline')
  static BalanceSheet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalanceSheet>(create);
  static BalanceSheet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Payment> get payments => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<ModelCosts> get costs => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get balance => $_getIZ(2);
  @$pb.TagNumber(3)
  set balance($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearBalance() => clearField(3);
}

class ModelCosts extends $pb.GeneratedMessage {
  factory ModelCosts() => create();
  ModelCosts._() : super();
  factory ModelCosts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelCosts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelCosts', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.account.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'model')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'input', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'output', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'costs', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'requests', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModelCosts clone() => ModelCosts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelCosts copyWith(void Function(ModelCosts) updates) => super.copyWith((message) => updates(message as ModelCosts)) as ModelCosts;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModelCosts create() => ModelCosts._();
  ModelCosts createEmptyInstance() => create();
  static $pb.PbList<ModelCosts> createRepeated() => $pb.PbList<ModelCosts>();
  @$core.pragma('dart2js:noInline')
  static ModelCosts getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelCosts>(create);
  static ModelCosts? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.int get costs => $_getIZ(3);
  @$pb.TagNumber(4)
  set costs($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCosts() => $_has(3);
  @$pb.TagNumber(4)
  void clearCosts() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get requests => $_getIZ(4);
  @$pb.TagNumber(5)
  set requests($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequests() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequests() => clearField(5);
}

class Costs extends $pb.GeneratedMessage {
  factory Costs() => create();
  Costs._() : super();
  factory Costs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Costs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Costs', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.account.v1'), createEmptyInstance: create)
    ..pc<ModelCosts>(1, _omitFieldNames ? '' : 'models', $pb.PbFieldType.PM, subBuilder: ModelCosts.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Costs clone() => Costs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Costs copyWith(void Function(Costs) updates) => super.copyWith((message) => updates(message as Costs)) as Costs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Costs create() => Costs._();
  Costs createEmptyInstance() => create();
  static $pb.PbList<Costs> createRepeated() => $pb.PbList<Costs>();
  @$core.pragma('dart2js:noInline')
  static Costs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Costs>(create);
  static Costs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ModelCosts> get models => $_getList(0);
}

class Payment extends $pb.GeneratedMessage {
  factory Payment() => create();
  Payment._() : super();
  factory Payment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Payment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Payment', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.account.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$6.Timestamp>(2, _omitFieldNames ? '' : 'date', subBuilder: $6.Timestamp.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Payment clone() => Payment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Payment copyWith(void Function(Payment) updates) => super.copyWith((message) => updates(message as Payment)) as Payment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Payment create() => Payment._();
  Payment createEmptyInstance() => create();
  static $pb.PbList<Payment> createRepeated() => $pb.PbList<Payment>();
  @$core.pragma('dart2js:noInline')
  static Payment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Payment>(create);
  static Payment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $6.Timestamp get date => $_getN(1);
  @$pb.TagNumber(2)
  set date($6.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
  @$pb.TagNumber(2)
  $6.Timestamp ensureDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class Payments extends $pb.GeneratedMessage {
  factory Payments() => create();
  Payments._() : super();
  factory Payments.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Payments.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Payments', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.account.v1'), createEmptyInstance: create)
    ..pc<Payment>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Payment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Payments clone() => Payments()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Payments copyWith(void Function(Payments) updates) => super.copyWith((message) => updates(message as Payments)) as Payments;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Payments create() => Payments._();
  Payments createEmptyInstance() => create();
  static $pb.PbList<Payments> createRepeated() => $pb.PbList<Payments>();
  @$core.pragma('dart2js:noInline')
  static Payments getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Payments>(create);
  static Payments? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Payment> get items => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
