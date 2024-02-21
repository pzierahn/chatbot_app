//
//  Generated code. Do not modify.
//  source: document_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'document_service.pb.dart' as $4;
import 'google/protobuf/empty.pb.dart' as $0;

export 'document_service.pb.dart';

@$pb.GrpcServiceName('endpoint.brainboost.documents.v2.DocumentService')
class DocumentServiceClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$4.DocumentFilter, $4.DocumentList>(
      '/endpoint.brainboost.documents.v2.DocumentService/List',
      ($4.DocumentFilter value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DocumentList.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$4.DocumentID, $4.Document>(
      '/endpoint.brainboost.documents.v2.DocumentService/Get',
      ($4.DocumentID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Document.fromBuffer(value));
  static final _$rename = $grpc.ClientMethod<$4.RenameDocument, $0.Empty>(
      '/endpoint.brainboost.documents.v2.DocumentService/Rename',
      ($4.RenameDocument value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$4.DocumentID, $0.Empty>(
      '/endpoint.brainboost.documents.v2.DocumentService/Delete',
      ($4.DocumentID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$index = $grpc.ClientMethod<$4.IndexJob, $4.IndexProgress>(
      '/endpoint.brainboost.documents.v2.DocumentService/Index',
      ($4.IndexJob value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.IndexProgress.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<$4.SearchQuery, $4.SearchResults>(
      '/endpoint.brainboost.documents.v2.DocumentService/Search',
      ($4.SearchQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.SearchResults.fromBuffer(value));
  static final _$getReferences = $grpc.ClientMethod<$4.ReferenceIDs, $4.References>(
      '/endpoint.brainboost.documents.v2.DocumentService/GetReferences',
      ($4.ReferenceIDs value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.References.fromBuffer(value));

  DocumentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.DocumentList> list($4.DocumentFilter request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$4.Document> get($4.DocumentID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> rename($4.RenameDocument request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rename, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete($4.DocumentID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseStream<$4.IndexProgress> index($4.IndexJob request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$index, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$4.SearchResults> search($4.SearchQuery request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$4.References> getReferences($4.ReferenceIDs request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReferences, request, options: options);
  }
}

@$pb.GrpcServiceName('endpoint.brainboost.documents.v2.DocumentService')
abstract class DocumentServiceBase extends $grpc.Service {
  $core.String get $name => 'endpoint.brainboost.documents.v2.DocumentService';

  DocumentServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.DocumentFilter, $4.DocumentList>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DocumentFilter.fromBuffer(value),
        ($4.DocumentList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DocumentID, $4.Document>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DocumentID.fromBuffer(value),
        ($4.Document value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RenameDocument, $0.Empty>(
        'Rename',
        rename_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.RenameDocument.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DocumentID, $0.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DocumentID.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.IndexJob, $4.IndexProgress>(
        'Index',
        index_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $4.IndexJob.fromBuffer(value),
        ($4.IndexProgress value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SearchQuery, $4.SearchResults>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.SearchQuery.fromBuffer(value),
        ($4.SearchResults value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ReferenceIDs, $4.References>(
        'GetReferences',
        getReferences_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ReferenceIDs.fromBuffer(value),
        ($4.References value) => value.writeToBuffer()));
  }

  $async.Future<$4.DocumentList> list_Pre($grpc.ServiceCall call, $async.Future<$4.DocumentFilter> request) async {
    return list(call, await request);
  }

  $async.Future<$4.Document> get_Pre($grpc.ServiceCall call, $async.Future<$4.DocumentID> request) async {
    return get(call, await request);
  }

  $async.Future<$0.Empty> rename_Pre($grpc.ServiceCall call, $async.Future<$4.RenameDocument> request) async {
    return rename(call, await request);
  }

  $async.Future<$0.Empty> delete_Pre($grpc.ServiceCall call, $async.Future<$4.DocumentID> request) async {
    return delete(call, await request);
  }

  $async.Stream<$4.IndexProgress> index_Pre($grpc.ServiceCall call, $async.Future<$4.IndexJob> request) async* {
    yield* index(call, await request);
  }

  $async.Future<$4.SearchResults> search_Pre($grpc.ServiceCall call, $async.Future<$4.SearchQuery> request) async {
    return search(call, await request);
  }

  $async.Future<$4.References> getReferences_Pre($grpc.ServiceCall call, $async.Future<$4.ReferenceIDs> request) async {
    return getReferences(call, await request);
  }

  $async.Future<$4.DocumentList> list($grpc.ServiceCall call, $4.DocumentFilter request);
  $async.Future<$4.Document> get($grpc.ServiceCall call, $4.DocumentID request);
  $async.Future<$0.Empty> rename($grpc.ServiceCall call, $4.RenameDocument request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $4.DocumentID request);
  $async.Stream<$4.IndexProgress> index($grpc.ServiceCall call, $4.IndexJob request);
  $async.Future<$4.SearchResults> search($grpc.ServiceCall call, $4.SearchQuery request);
  $async.Future<$4.References> getReferences($grpc.ServiceCall call, $4.ReferenceIDs request);
}
