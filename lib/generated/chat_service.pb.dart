//
//  Generated code. Do not modify.
//  source: chat_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $7;

class CollectionId extends $pb.GeneratedMessage {
  factory CollectionId({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CollectionId._() : super();
  factory CollectionId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionId', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionId clone() => CollectionId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionId copyWith(void Function(CollectionId) updates) => super.copyWith((message) => updates(message as CollectionId)) as CollectionId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionId create() => CollectionId._();
  CollectionId createEmptyInstance() => create();
  static $pb.PbList<CollectionId> createRepeated() => $pb.PbList<CollectionId>();
  @$core.pragma('dart2js:noInline')
  static CollectionId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionId>(create);
  static CollectionId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CompletionRequest extends $pb.GeneratedMessage {
  factory CompletionRequest({
    $core.String? documentId,
    $core.String? prompt,
    ModelOptions? modelOptions,
  }) {
    final $result = create();
    if (documentId != null) {
      $result.documentId = documentId;
    }
    if (prompt != null) {
      $result.prompt = prompt;
    }
    if (modelOptions != null) {
      $result.modelOptions = modelOptions;
    }
    return $result;
  }
  CompletionRequest._() : super();
  factory CompletionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompletionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompletionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'documentId')
    ..aOS(2, _omitFieldNames ? '' : 'prompt')
    ..aOM<ModelOptions>(3, _omitFieldNames ? '' : 'modelOptions', subBuilder: ModelOptions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompletionRequest clone() => CompletionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompletionRequest copyWith(void Function(CompletionRequest) updates) => super.copyWith((message) => updates(message as CompletionRequest)) as CompletionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompletionRequest create() => CompletionRequest._();
  CompletionRequest createEmptyInstance() => create();
  static $pb.PbList<CompletionRequest> createRepeated() => $pb.PbList<CompletionRequest>();
  @$core.pragma('dart2js:noInline')
  static CompletionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompletionRequest>(create);
  static CompletionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get documentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set documentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocumentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get prompt => $_getSZ(1);
  @$pb.TagNumber(2)
  set prompt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrompt() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrompt() => clearField(2);

  @$pb.TagNumber(3)
  ModelOptions get modelOptions => $_getN(2);
  @$pb.TagNumber(3)
  set modelOptions(ModelOptions v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasModelOptions() => $_has(2);
  @$pb.TagNumber(3)
  void clearModelOptions() => clearField(3);
  @$pb.TagNumber(3)
  ModelOptions ensureModelOptions() => $_ensure(2);
}

class CompletionResponse extends $pb.GeneratedMessage {
  factory CompletionResponse({
    $core.String? completion,
  }) {
    final $result = create();
    if (completion != null) {
      $result.completion = completion;
    }
    return $result;
  }
  CompletionResponse._() : super();
  factory CompletionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompletionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompletionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'completion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompletionResponse clone() => CompletionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompletionResponse copyWith(void Function(CompletionResponse) updates) => super.copyWith((message) => updates(message as CompletionResponse)) as CompletionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompletionResponse create() => CompletionResponse._();
  CompletionResponse createEmptyInstance() => create();
  static $pb.PbList<CompletionResponse> createRepeated() => $pb.PbList<CompletionResponse>();
  @$core.pragma('dart2js:noInline')
  static CompletionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompletionResponse>(create);
  static CompletionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get completion => $_getSZ(0);
  @$pb.TagNumber(1)
  set completion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompletion() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompletion() => clearField(1);
}

class BatchRequest extends $pb.GeneratedMessage {
  factory BatchRequest({
    $core.Iterable<$core.String>? documentIds,
    $core.Iterable<$core.String>? prompts,
    ModelOptions? modelOptions,
  }) {
    final $result = create();
    if (documentIds != null) {
      $result.documentIds.addAll(documentIds);
    }
    if (prompts != null) {
      $result.prompts.addAll(prompts);
    }
    if (modelOptions != null) {
      $result.modelOptions = modelOptions;
    }
    return $result;
  }
  BatchRequest._() : super();
  factory BatchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatchRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'documentIds')
    ..pPS(2, _omitFieldNames ? '' : 'prompts')
    ..aOM<ModelOptions>(3, _omitFieldNames ? '' : 'modelOptions', subBuilder: ModelOptions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatchRequest clone() => BatchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatchRequest copyWith(void Function(BatchRequest) updates) => super.copyWith((message) => updates(message as BatchRequest)) as BatchRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchRequest create() => BatchRequest._();
  BatchRequest createEmptyInstance() => create();
  static $pb.PbList<BatchRequest> createRepeated() => $pb.PbList<BatchRequest>();
  @$core.pragma('dart2js:noInline')
  static BatchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchRequest>(create);
  static BatchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get documentIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get prompts => $_getList(1);

  @$pb.TagNumber(3)
  ModelOptions get modelOptions => $_getN(2);
  @$pb.TagNumber(3)
  set modelOptions(ModelOptions v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasModelOptions() => $_has(2);
  @$pb.TagNumber(3)
  void clearModelOptions() => clearField(3);
  @$pb.TagNumber(3)
  ModelOptions ensureModelOptions() => $_ensure(2);
}

class BatchResponse_Completion extends $pb.GeneratedMessage {
  factory BatchResponse_Completion({
    $core.int? documentId,
    $core.String? documentTitle,
    $core.int? prompt,
    $core.String? completion,
  }) {
    final $result = create();
    if (documentId != null) {
      $result.documentId = documentId;
    }
    if (documentTitle != null) {
      $result.documentTitle = documentTitle;
    }
    if (prompt != null) {
      $result.prompt = prompt;
    }
    if (completion != null) {
      $result.completion = completion;
    }
    return $result;
  }
  BatchResponse_Completion._() : super();
  factory BatchResponse_Completion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatchResponse_Completion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatchResponse.Completion', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'documentId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'documentTitle')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'prompt', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'completion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatchResponse_Completion clone() => BatchResponse_Completion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatchResponse_Completion copyWith(void Function(BatchResponse_Completion) updates) => super.copyWith((message) => updates(message as BatchResponse_Completion)) as BatchResponse_Completion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchResponse_Completion create() => BatchResponse_Completion._();
  BatchResponse_Completion createEmptyInstance() => create();
  static $pb.PbList<BatchResponse_Completion> createRepeated() => $pb.PbList<BatchResponse_Completion>();
  @$core.pragma('dart2js:noInline')
  static BatchResponse_Completion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchResponse_Completion>(create);
  static BatchResponse_Completion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get documentId => $_getIZ(0);
  @$pb.TagNumber(1)
  set documentId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocumentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentTitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get prompt => $_getIZ(2);
  @$pb.TagNumber(3)
  set prompt($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrompt() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrompt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get completion => $_getSZ(3);
  @$pb.TagNumber(4)
  set completion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCompletion() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompletion() => clearField(4);
}

class BatchResponse extends $pb.GeneratedMessage {
  factory BatchResponse({
    $core.Iterable<$core.String>? documentIds,
    $core.Iterable<$core.String>? prompts,
    $core.Iterable<$core.String>? promptTitle,
    $core.Iterable<BatchResponse_Completion>? items,
  }) {
    final $result = create();
    if (documentIds != null) {
      $result.documentIds.addAll(documentIds);
    }
    if (prompts != null) {
      $result.prompts.addAll(prompts);
    }
    if (promptTitle != null) {
      $result.promptTitle.addAll(promptTitle);
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  BatchResponse._() : super();
  factory BatchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatchResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'documentIds')
    ..pPS(2, _omitFieldNames ? '' : 'prompts')
    ..pPS(3, _omitFieldNames ? '' : 'promptTitle')
    ..pc<BatchResponse_Completion>(4, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: BatchResponse_Completion.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatchResponse clone() => BatchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatchResponse copyWith(void Function(BatchResponse) updates) => super.copyWith((message) => updates(message as BatchResponse)) as BatchResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchResponse create() => BatchResponse._();
  BatchResponse createEmptyInstance() => create();
  static $pb.PbList<BatchResponse> createRepeated() => $pb.PbList<BatchResponse>();
  @$core.pragma('dart2js:noInline')
  static BatchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchResponse>(create);
  static BatchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get documentIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get prompts => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get promptTitle => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<BatchResponse_Completion> get items => $_getList(3);
}

class Prompt extends $pb.GeneratedMessage {
  factory Prompt({
    $core.String? threadId,
    $core.String? collectionId,
    $core.String? prompt,
    ModelOptions? modelOptions,
    RetrievalOptions? retrievalOptions,
  }) {
    final $result = create();
    if (threadId != null) {
      $result.threadId = threadId;
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
    if (retrievalOptions != null) {
      $result.retrievalOptions = retrievalOptions;
    }
    return $result;
  }
  Prompt._() : super();
  factory Prompt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Prompt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Prompt', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'threadId')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..aOS(3, _omitFieldNames ? '' : 'prompt')
    ..aOM<ModelOptions>(4, _omitFieldNames ? '' : 'modelOptions', subBuilder: ModelOptions.create)
    ..aOM<RetrievalOptions>(5, _omitFieldNames ? '' : 'retrievalOptions', subBuilder: RetrievalOptions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Prompt clone() => Prompt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Prompt copyWith(void Function(Prompt) updates) => super.copyWith((message) => updates(message as Prompt)) as Prompt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Prompt create() => Prompt._();
  Prompt createEmptyInstance() => create();
  static $pb.PbList<Prompt> createRepeated() => $pb.PbList<Prompt>();
  @$core.pragma('dart2js:noInline')
  static Prompt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Prompt>(create);
  static Prompt? _defaultInstance;

  /// Thread ID to post the message to
  @$pb.TagNumber(1)
  $core.String get threadId => $_getSZ(0);
  @$pb.TagNumber(1)
  set threadId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => clearField(1);

  /// Collection ID to post the message to
  @$pb.TagNumber(2)
  $core.String get collectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => clearField(2);

  /// Prompt to generate completion
  @$pb.TagNumber(3)
  $core.String get prompt => $_getSZ(2);
  @$pb.TagNumber(3)
  set prompt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrompt() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrompt() => clearField(3);

  /// Model options
  @$pb.TagNumber(4)
  ModelOptions get modelOptions => $_getN(3);
  @$pb.TagNumber(4)
  set modelOptions(ModelOptions v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasModelOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearModelOptions() => clearField(4);
  @$pb.TagNumber(4)
  ModelOptions ensureModelOptions() => $_ensure(3);

  /// Search options
  @$pb.TagNumber(5)
  RetrievalOptions get retrievalOptions => $_getN(4);
  @$pb.TagNumber(5)
  set retrievalOptions(RetrievalOptions v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRetrievalOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearRetrievalOptions() => clearField(5);
  @$pb.TagNumber(5)
  RetrievalOptions ensureRetrievalOptions() => $_ensure(4);
}

class ModelOptions extends $pb.GeneratedMessage {
  factory ModelOptions({
    $core.String? modelId,
    $core.double? temperature,
    $core.int? maxTokens,
    $core.double? topP,
  }) {
    final $result = create();
    if (modelId != null) {
      $result.modelId = modelId;
    }
    if (temperature != null) {
      $result.temperature = temperature;
    }
    if (maxTokens != null) {
      $result.maxTokens = maxTokens;
    }
    if (topP != null) {
      $result.topP = topP;
    }
    return $result;
  }
  ModelOptions._() : super();
  factory ModelOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'modelId')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'temperature', $pb.PbFieldType.OF)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'maxTokens', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'topP', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModelOptions clone() => ModelOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelOptions copyWith(void Function(ModelOptions) updates) => super.copyWith((message) => updates(message as ModelOptions)) as ModelOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModelOptions create() => ModelOptions._();
  ModelOptions createEmptyInstance() => create();
  static $pb.PbList<ModelOptions> createRepeated() => $pb.PbList<ModelOptions>();
  @$core.pragma('dart2js:noInline')
  static ModelOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelOptions>(create);
  static ModelOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get modelId => $_getSZ(0);
  @$pb.TagNumber(1)
  set modelId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get temperature => $_getN(1);
  @$pb.TagNumber(2)
  set temperature($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemperature() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperature() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxTokens => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxTokens($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxTokens() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxTokens() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get topP => $_getN(3);
  @$pb.TagNumber(4)
  set topP($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTopP() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopP() => clearField(4);
}

class RetrievalOptions extends $pb.GeneratedMessage {
  factory RetrievalOptions({
    $core.bool? enabled,
    $core.double? threshold,
    $core.int? documents,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    if (threshold != null) {
      $result.threshold = threshold;
    }
    if (documents != null) {
      $result.documents = documents;
    }
    return $result;
  }
  RetrievalOptions._() : super();
  factory RetrievalOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RetrievalOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RetrievalOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OF)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'documents', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RetrievalOptions clone() => RetrievalOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RetrievalOptions copyWith(void Function(RetrievalOptions) updates) => super.copyWith((message) => updates(message as RetrievalOptions)) as RetrievalOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RetrievalOptions create() => RetrievalOptions._();
  RetrievalOptions createEmptyInstance() => create();
  static $pb.PbList<RetrievalOptions> createRepeated() => $pb.PbList<RetrievalOptions>();
  @$core.pragma('dart2js:noInline')
  static RetrievalOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RetrievalOptions>(create);
  static RetrievalOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get threshold => $_getN(1);
  @$pb.TagNumber(2)
  set threshold($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreshold() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreshold() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get documents => $_getIZ(2);
  @$pb.TagNumber(3)
  set documents($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocuments() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocuments() => clearField(3);
}

class Message extends $pb.GeneratedMessage {
  factory Message({
    $core.String? threadId,
    $core.String? prompt,
    $core.String? completion,
    $7.Timestamp? timestamp,
    $core.Map<$core.String, $core.double>? references,
  }) {
    final $result = create();
    if (threadId != null) {
      $result.threadId = threadId;
    }
    if (prompt != null) {
      $result.prompt = prompt;
    }
    if (completion != null) {
      $result.completion = completion;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (references != null) {
      $result.references.addAll(references);
    }
    return $result;
  }
  Message._() : super();
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Message', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'threadId')
    ..aOS(2, _omitFieldNames ? '' : 'prompt')
    ..aOS(3, _omitFieldNames ? '' : 'completion')
    ..aOM<$7.Timestamp>(4, _omitFieldNames ? '' : 'timestamp', subBuilder: $7.Timestamp.create)
    ..m<$core.String, $core.double>(5, _omitFieldNames ? '' : 'references', entryClassName: 'Message.ReferencesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OF, packageName: const $pb.PackageName('chatbot.chat.v5'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  /// Unique ID of the message
  @$pb.TagNumber(1)
  $core.String get threadId => $_getSZ(0);
  @$pb.TagNumber(1)
  set threadId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => clearField(1);

  /// Prompt used to generate the message
  @$pb.TagNumber(2)
  $core.String get prompt => $_getSZ(1);
  @$pb.TagNumber(2)
  set prompt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrompt() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrompt() => clearField(2);

  /// Generated completion
  @$pb.TagNumber(3)
  $core.String get completion => $_getSZ(2);
  @$pb.TagNumber(3)
  set completion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompletion() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompletion() => clearField(3);

  /// Timestamp of the message
  @$pb.TagNumber(4)
  $7.Timestamp get timestamp => $_getN(3);
  @$pb.TagNumber(4)
  set timestamp($7.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);
  @$pb.TagNumber(4)
  $7.Timestamp ensureTimestamp() => $_ensure(3);

  /// ReferenceIDs and their scores
  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.double> get references => $_getMap(4);
}

class Thread extends $pb.GeneratedMessage {
  factory Thread({
    $core.String? id,
    $core.Iterable<Message>? messages,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    return $result;
  }
  Thread._() : super();
  factory Thread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Thread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Thread', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pc<Message>(2, _omitFieldNames ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: Message.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Thread clone() => Thread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Thread copyWith(void Function(Thread) updates) => super.copyWith((message) => updates(message as Thread)) as Thread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Thread create() => Thread._();
  Thread createEmptyInstance() => create();
  static $pb.PbList<Thread> createRepeated() => $pb.PbList<Thread>();
  @$core.pragma('dart2js:noInline')
  static Thread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Thread>(create);
  static Thread? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Message> get messages => $_getList(1);
}

class ThreadID extends $pb.GeneratedMessage {
  factory ThreadID({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ThreadID._() : super();
  factory ThreadID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreadID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreadID', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreadID clone() => ThreadID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreadID copyWith(void Function(ThreadID) updates) => super.copyWith((message) => updates(message as ThreadID)) as ThreadID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadID create() => ThreadID._();
  ThreadID createEmptyInstance() => create();
  static $pb.PbList<ThreadID> createRepeated() => $pb.PbList<ThreadID>();
  @$core.pragma('dart2js:noInline')
  static ThreadID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreadID>(create);
  static ThreadID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class MessageID extends $pb.GeneratedMessage {
  factory MessageID({
    $core.String? id,
    $core.String? threadId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (threadId != null) {
      $result.threadId = threadId;
    }
    return $result;
  }
  MessageID._() : super();
  factory MessageID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MessageID', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'threadId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageID clone() => MessageID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageID copyWith(void Function(MessageID) updates) => super.copyWith((message) => updates(message as MessageID)) as MessageID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageID create() => MessageID._();
  MessageID createEmptyInstance() => create();
  static $pb.PbList<MessageID> createRepeated() => $pb.PbList<MessageID>();
  @$core.pragma('dart2js:noInline')
  static MessageID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageID>(create);
  static MessageID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get threadId => $_getSZ(1);
  @$pb.TagNumber(2)
  set threadId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreadId() => clearField(2);
}

class ThreadIDs extends $pb.GeneratedMessage {
  factory ThreadIDs({
    $core.Iterable<$core.String>? ids,
  }) {
    final $result = create();
    if (ids != null) {
      $result.ids.addAll(ids);
    }
    return $result;
  }
  ThreadIDs._() : super();
  factory ThreadIDs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreadIDs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreadIDs', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v5'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'ids')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreadIDs clone() => ThreadIDs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreadIDs copyWith(void Function(ThreadIDs) updates) => super.copyWith((message) => updates(message as ThreadIDs)) as ThreadIDs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadIDs create() => ThreadIDs._();
  ThreadIDs createEmptyInstance() => create();
  static $pb.PbList<ThreadIDs> createRepeated() => $pb.PbList<ThreadIDs>();
  @$core.pragma('dart2js:noInline')
  static ThreadIDs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreadIDs>(create);
  static ThreadIDs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get ids => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
