//
//  Generated code. Do not modify.
//  source: document_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ReferenceIDs extends $pb.GeneratedMessage {
  factory ReferenceIDs() => create();
  ReferenceIDs._() : super();
  factory ReferenceIDs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReferenceIDs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReferenceIDs', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'items')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReferenceIDs clone() => ReferenceIDs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReferenceIDs copyWith(void Function(ReferenceIDs) updates) => super.copyWith((message) => updates(message as ReferenceIDs)) as ReferenceIDs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReferenceIDs create() => ReferenceIDs._();
  ReferenceIDs createEmptyInstance() => create();
  static $pb.PbList<ReferenceIDs> createRepeated() => $pb.PbList<ReferenceIDs>();
  @$core.pragma('dart2js:noInline')
  static ReferenceIDs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReferenceIDs>(create);
  static ReferenceIDs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);
}

class Reference extends $pb.GeneratedMessage {
  factory Reference() => create();
  Reference._() : super();
  factory Reference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reference', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'documentId')
    ..aOS(3, _omitFieldNames ? '' : 'filename')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'page', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Reference clone() => Reference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Reference copyWith(void Function(Reference) updates) => super.copyWith((message) => updates(message as Reference)) as Reference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Reference create() => Reference._();
  Reference createEmptyInstance() => create();
  static $pb.PbList<Reference> createRepeated() => $pb.PbList<Reference>();
  @$core.pragma('dart2js:noInline')
  static Reference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reference>(create);
  static Reference? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get filename => $_getSZ(2);
  @$pb.TagNumber(3)
  set filename($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilename() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilename() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get page => $_getIZ(3);
  @$pb.TagNumber(4)
  set page($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPage() => clearField(4);
}

class References extends $pb.GeneratedMessage {
  factory References() => create();
  References._() : super();
  factory References.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory References.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'References', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
    ..pc<Reference>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Reference.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  References clone() => References()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  References copyWith(void Function(References) updates) => super.copyWith((message) => updates(message as References)) as References;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static References create() => References._();
  References createEmptyInstance() => create();
  static $pb.PbList<References> createRepeated() => $pb.PbList<References>();
  @$core.pragma('dart2js:noInline')
  static References getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<References>(create);
  static References? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Reference> get items => $_getList(0);
}

class SearchQuery extends $pb.GeneratedMessage {
  factory SearchQuery() => create();
  SearchQuery._() : super();
  factory SearchQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchQuery', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OF)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchQuery clone() => SearchQuery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchQuery copyWith(void Function(SearchQuery) updates) => super.copyWith((message) => updates(message as SearchQuery)) as SearchQuery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchQuery create() => SearchQuery._();
  SearchQuery createEmptyInstance() => create();
  static $pb.PbList<SearchQuery> createRepeated() => $pb.PbList<SearchQuery>();
  @$core.pragma('dart2js:noInline')
  static SearchQuery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchQuery>(create);
  static SearchQuery? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get collectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get threshold => $_getN(2);
  @$pb.TagNumber(3)
  set threshold($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasThreshold() => $_has(2);
  @$pb.TagNumber(3)
  void clearThreshold() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(3);
  @$pb.TagNumber(4)
  set limit($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => clearField(4);
}

class SearchResults_Document extends $pb.GeneratedMessage {
  factory SearchResults_Document() => create();
  SearchResults_Document._() : super();
  factory SearchResults_Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchResults_Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchResults.Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'documentId')
    ..aOS(3, _omitFieldNames ? '' : 'filename')
    ..aOS(4, _omitFieldNames ? '' : 'content')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'page', $pb.PbFieldType.OU3)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchResults_Document clone() => SearchResults_Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchResults_Document copyWith(void Function(SearchResults_Document) updates) => super.copyWith((message) => updates(message as SearchResults_Document)) as SearchResults_Document;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchResults_Document create() => SearchResults_Document._();
  SearchResults_Document createEmptyInstance() => create();
  static $pb.PbList<SearchResults_Document> createRepeated() => $pb.PbList<SearchResults_Document>();
  @$core.pragma('dart2js:noInline')
  static SearchResults_Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchResults_Document>(create);
  static SearchResults_Document? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get filename => $_getSZ(2);
  @$pb.TagNumber(3)
  set filename($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilename() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilename() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get page => $_getIZ(4);
  @$pb.TagNumber(5)
  set page($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPage() => $_has(4);
  @$pb.TagNumber(5)
  void clearPage() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get score => $_getN(5);
  @$pb.TagNumber(6)
  set score($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasScore() => $_has(5);
  @$pb.TagNumber(6)
  void clearScore() => clearField(6);
}

class SearchResults extends $pb.GeneratedMessage {
  factory SearchResults() => create();
  SearchResults._() : super();
  factory SearchResults.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchResults.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchResults', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
    ..pc<SearchResults_Document>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: SearchResults_Document.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchResults clone() => SearchResults()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchResults copyWith(void Function(SearchResults) updates) => super.copyWith((message) => updates(message as SearchResults)) as SearchResults;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchResults create() => SearchResults._();
  SearchResults createEmptyInstance() => create();
  static $pb.PbList<SearchResults> createRepeated() => $pb.PbList<SearchResults>();
  @$core.pragma('dart2js:noInline')
  static SearchResults getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchResults>(create);
  static SearchResults? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SearchResults_Document> get items => $_getList(0);
}

class IndexProgress extends $pb.GeneratedMessage {
  factory IndexProgress() => create();
  IndexProgress._() : super();
  factory IndexProgress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IndexProgress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IndexProgress', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
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

class DocumentFilter extends $pb.GeneratedMessage {
  factory DocumentFilter() => create();
  DocumentFilter._() : super();
  factory DocumentFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
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
  $core.String get collectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => clearField(2);
}

class Documents_Document extends $pb.GeneratedMessage {
  factory Documents_Document() => create();
  Documents_Document._() : super();
  factory Documents_Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Documents_Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Documents.Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Documents', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v1'), createEmptyInstance: create)
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
