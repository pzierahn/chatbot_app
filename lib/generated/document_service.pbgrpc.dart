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

import 'document_service.pb.dart' as $5;
import 'google/protobuf/empty.pb.dart' as $0;

export 'document_service.pb.dart';

@$pb.GrpcServiceName('chatbot.documents.v1.Document')
class DocumentClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$5.DocumentFilter, $5.DocumentList>(
      '/chatbot.documents.v1.Document/List',
      ($5.DocumentFilter value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DocumentList.fromBuffer(value));
  static final _$rename = $grpc.ClientMethod<$5.RenameDocument, $0.Empty>(
      '/chatbot.documents.v1.Document/Rename',
      ($5.RenameDocument value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$5.DocumentID, $0.Empty>(
      '/chatbot.documents.v1.Document/Delete',
      ($5.DocumentID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$index = $grpc.ClientMethod<$5.IndexJob, $5.IndexProgress>(
      '/chatbot.documents.v1.Document/Index',
      ($5.IndexJob value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.IndexProgress.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<$5.SearchQuery, $5.SearchResults>(
      '/chatbot.documents.v1.Document/Search',
      ($5.SearchQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.SearchResults.fromBuffer(value));

  DocumentClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.DocumentList> list($5.DocumentFilter request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
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
}

@$pb.GrpcServiceName('chatbot.documents.v1.Document')
abstract class DocumentServiceBase extends $grpc.Service {
  $core.String get $name => 'chatbot.documents.v1.Document';

  DocumentServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.DocumentFilter, $5.DocumentList>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DocumentFilter.fromBuffer(value),
        ($5.DocumentList value) => value.writeToBuffer()));
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
  }

  $async.Future<$5.DocumentList> list_Pre($grpc.ServiceCall call, $async.Future<$5.DocumentFilter> request) async {
    return list(call, await request);
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

  $async.Future<$5.DocumentList> list($grpc.ServiceCall call, $5.DocumentFilter request);
  $async.Future<$0.Empty> rename($grpc.ServiceCall call, $5.RenameDocument request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $5.DocumentID request);
  $async.Stream<$5.IndexProgress> index($grpc.ServiceCall call, $5.IndexJob request);
  $async.Future<$5.SearchResults> search($grpc.ServiceCall call, $5.SearchQuery request);
}
