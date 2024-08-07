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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionId', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompletionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompletionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
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

class Prompt extends $pb.GeneratedMessage {
  factory Prompt({
    $core.String? threadId,
    $core.String? collectionId,
    $core.String? prompt,
    ModelOptions? modelOptions,
    RetrievalOptions? retrievalOptions,
    $core.Iterable<$core.String>? attachments,
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
    if (attachments != null) {
      $result.attachments.addAll(attachments);
    }
    return $result;
  }
  Prompt._() : super();
  factory Prompt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Prompt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Prompt', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'threadId')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..aOS(3, _omitFieldNames ? '' : 'prompt')
    ..aOM<ModelOptions>(4, _omitFieldNames ? '' : 'modelOptions', subBuilder: ModelOptions.create)
    ..aOM<RetrievalOptions>(5, _omitFieldNames ? '' : 'retrievalOptions', subBuilder: RetrievalOptions.create)
    ..pPS(6, _omitFieldNames ? '' : 'attachments')
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

  /// Attachments to the prompt
  @$pb.TagNumber(6)
  $core.List<$core.String> get attachments => $_getList(5);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RetrievalOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
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

class Source_Fragment extends $pb.GeneratedMessage {
  factory Source_Fragment({
    $core.String? id,
    $core.String? content,
    $core.int? position,
    $core.double? score,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (content != null) {
      $result.content = content;
    }
    if (position != null) {
      $result.position = position;
    }
    if (score != null) {
      $result.score = score;
    }
    return $result;
  }
  Source_Fragment._() : super();
  factory Source_Fragment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source_Fragment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Source.Fragment', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'position', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Source_Fragment clone() => Source_Fragment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Source_Fragment copyWith(void Function(Source_Fragment) updates) => super.copyWith((message) => updates(message as Source_Fragment)) as Source_Fragment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Source_Fragment create() => Source_Fragment._();
  Source_Fragment createEmptyInstance() => create();
  static $pb.PbList<Source_Fragment> createRepeated() => $pb.PbList<Source_Fragment>();
  @$core.pragma('dart2js:noInline')
  static Source_Fragment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Source_Fragment>(create);
  static Source_Fragment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get position => $_getIZ(2);
  @$pb.TagNumber(3)
  set position($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get score => $_getN(3);
  @$pb.TagNumber(4)
  set score($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasScore() => $_has(3);
  @$pb.TagNumber(4)
  void clearScore() => clearField(4);
}

class Source extends $pb.GeneratedMessage {
  factory Source({
    $core.String? documentId,
    $core.String? name,
    $core.Iterable<Source_Fragment>? fragments,
  }) {
    final $result = create();
    if (documentId != null) {
      $result.documentId = documentId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (fragments != null) {
      $result.fragments.addAll(fragments);
    }
    return $result;
  }
  Source._() : super();
  factory Source.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Source', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'documentId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<Source_Fragment>(3, _omitFieldNames ? '' : 'fragments', $pb.PbFieldType.PM, subBuilder: Source_Fragment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Source clone() => Source()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Source copyWith(void Function(Source) updates) => super.copyWith((message) => updates(message as Source)) as Source;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Source create() => Source._();
  Source createEmptyInstance() => create();
  static $pb.PbList<Source> createRepeated() => $pb.PbList<Source>();
  @$core.pragma('dart2js:noInline')
  static Source getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Source>(create);
  static Source? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get documentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set documentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocumentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Source_Fragment> get fragments => $_getList(2);
}

class Message extends $pb.GeneratedMessage {
  factory Message({
    $core.String? threadId,
    $core.String? prompt,
    $core.String? completion,
    $core.Iterable<Source>? sources,
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
    if (sources != null) {
      $result.sources.addAll(sources);
    }
    return $result;
  }
  Message._() : super();
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Message', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'threadId')
    ..aOS(2, _omitFieldNames ? '' : 'prompt')
    ..aOS(3, _omitFieldNames ? '' : 'completion')
    ..pc<Source>(4, _omitFieldNames ? '' : 'sources', $pb.PbFieldType.PM, subBuilder: Source.create)
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

  /// Sources used to generate the completion
  @$pb.TagNumber(4)
  $core.List<Source> get sources => $_getList(3);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Thread', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreadID', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
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

class MessageIndex extends $pb.GeneratedMessage {
  factory MessageIndex({
    $core.String? threadId,
    $core.int? index,
  }) {
    final $result = create();
    if (threadId != null) {
      $result.threadId = threadId;
    }
    if (index != null) {
      $result.index = index;
    }
    return $result;
  }
  MessageIndex._() : super();
  factory MessageIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MessageIndex', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'threadId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageIndex clone() => MessageIndex()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageIndex copyWith(void Function(MessageIndex) updates) => super.copyWith((message) => updates(message as MessageIndex)) as MessageIndex;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageIndex create() => MessageIndex._();
  MessageIndex createEmptyInstance() => create();
  static $pb.PbList<MessageIndex> createRepeated() => $pb.PbList<MessageIndex>();
  @$core.pragma('dart2js:noInline')
  static MessageIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageIndex>(create);
  static MessageIndex? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get threadId => $_getSZ(0);
  @$pb.TagNumber(1)
  set threadId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreadIDs', package: const $pb.PackageName(_omitMessageNames ? '' : 'chatbot.chat.v1'), createEmptyInstance: create)
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
