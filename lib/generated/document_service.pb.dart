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

import 'google/protobuf/timestamp.pb.dart' as $6;

enum RenameDocument_RenameTo {
  fileName, 
  webpageTitle, 
  notSet
}

class RenameDocument extends $pb.GeneratedMessage {
  factory RenameDocument() => create();
  RenameDocument._() : super();
  factory RenameDocument.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RenameDocument.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RenameDocument_RenameTo> _RenameDocument_RenameToByTag = {
    2 : RenameDocument_RenameTo.fileName,
    3 : RenameDocument_RenameTo.webpageTitle,
    0 : RenameDocument_RenameTo.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RenameDocument', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'fileName')
    ..aOS(3, _omitFieldNames ? '' : 'webpageTitle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RenameDocument clone() => RenameDocument()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RenameDocument copyWith(void Function(RenameDocument) updates) => super.copyWith((message) => updates(message as RenameDocument)) as RenameDocument;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RenameDocument create() => RenameDocument._();
  RenameDocument createEmptyInstance() => create();
  static $pb.PbList<RenameDocument> createRepeated() => $pb.PbList<RenameDocument>();
  @$core.pragma('dart2js:noInline')
  static RenameDocument getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RenameDocument>(create);
  static RenameDocument? _defaultInstance;

  RenameDocument_RenameTo whichRenameTo() => _RenameDocument_RenameToByTag[$_whichOneof(0)]!;
  void clearRenameTo() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get webpageTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set webpageTitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWebpageTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearWebpageTitle() => clearField(3);
}

class DocumentID extends $pb.GeneratedMessage {
  factory DocumentID() => create();
  DocumentID._() : super();
  factory DocumentID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentID', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocumentID clone() => DocumentID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocumentID copyWith(void Function(DocumentID) updates) => super.copyWith((message) => updates(message as DocumentID)) as DocumentID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentID create() => DocumentID._();
  DocumentID createEmptyInstance() => create();
  static $pb.PbList<DocumentID> createRepeated() => $pb.PbList<DocumentID>();
  @$core.pragma('dart2js:noInline')
  static DocumentID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocumentID>(create);
  static DocumentID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DocumentList extends $pb.GeneratedMessage {
  factory DocumentList() => create();
  DocumentList._() : super();
  factory DocumentList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentList', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..m<$core.String, DocumentMetadata>(1, _omitFieldNames ? '' : 'items', entryClassName: 'DocumentList.ItemsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: DocumentMetadata.create, valueDefaultOrMaker: DocumentMetadata.getDefault, packageName: const $pb.PackageName('endpoint.brainboost.documents.v2'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocumentList clone() => DocumentList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocumentList copyWith(void Function(DocumentList) updates) => super.copyWith((message) => updates(message as DocumentList)) as DocumentList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentList create() => DocumentList._();
  DocumentList createEmptyInstance() => create();
  static $pb.PbList<DocumentList> createRepeated() => $pb.PbList<DocumentList>();
  @$core.pragma('dart2js:noInline')
  static DocumentList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocumentList>(create);
  static DocumentList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, DocumentMetadata> get items => $_getMap(0);
}

class ReferenceIDs extends $pb.GeneratedMessage {
  factory ReferenceIDs() => create();
  ReferenceIDs._() : super();
  factory ReferenceIDs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReferenceIDs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReferenceIDs', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
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

class Chunk extends $pb.GeneratedMessage {
  factory Chunk() => create();
  Chunk._() : super();
  factory Chunk.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Chunk.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Chunk', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Chunk clone() => Chunk()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Chunk copyWith(void Function(Chunk) updates) => super.copyWith((message) => updates(message as Chunk)) as Chunk;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Chunk create() => Chunk._();
  Chunk createEmptyInstance() => create();
  static $pb.PbList<Chunk> createRepeated() => $pb.PbList<Chunk>();
  @$core.pragma('dart2js:noInline')
  static Chunk getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Chunk>(create);
  static Chunk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get index => $_getIZ(2);
  @$pb.TagNumber(3)
  set index($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearIndex() => clearField(3);
}

class References extends $pb.GeneratedMessage {
  factory References() => create();
  References._() : super();
  factory References.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory References.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'References', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..pc<Document>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Document.create)
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
  $core.List<Document> get items => $_getList(0);
}

class SearchQuery extends $pb.GeneratedMessage {
  factory SearchQuery() => create();
  SearchQuery._() : super();
  factory SearchQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchQuery', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
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

class SearchResults extends $pb.GeneratedMessage {
  factory SearchResults() => create();
  SearchResults._() : super();
  factory SearchResults.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchResults.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchResults', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..pc<Document>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Document.create)
    ..m<$core.String, $core.double>(2, _omitFieldNames ? '' : 'scores', entryClassName: 'SearchResults.ScoresEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OF, packageName: const $pb.PackageName('endpoint.brainboost.documents.v2'))
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
  $core.List<Document> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.double> get scores => $_getMap(1);
}

class IndexProgress extends $pb.GeneratedMessage {
  factory IndexProgress() => create();
  IndexProgress._() : super();
  factory IndexProgress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IndexProgress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IndexProgress', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'progress', $pb.PbFieldType.OF)
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
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get progress => $_getN(1);
  @$pb.TagNumber(2)
  set progress($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgress() => clearField(2);
}

class DocumentFilter extends $pb.GeneratedMessage {
  factory DocumentFilter() => create();
  DocumentFilter._() : super();
  factory DocumentFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
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

enum DocumentMetadata_Data {
  file, 
  web, 
  notSet
}

class DocumentMetadata extends $pb.GeneratedMessage {
  factory DocumentMetadata() => create();
  DocumentMetadata._() : super();
  factory DocumentMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DocumentMetadata_Data> _DocumentMetadata_DataByTag = {
    1 : DocumentMetadata_Data.file,
    2 : DocumentMetadata_Data.web,
    0 : DocumentMetadata_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<File>(1, _omitFieldNames ? '' : 'file', subBuilder: File.create)
    ..aOM<Webpage>(2, _omitFieldNames ? '' : 'web', subBuilder: Webpage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocumentMetadata clone() => DocumentMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocumentMetadata copyWith(void Function(DocumentMetadata) updates) => super.copyWith((message) => updates(message as DocumentMetadata)) as DocumentMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentMetadata create() => DocumentMetadata._();
  DocumentMetadata createEmptyInstance() => create();
  static $pb.PbList<DocumentMetadata> createRepeated() => $pb.PbList<DocumentMetadata>();
  @$core.pragma('dart2js:noInline')
  static DocumentMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocumentMetadata>(create);
  static DocumentMetadata? _defaultInstance;

  DocumentMetadata_Data whichData() => _DocumentMetadata_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  File get file => $_getN(0);
  @$pb.TagNumber(1)
  set file(File v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => clearField(1);
  @$pb.TagNumber(1)
  File ensureFile() => $_ensure(0);

  @$pb.TagNumber(2)
  Webpage get web => $_getN(1);
  @$pb.TagNumber(2)
  set web(Webpage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeb() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeb() => clearField(2);
  @$pb.TagNumber(2)
  Webpage ensureWeb() => $_ensure(1);
}

class File extends $pb.GeneratedMessage {
  factory File() => create();
  File._() : super();
  factory File.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory File.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'File', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOS(2, _omitFieldNames ? '' : 'filename')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  File clone() => File()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  File copyWith(void Function(File) updates) => super.copyWith((message) => updates(message as File)) as File;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static File create() => File._();
  File createEmptyInstance() => create();
  static $pb.PbList<File> createRepeated() => $pb.PbList<File>();
  @$core.pragma('dart2js:noInline')
  static File getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<File>(create);
  static File? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => clearField(2);
}

class Webpage extends $pb.GeneratedMessage {
  factory Webpage() => create();
  Webpage._() : super();
  factory Webpage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Webpage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Webpage', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Webpage clone() => Webpage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Webpage copyWith(void Function(Webpage) updates) => super.copyWith((message) => updates(message as Webpage)) as Webpage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Webpage create() => Webpage._();
  Webpage createEmptyInstance() => create();
  static $pb.PbList<Webpage> createRepeated() => $pb.PbList<Webpage>();
  @$core.pragma('dart2js:noInline')
  static Webpage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Webpage>(create);
  static Webpage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

class Document extends $pb.GeneratedMessage {
  factory Document() => create();
  Document._() : super();
  factory Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..aOM<$6.Timestamp>(3, _omitFieldNames ? '' : 'createdAt', subBuilder: $6.Timestamp.create)
    ..aOM<DocumentMetadata>(4, _omitFieldNames ? '' : 'metadata', subBuilder: DocumentMetadata.create)
    ..pc<Chunk>(5, _omitFieldNames ? '' : 'chunks', $pb.PbFieldType.PM, subBuilder: Chunk.create)
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
  $6.Timestamp get createdAt => $_getN(2);
  @$pb.TagNumber(3)
  set createdAt($6.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $6.Timestamp ensureCreatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  DocumentMetadata get metadata => $_getN(3);
  @$pb.TagNumber(4)
  set metadata(DocumentMetadata v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMetadata() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadata() => clearField(4);
  @$pb.TagNumber(4)
  DocumentMetadata ensureMetadata() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<Chunk> get chunks => $_getList(4);
}

class IndexJob extends $pb.GeneratedMessage {
  factory IndexJob() => create();
  IndexJob._() : super();
  factory IndexJob.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IndexJob.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IndexJob', package: const $pb.PackageName(_omitMessageNames ? '' : 'endpoint.brainboost.documents.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..aOM<DocumentMetadata>(3, _omitFieldNames ? '' : 'document', subBuilder: DocumentMetadata.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IndexJob clone() => IndexJob()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IndexJob copyWith(void Function(IndexJob) updates) => super.copyWith((message) => updates(message as IndexJob)) as IndexJob;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IndexJob create() => IndexJob._();
  IndexJob createEmptyInstance() => create();
  static $pb.PbList<IndexJob> createRepeated() => $pb.PbList<IndexJob>();
  @$core.pragma('dart2js:noInline')
  static IndexJob getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IndexJob>(create);
  static IndexJob? _defaultInstance;

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
  DocumentMetadata get document => $_getN(2);
  @$pb.TagNumber(3)
  set document(DocumentMetadata v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocument() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocument() => clearField(3);
  @$pb.TagNumber(3)
  DocumentMetadata ensureDocument() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
