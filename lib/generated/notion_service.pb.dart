//
//  Generated code. Do not modify.
//  source: notion_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'chat_service.pb.dart' as $2;

class NotionApiKey extends $pb.GeneratedMessage {
  factory NotionApiKey({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  NotionApiKey._() : super();
  factory NotionApiKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotionApiKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotionApiKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.notion.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotionApiKey clone() => NotionApiKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotionApiKey copyWith(void Function(NotionApiKey) updates) => super.copyWith((message) => updates(message as NotionApiKey)) as NotionApiKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotionApiKey create() => NotionApiKey._();
  NotionApiKey createEmptyInstance() => create();
  static $pb.PbList<NotionApiKey> createRepeated() => $pb.PbList<NotionApiKey>();
  @$core.pragma('dart2js:noInline')
  static NotionApiKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotionApiKey>(create);
  static NotionApiKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class NotionPrompt extends $pb.GeneratedMessage {
  factory NotionPrompt({
    $core.String? databaseId,
    $core.String? collectionId,
    $core.String? prompt,
    $2.ModelOptions? modelOptions,
  }) {
    final $result = create();
    if (databaseId != null) {
      $result.databaseId = databaseId;
    }
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (prompt != null) {
      $result.prompt = prompt;
    }
    if (modelOptions != null) {
      $result.modelOptions = modelOptions;
    }
    return $result;
  }
  NotionPrompt._() : super();
  factory NotionPrompt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotionPrompt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotionPrompt', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.notion.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'databaseId')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..aOS(3, _omitFieldNames ? '' : 'prompt')
    ..aOM<$2.ModelOptions>(4, _omitFieldNames ? '' : 'modelOptions', protoName: 'modelOptions', subBuilder: $2.ModelOptions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotionPrompt clone() => NotionPrompt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotionPrompt copyWith(void Function(NotionPrompt) updates) => super.copyWith((message) => updates(message as NotionPrompt)) as NotionPrompt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotionPrompt create() => NotionPrompt._();
  NotionPrompt createEmptyInstance() => create();
  static $pb.PbList<NotionPrompt> createRepeated() => $pb.PbList<NotionPrompt>();
  @$core.pragma('dart2js:noInline')
  static NotionPrompt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotionPrompt>(create);
  static NotionPrompt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get databaseId => $_getSZ(0);
  @$pb.TagNumber(1)
  set databaseId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDatabaseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabaseId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get collectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get prompt => $_getSZ(2);
  @$pb.TagNumber(3)
  set prompt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrompt() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrompt() => clearField(3);

  @$pb.TagNumber(4)
  $2.ModelOptions get modelOptions => $_getN(3);
  @$pb.TagNumber(4)
  set modelOptions($2.ModelOptions v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasModelOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearModelOptions() => clearField(4);
  @$pb.TagNumber(4)
  $2.ModelOptions ensureModelOptions() => $_ensure(3);
}

class ExecutionResult extends $pb.GeneratedMessage {
  factory ExecutionResult({
    $core.String? document,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    return $result;
  }
  ExecutionResult._() : super();
  factory ExecutionResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExecutionResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExecutionResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.notion.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'document')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExecutionResult clone() => ExecutionResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExecutionResult copyWith(void Function(ExecutionResult) updates) => super.copyWith((message) => updates(message as ExecutionResult)) as ExecutionResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecutionResult create() => ExecutionResult._();
  ExecutionResult createEmptyInstance() => create();
  static $pb.PbList<ExecutionResult> createRepeated() => $pb.PbList<ExecutionResult>();
  @$core.pragma('dart2js:noInline')
  static ExecutionResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExecutionResult>(create);
  static ExecutionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get document => $_getSZ(0);
  @$pb.TagNumber(1)
  set document($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);
}

class DatabasesID extends $pb.GeneratedMessage {
  factory DatabasesID({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DatabasesID._() : super();
  factory DatabasesID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DatabasesID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DatabasesID', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.notion.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DatabasesID clone() => DatabasesID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DatabasesID copyWith(void Function(DatabasesID) updates) => super.copyWith((message) => updates(message as DatabasesID)) as DatabasesID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DatabasesID create() => DatabasesID._();
  DatabasesID createEmptyInstance() => create();
  static $pb.PbList<DatabasesID> createRepeated() => $pb.PbList<DatabasesID>();
  @$core.pragma('dart2js:noInline')
  static DatabasesID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DatabasesID>(create);
  static DatabasesID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class Databases_Item extends $pb.GeneratedMessage {
  factory Databases_Item({
    $core.String? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  Databases_Item._() : super();
  factory Databases_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Databases_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Databases.Item', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.notion.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Databases_Item clone() => Databases_Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Databases_Item copyWith(void Function(Databases_Item) updates) => super.copyWith((message) => updates(message as Databases_Item)) as Databases_Item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Databases_Item create() => Databases_Item._();
  Databases_Item createEmptyInstance() => create();
  static $pb.PbList<Databases_Item> createRepeated() => $pb.PbList<Databases_Item>();
  @$core.pragma('dart2js:noInline')
  static Databases_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Databases_Item>(create);
  static Databases_Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class Databases extends $pb.GeneratedMessage {
  factory Databases({
    $core.Iterable<Databases_Item>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  Databases._() : super();
  factory Databases.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Databases.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Databases', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.notion.v2'), createEmptyInstance: create)
    ..pc<Databases_Item>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Databases_Item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Databases clone() => Databases()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Databases copyWith(void Function(Databases) updates) => super.copyWith((message) => updates(message as Databases)) as Databases;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Databases create() => Databases._();
  Databases createEmptyInstance() => create();
  static $pb.PbList<Databases> createRepeated() => $pb.PbList<Databases>();
  @$core.pragma('dart2js:noInline')
  static Databases getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Databases>(create);
  static Databases? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Databases_Item> get items => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
