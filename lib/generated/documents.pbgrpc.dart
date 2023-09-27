//
//  Generated code. Do not modify.
//  source: documents.proto
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

import 'documents.pb.dart' as $4;
import 'google/protobuf/empty.pb.dart' as $0;

export 'documents.pb.dart';

@$pb.GrpcServiceName('endpoint.brainboost.documents.v1.DocumentService')
class DocumentServiceClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$4.DocumentFilter, $4.Documents>(
      '/endpoint.brainboost.documents.v1.DocumentService/List',
      ($4.DocumentFilter value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Documents.fromBuffer(value));
  static final _$index = $grpc.ClientMethod<$4.Document, $4.IndexProgress>(
      '/endpoint.brainboost.documents.v1.DocumentService/Index',
      ($4.Document value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.IndexProgress.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$4.Document, $0.Empty>(
      '/endpoint.brainboost.documents.v1.DocumentService/Delete',
      ($4.Document value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$4.Document, $0.Empty>(
      '/endpoint.brainboost.documents.v1.DocumentService/Update',
      ($4.Document value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<$4.SearchQuery, $4.SearchResults>(
      '/endpoint.brainboost.documents.v1.DocumentService/Search',
      ($4.SearchQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.SearchResults.fromBuffer(value));

  DocumentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.Documents> list($4.DocumentFilter request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseStream<$4.IndexProgress> index($4.Document request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$index, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete($4.Document request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> update($4.Document request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$4.SearchResults> search($4.SearchQuery request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }
}

@$pb.GrpcServiceName('endpoint.brainboost.documents.v1.DocumentService')
abstract class DocumentServiceBase extends $grpc.Service {
  $core.String get $name => 'endpoint.brainboost.documents.v1.DocumentService';

  DocumentServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.DocumentFilter, $4.Documents>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DocumentFilter.fromBuffer(value),
        ($4.Documents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Document, $4.IndexProgress>(
        'Index',
        index_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $4.Document.fromBuffer(value),
        ($4.IndexProgress value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Document, $0.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Document.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Document, $0.Empty>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Document.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SearchQuery, $4.SearchResults>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.SearchQuery.fromBuffer(value),
        ($4.SearchResults value) => value.writeToBuffer()));
  }

  $async.Future<$4.Documents> list_Pre($grpc.ServiceCall call, $async.Future<$4.DocumentFilter> request) async {
    return list(call, await request);
  }

  $async.Stream<$4.IndexProgress> index_Pre($grpc.ServiceCall call, $async.Future<$4.Document> request) async* {
    yield* index(call, await request);
  }

  $async.Future<$0.Empty> delete_Pre($grpc.ServiceCall call, $async.Future<$4.Document> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.Empty> update_Pre($grpc.ServiceCall call, $async.Future<$4.Document> request) async {
    return update(call, await request);
  }

  $async.Future<$4.SearchResults> search_Pre($grpc.ServiceCall call, $async.Future<$4.SearchQuery> request) async {
    return search(call, await request);
  }

  $async.Future<$4.Documents> list($grpc.ServiceCall call, $4.DocumentFilter request);
  $async.Stream<$4.IndexProgress> index($grpc.ServiceCall call, $4.Document request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $4.Document request);
  $async.Future<$0.Empty> update($grpc.ServiceCall call, $4.Document request);
  $async.Future<$4.SearchResults> search($grpc.ServiceCall call, $4.SearchQuery request);
}
