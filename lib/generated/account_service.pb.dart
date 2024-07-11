//
//  Generated code. Do not modify.
//  source: account_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $7;

class Overview extends $pb.GeneratedMessage {
  factory Overview({
    $core.Iterable<Payment>? payments,
    $core.Iterable<ModelUsage>? usage,
    $core.int? balance,
  }) {
    final $result = create();
    if (payments != null) {
      $result.payments.addAll(payments);
    }
    if (usage != null) {
      $result.usage.addAll(usage);
    }
    if (balance != null) {
      $result.balance = balance;
    }
    return $result;
  }
  Overview._() : super();
  factory Overview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Overview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Overview', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.account.v1'), createEmptyInstance: create)
    ..pc<Payment>(1, _omitFieldNames ? '' : 'payments', $pb.PbFieldType.PM, subBuilder: Payment.create)
    ..pc<ModelUsage>(2, _omitFieldNames ? '' : 'usage', $pb.PbFieldType.PM, subBuilder: ModelUsage.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Overview clone() => Overview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Overview copyWith(void Function(Overview) updates) => super.copyWith((message) => updates(message as Overview)) as Overview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Overview create() => Overview._();
  Overview createEmptyInstance() => create();
  static $pb.PbList<Overview> createRepeated() => $pb.PbList<Overview>();
  @$core.pragma('dart2js:noInline')
  static Overview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Overview>(create);
  static Overview? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Payment> get payments => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<ModelUsage> get usage => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get balance => $_getIZ(2);
  @$pb.TagNumber(3)
  set balance($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearBalance() => clearField(3);
}

class ModelUsage extends $pb.GeneratedMessage {
  factory ModelUsage({
    $core.String? model,
    $core.int? input,
    $core.int? output,
    $core.int? costs,
    $core.int? requests,
  }) {
    final $result = create();
    if (model != null) {
      $result.model = model;
    }
    if (input != null) {
      $result.input = input;
    }
    if (output != null) {
      $result.output = output;
    }
    if (costs != null) {
      $result.costs = costs;
    }
    if (requests != null) {
      $result.requests = requests;
    }
    return $result;
  }
  ModelUsage._() : super();
  factory ModelUsage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelUsage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelUsage', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.account.v1'), createEmptyInstance: create)
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
  ModelUsage clone() => ModelUsage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelUsage copyWith(void Function(ModelUsage) updates) => super.copyWith((message) => updates(message as ModelUsage)) as ModelUsage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModelUsage create() => ModelUsage._();
  ModelUsage createEmptyInstance() => create();
  static $pb.PbList<ModelUsage> createRepeated() => $pb.PbList<ModelUsage>();
  @$core.pragma('dart2js:noInline')
  static ModelUsage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelUsage>(create);
  static ModelUsage? _defaultInstance;

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

class Usage extends $pb.GeneratedMessage {
  factory Usage({
    $core.Iterable<ModelUsage>? models,
  }) {
    final $result = create();
    if (models != null) {
      $result.models.addAll(models);
    }
    return $result;
  }
  Usage._() : super();
  factory Usage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Usage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Usage', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.account.v1'), createEmptyInstance: create)
    ..pc<ModelUsage>(1, _omitFieldNames ? '' : 'models', $pb.PbFieldType.PM, subBuilder: ModelUsage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Usage clone() => Usage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Usage copyWith(void Function(Usage) updates) => super.copyWith((message) => updates(message as Usage)) as Usage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Usage create() => Usage._();
  Usage createEmptyInstance() => create();
  static $pb.PbList<Usage> createRepeated() => $pb.PbList<Usage>();
  @$core.pragma('dart2js:noInline')
  static Usage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Usage>(create);
  static Usage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ModelUsage> get models => $_getList(0);
}

class Payment extends $pb.GeneratedMessage {
  factory Payment({
    $core.String? id,
    $7.Timestamp? date,
    $core.int? amount,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (date != null) {
      $result.date = date;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    return $result;
  }
  Payment._() : super();
  factory Payment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Payment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Payment', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.account.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$7.Timestamp>(2, _omitFieldNames ? '' : 'date', subBuilder: $7.Timestamp.create)
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
  $7.Timestamp get date => $_getN(1);
  @$pb.TagNumber(2)
  set date($7.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
  @$pb.TagNumber(2)
  $7.Timestamp ensureDate() => $_ensure(1);

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
  factory Payments({
    $core.Iterable<Payment>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  Payments._() : super();
  factory Payments.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Payments.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Payments', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.account.v1'), createEmptyInstance: create)
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
