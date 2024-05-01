//
//  Generated code. Do not modify.
//  source: document_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'collection_service.pb.dart' as $2;
import 'document_service.pb.dart' as $5;
import 'google/protobuf/empty.pb.dart' as $0;

export 'document_service.pb.dart';

@$pb.GrpcServiceName('chatbot.documents.v2.DocumentService')
class DocumentServiceClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$5.DocumentFilter, $5.DocumentList>(
      '/chatbot.documents.v2.DocumentService/List',
      ($5.DocumentFilter value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DocumentList.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$5.DocumentID, $5.Document>(
      '/chatbot.documents.v2.DocumentService/Get',
      ($5.DocumentID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Document.fromBuffer(value));
  static final _$getHeader = $grpc.ClientMethod<$5.DocumentID, $5.DocumentHeader>(
      '/chatbot.documents.v2.DocumentService/GetHeader',
      ($5.DocumentID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DocumentHeader.fromBuffer(value));
  static final _$rename = $grpc.ClientMethod<$5.RenameDocument, $0.Empty>(
      '/chatbot.documents.v2.DocumentService/Rename',
      ($5.RenameDocument value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$5.DocumentID, $0.Empty>(
      '/chatbot.documents.v2.DocumentService/Delete',
      ($5.DocumentID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$index = $grpc.ClientMethod<$5.IndexJob, $5.IndexProgress>(
      '/chatbot.documents.v2.DocumentService/Index',
      ($5.IndexJob value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.IndexProgress.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<$5.SearchQuery, $5.SearchResults>(
      '/chatbot.documents.v2.DocumentService/Search',
      ($5.SearchQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.SearchResults.fromBuffer(value));
  static final _$getReferences = $grpc.ClientMethod<$5.ReferenceIDs, $5.References>(
      '/chatbot.documents.v2.DocumentService/GetReferences',
      ($5.ReferenceIDs value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.References.fromBuffer(value));
  static final _$mapDocumentNames = $grpc.ClientMethod<$2.CollectionID, $5.DocumentNames>(
      '/chatbot.documents.v2.DocumentService/MapDocumentNames',
      ($2.CollectionID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DocumentNames.fromBuffer(value));

  DocumentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.DocumentList> list($5.DocumentFilter request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$5.Document> get($5.DocumentID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$5.DocumentHeader> getHeader($5.DocumentID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHeader, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> rename($5.RenameDocument request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rename, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete($5.DocumentID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseStream<$5.IndexProgress> index($5.IndexJob request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$index, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$5.SearchResults> search($5.SearchQuery request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$5.References> getReferences($5.ReferenceIDs request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReferences, request, options: options);
  }

  $grpc.ResponseFuture<$5.DocumentNames> mapDocumentNames($2.CollectionID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$mapDocumentNames, request, options: options);
  }
}

@$pb.GrpcServiceName('chatbot.documents.v2.DocumentService')
abstract class DocumentServiceBase extends $grpc.Service {
  $core.String get $name => 'chatbot.documents.v2.DocumentService';

  DocumentServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.DocumentFilter, $5.DocumentList>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DocumentFilter.fromBuffer(value),
        ($5.DocumentList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DocumentID, $5.Document>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DocumentID.fromBuffer(value),
        ($5.Document value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DocumentID, $5.DocumentHeader>(
        'GetHeader',
        getHeader_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DocumentID.fromBuffer(value),
        ($5.DocumentHeader value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.RenameDocument, $0.Empty>(
        'Rename',
        rename_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.RenameDocument.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DocumentID, $0.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DocumentID.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.IndexJob, $5.IndexProgress>(
        'Index',
        index_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.IndexJob.fromBuffer(value),
        ($5.IndexProgress value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SearchQuery, $5.SearchResults>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SearchQuery.fromBuffer(value),
        ($5.SearchResults value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ReferenceIDs, $5.References>(
        'GetReferences',
        getReferences_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ReferenceIDs.fromBuffer(value),
        ($5.References value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CollectionID, $5.DocumentNames>(
        'MapDocumentNames',
        mapDocumentNames_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CollectionID.fromBuffer(value),
        ($5.DocumentNames value) => value.writeToBuffer()));
  }

  $async.Future<$5.DocumentList> list_Pre($grpc.ServiceCall call, $async.Future<$5.DocumentFilter> request) async {
    return list(call, await request);
  }

  $async.Future<$5.Document> get_Pre($grpc.ServiceCall call, $async.Future<$5.DocumentID> request) async {
    return get(call, await request);
  }

  $async.Future<$5.DocumentHeader> getHeader_Pre($grpc.ServiceCall call, $async.Future<$5.DocumentID> request) async {
    return getHeader(call, await request);
  }

  $async.Future<$0.Empty> rename_Pre($grpc.ServiceCall call, $async.Future<$5.RenameDocument> request) async {
    return rename(call, await request);
  }

  $async.Future<$0.Empty> delete_Pre($grpc.ServiceCall call, $async.Future<$5.DocumentID> request) async {
    return delete(call, await request);
  }

  $async.Stream<$5.IndexProgress> index_Pre($grpc.ServiceCall call, $async.Future<$5.IndexJob> request) async* {
    yield* index(call, await request);
  }

  $async.Future<$5.SearchResults> search_Pre($grpc.ServiceCall call, $async.Future<$5.SearchQuery> request) async {
    return search(call, await request);
  }

  $async.Future<$5.References> getReferences_Pre($grpc.ServiceCall call, $async.Future<$5.ReferenceIDs> request) async {
    return getReferences(call, await request);
  }

  $async.Future<$5.DocumentNames> mapDocumentNames_Pre($grpc.ServiceCall call, $async.Future<$2.CollectionID> request) async {
    return mapDocumentNames(call, await request);
  }

  $async.Future<$5.DocumentList> list($grpc.ServiceCall call, $5.DocumentFilter request);
  $async.Future<$5.Document> get($grpc.ServiceCall call, $5.DocumentID request);
  $async.Future<$5.DocumentHeader> getHeader($grpc.ServiceCall call, $5.DocumentID request);
  $async.Future<$0.Empty> rename($grpc.ServiceCall call, $5.RenameDocument request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $5.DocumentID request);
  $async.Stream<$5.IndexProgress> index($grpc.ServiceCall call, $5.IndexJob request);
  $async.Future<$5.SearchResults> search($grpc.ServiceCall call, $5.SearchQuery request);
  $async.Future<$5.References> getReferences($grpc.ServiceCall call, $5.ReferenceIDs request);
  $async.Future<$5.DocumentNames> mapDocumentNames($grpc.ServiceCall call, $2.CollectionID request);
}
