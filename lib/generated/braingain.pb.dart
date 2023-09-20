//
//  Generated code. Do not modify.
//  source: braingain.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $2;

class ModelUsages_Usage extends $pb.GeneratedMessage {
  factory ModelUsages_Usage() => create();
  ModelUsages_Usage._() : super();
  factory ModelUsages_Usage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelUsages_Usage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelUsages.Usage', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelUsages', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
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

class IndexProgress extends $pb.GeneratedMessage {
  factory IndexProgress() => create();
  IndexProgress._() : super();
  factory IndexProgress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IndexProgress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IndexProgress', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalPages', $pb.PbFieldType.OU3, protoName: 'totalPages')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'processedPages', $pb.PbFieldType.OU3, protoName: 'processedPages')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IndexProgress clone() => IndexProgress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IndexProgress copyWith(void Function(IndexProgress) updates) => super.copyWith((message) => updates(message as IndexProgress)) as IndexProgress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IndexProgress create() => IndexProgress._();
  IndexProgress createEmptyInstance() => create();
  static $pb.PbList<IndexProgress> createRepeated() => $pb.PbList<IndexProgress>();
  @$core.pragma('dart2js:noInline')
  static IndexProgress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IndexProgress>(create);
  static IndexProgress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalPages => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalPages($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalPages() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalPages() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get processedPages => $_getIZ(1);
  @$pb.TagNumber(2)
  set processedPages($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProcessedPages() => $_has(1);
  @$pb.TagNumber(2)
  void clearProcessedPages() => clearField(2);
}

class Document extends $pb.GeneratedMessage {
  factory Document() => create();
  Document._() : super();
  factory Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..aOS(3, _omitFieldNames ? '' : 'filename')
    ..aOS(4, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Document clone() => Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Document copyWith(void Function(Document) updates) => super.copyWith((message) => updates(message as Document)) as Document;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Document create() => Document._();
  Document createEmptyInstance() => create();
  static $pb.PbList<Document> createRepeated() => $pb.PbList<Document>();
  @$core.pragma('dart2js:noInline')
  static Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Document>(create);
  static Document? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get collectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get filename => $_getSZ(2);
  @$pb.TagNumber(3)
  set filename($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilename() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilename() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get path => $_getSZ(3);
  @$pb.TagNumber(4)
  set path($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearPath() => clearField(4);
}

class Collection extends $pb.GeneratedMessage {
  factory Collection() => create();
  Collection._() : super();
  factory Collection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Collection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Collection', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Collection clone() => Collection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Collection copyWith(void Function(Collection) updates) => super.copyWith((message) => updates(message as Collection)) as Collection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Collection create() => Collection._();
  Collection createEmptyInstance() => create();
  static $pb.PbList<Collection> createRepeated() => $pb.PbList<Collection>();
  @$core.pragma('dart2js:noInline')
  static Collection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Collection>(create);
  static Collection? _defaultInstance;

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

class Collections_Collection extends $pb.GeneratedMessage {
  factory Collections_Collection() => create();
  Collections_Collection._() : super();
  factory Collections_Collection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Collections_Collection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Collections.Collection', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'documents', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Collections_Collection clone() => Collections_Collection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Collections_Collection copyWith(void Function(Collections_Collection) updates) => super.copyWith((message) => updates(message as Collections_Collection)) as Collections_Collection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Collections_Collection create() => Collections_Collection._();
  Collections_Collection createEmptyInstance() => create();
  static $pb.PbList<Collections_Collection> createRepeated() => $pb.PbList<Collections_Collection>();
  @$core.pragma('dart2js:noInline')
  static Collections_Collection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Collections_Collection>(create);
  static Collections_Collection? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.int get documents => $_getIZ(2);
  @$pb.TagNumber(3)
  set documents($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocuments() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocuments() => clearField(3);
}

class Collections extends $pb.GeneratedMessage {
  factory Collections() => create();
  Collections._() : super();
  factory Collections.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Collections.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Collections', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..pc<Collections_Collection>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Collections_Collection.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Collections clone() => Collections()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Collections copyWith(void Function(Collections) updates) => super.copyWith((message) => updates(message as Collections)) as Collections;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Collections create() => Collections._();
  Collections createEmptyInstance() => create();
  static $pb.PbList<Collections> createRepeated() => $pb.PbList<Collections>();
  @$core.pragma('dart2js:noInline')
  static Collections getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Collections>(create);
  static Collections? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Collections_Collection> get items => $_getList(0);
}

class DocumentFilter extends $pb.GeneratedMessage {
  factory DocumentFilter() => create();
  DocumentFilter._() : super();
  factory DocumentFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOS(2, _omitFieldNames ? '' : 'collection')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocumentFilter clone() => DocumentFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocumentFilter copyWith(void Function(DocumentFilter) updates) => super.copyWith((message) => updates(message as DocumentFilter)) as DocumentFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentFilter create() => DocumentFilter._();
  DocumentFilter createEmptyInstance() => create();
  static $pb.PbList<DocumentFilter> createRepeated() => $pb.PbList<DocumentFilter>();
  @$core.pragma('dart2js:noInline')
  static DocumentFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocumentFilter>(create);
  static DocumentFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get collection => $_getSZ(1);
  @$pb.TagNumber(2)
  set collection($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollection() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollection() => clearField(2);
}

class Documents_Document extends $pb.GeneratedMessage {
  factory Documents_Document() => create();
  Documents_Document._() : super();
  factory Documents_Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Documents_Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Documents.Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'filename')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pages', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Documents_Document clone() => Documents_Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Documents_Document copyWith(void Function(Documents_Document) updates) => super.copyWith((message) => updates(message as Documents_Document)) as Documents_Document;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Documents_Document create() => Documents_Document._();
  Documents_Document createEmptyInstance() => create();
  static $pb.PbList<Documents_Document> createRepeated() => $pb.PbList<Documents_Document>();
  @$core.pragma('dart2js:noInline')
  static Documents_Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Documents_Document>(create);
  static Documents_Document? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pages => $_getIZ(2);
  @$pb.TagNumber(3)
  set pages($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPages() => $_has(2);
  @$pb.TagNumber(3)
  void clearPages() => clearField(3);
}

class Documents extends $pb.GeneratedMessage {
  factory Documents() => create();
  Documents._() : super();
  factory Documents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Documents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Documents', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..pc<Documents_Document>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Documents_Document.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Documents clone() => Documents()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Documents copyWith(void Function(Documents) updates) => super.copyWith((message) => updates(message as Documents)) as Documents;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Documents create() => Documents._();
  Documents createEmptyInstance() => create();
  static $pb.PbList<Documents> createRepeated() => $pb.PbList<Documents>();
  @$core.pragma('dart2js:noInline')
  static Documents getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Documents>(create);
  static Documents? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Documents_Document> get items => $_getList(0);
}

class PromptOptions extends $pb.GeneratedMessage {
  factory PromptOptions() => create();
  PromptOptions._() : super();
  factory PromptOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PromptOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PromptOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'model')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'temperature', $pb.PbFieldType.OF)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'maxTokens', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OF)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PromptOptions clone() => PromptOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PromptOptions copyWith(void Function(PromptOptions) updates) => super.copyWith((message) => updates(message as PromptOptions)) as PromptOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PromptOptions create() => PromptOptions._();
  PromptOptions createEmptyInstance() => create();
  static $pb.PbList<PromptOptions> createRepeated() => $pb.PbList<PromptOptions>();
  @$core.pragma('dart2js:noInline')
  static PromptOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PromptOptions>(create);
  static PromptOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get model => $_getSZ(0);
  @$pb.TagNumber(1)
  set model($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearModel() => clearField(1);

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
  $core.double get threshold => $_getN(3);
  @$pb.TagNumber(4)
  set threshold($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasThreshold() => $_has(3);
  @$pb.TagNumber(4)
  void clearThreshold() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get limit => $_getIZ(4);
  @$pb.TagNumber(5)
  set limit($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimit() => clearField(5);
}

class Prompt_Document extends $pb.GeneratedMessage {
  factory Prompt_Document() => create();
  Prompt_Document._() : super();
  factory Prompt_Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Prompt_Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Prompt.Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'filename')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'pages', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Prompt_Document clone() => Prompt_Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Prompt_Document copyWith(void Function(Prompt_Document) updates) => super.copyWith((message) => updates(message as Prompt_Document)) as Prompt_Document;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Prompt_Document create() => Prompt_Document._();
  Prompt_Document createEmptyInstance() => create();
  static $pb.PbList<Prompt_Document> createRepeated() => $pb.PbList<Prompt_Document>();
  @$core.pragma('dart2js:noInline')
  static Prompt_Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Prompt_Document>(create);
  static Prompt_Document? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get pages => $_getList(2);
}

class Prompt extends $pb.GeneratedMessage {
  factory Prompt() => create();
  Prompt._() : super();
  factory Prompt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Prompt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Prompt', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'prompt')
    ..aOS(2, _omitFieldNames ? '' : 'collection')
    ..aOM<PromptOptions>(3, _omitFieldNames ? '' : 'options', subBuilder: PromptOptions.create)
    ..pc<Prompt_Document>(4, _omitFieldNames ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: Prompt_Document.create)
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

  @$pb.TagNumber(1)
  $core.String get prompt => $_getSZ(0);
  @$pb.TagNumber(1)
  set prompt($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrompt() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrompt() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get collection => $_getSZ(1);
  @$pb.TagNumber(2)
  set collection($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollection() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollection() => clearField(2);

  @$pb.TagNumber(3)
  PromptOptions get options => $_getN(2);
  @$pb.TagNumber(3)
  set options(PromptOptions v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOptions() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptions() => clearField(3);
  @$pb.TagNumber(3)
  PromptOptions ensureOptions() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<Prompt_Document> get documents => $_getList(3);
}

class ChatMessage_Document extends $pb.GeneratedMessage {
  factory ChatMessage_Document() => create();
  ChatMessage_Document._() : super();
  factory ChatMessage_Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatMessage_Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatMessage.Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'filename')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'pages', $pb.PbFieldType.KU3)
    ..p<$core.double>(4, _omitFieldNames ? '' : 'scores', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatMessage_Document clone() => ChatMessage_Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatMessage_Document copyWith(void Function(ChatMessage_Document) updates) => super.copyWith((message) => updates(message as ChatMessage_Document)) as ChatMessage_Document;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessage_Document create() => ChatMessage_Document._();
  ChatMessage_Document createEmptyInstance() => create();
  static $pb.PbList<ChatMessage_Document> createRepeated() => $pb.PbList<ChatMessage_Document>();
  @$core.pragma('dart2js:noInline')
  static ChatMessage_Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatMessage_Document>(create);
  static ChatMessage_Document? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get pages => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.double> get scores => $_getList(3);
}

class ChatMessage extends $pb.GeneratedMessage {
  factory ChatMessage() => create();
  ChatMessage._() : super();
  factory ChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOM<Prompt>(1, _omitFieldNames ? '' : 'prompt', subBuilder: Prompt.create)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..pc<ChatMessage_Document>(3, _omitFieldNames ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: ChatMessage_Document.create)
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'timestamp', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatMessage clone() => ChatMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatMessage copyWith(void Function(ChatMessage) updates) => super.copyWith((message) => updates(message as ChatMessage)) as ChatMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessage create() => ChatMessage._();
  ChatMessage createEmptyInstance() => create();
  static $pb.PbList<ChatMessage> createRepeated() => $pb.PbList<ChatMessage>();
  @$core.pragma('dart2js:noInline')
  static ChatMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatMessage>(create);
  static ChatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Prompt get prompt => $_getN(0);
  @$pb.TagNumber(1)
  set prompt(Prompt v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrompt() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrompt() => clearField(1);
  @$pb.TagNumber(1)
  Prompt ensurePrompt() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ChatMessage_Document> get documents => $_getList(2);

  @$pb.TagNumber(4)
  $2.Timestamp get timestamp => $_getN(3);
  @$pb.TagNumber(4)
  set timestamp($2.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureTimestamp() => $_ensure(3);
}

class MessageID extends $pb.GeneratedMessage {
  factory MessageID() => create();
  MessageID._() : super();
  factory MessageID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MessageID', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
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
}

class ChatMessages extends $pb.GeneratedMessage {
  factory ChatMessages() => create();
  ChatMessages._() : super();
  factory ChatMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatMessages', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.braingain.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'ids')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatMessages clone() => ChatMessages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatMessages copyWith(void Function(ChatMessages) updates) => super.copyWith((message) => updates(message as ChatMessages)) as ChatMessages;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessages create() => ChatMessages._();
  ChatMessages createEmptyInstance() => create();
  static $pb.PbList<ChatMessages> createRepeated() => $pb.PbList<ChatMessages>();
  @$core.pragma('dart2js:noInline')
  static ChatMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatMessages>(create);
  static ChatMessages? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get ids => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
