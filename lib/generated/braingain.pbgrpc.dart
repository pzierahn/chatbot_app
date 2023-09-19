//
//  Generated code. Do not modify.
//  source: braingain.proto
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

import 'braingain.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;

export 'braingain.pb.dart';

@$pb.GrpcServiceName('endpoint.braingain.v1.Braingain')
class BraingainClient extends $grpc.Client {
  static final _$chat = $grpc.ClientMethod<$0.Prompt, $0.Completion>(
      '/endpoint.braingain.v1.Braingain/Chat',
      ($0.Prompt value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Completion.fromBuffer(value));
  static final _$filterDocuments = $grpc.ClientMethod<$0.DocumentFilter, $0.Documents>(
      '/endpoint.braingain.v1.Braingain/FilterDocuments',
      ($0.DocumentFilter value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Documents.fromBuffer(value));
  static final _$deleteDocument = $grpc.ClientMethod<$0.StorageRef, $1.Empty>(
      '/endpoint.braingain.v1.Braingain/DeleteDocument',
      ($0.StorageRef value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getCollections = $grpc.ClientMethod<$1.Empty, $0.Collections>(
      '/endpoint.braingain.v1.Braingain/GetCollections',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Collections.fromBuffer(value));
  static final _$createCollection = $grpc.ClientMethod<$0.Collection, $1.Empty>(
      '/endpoint.braingain.v1.Braingain/CreateCollection',
      ($0.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$updateCollection = $grpc.ClientMethod<$0.Collection, $1.Empty>(
      '/endpoint.braingain.v1.Braingain/UpdateCollection',
      ($0.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$indexDocument = $grpc.ClientMethod<$0.StorageRef, $0.IndexProgress>(
      '/endpoint.braingain.v1.Braingain/IndexDocument',
      ($0.StorageRef value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IndexProgress.fromBuffer(value));

  BraingainClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Completion> chat($0.Prompt request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chat, request, options: options);
  }

  $grpc.ResponseFuture<$0.Documents> filterDocuments($0.DocumentFilter request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$filterDocuments, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteDocument($0.StorageRef request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteDocument, request, options: options);
  }

  $grpc.ResponseFuture<$0.Collections> getCollections($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCollections, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> createCollection($0.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCollection, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateCollection($0.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCollection, request, options: options);
  }

  $grpc.ResponseStream<$0.IndexProgress> indexDocument($0.StorageRef request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$indexDocument, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('endpoint.braingain.v1.Braingain')
abstract class BraingainServiceBase extends $grpc.Service {
  $core.String get $name => 'endpoint.braingain.v1.Braingain';

  BraingainServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Prompt, $0.Completion>(
        'Chat',
        chat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Prompt.fromBuffer(value),
        ($0.Completion value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DocumentFilter, $0.Documents>(
        'FilterDocuments',
        filterDocuments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DocumentFilter.fromBuffer(value),
        ($0.Documents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StorageRef, $1.Empty>(
        'DeleteDocument',
        deleteDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StorageRef.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.Collections>(
        'GetCollections',
        getCollections_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.Collections value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Collection, $1.Empty>(
        'CreateCollection',
        createCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Collection.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Collection, $1.Empty>(
        'UpdateCollection',
        updateCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Collection.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StorageRef, $0.IndexProgress>(
        'IndexDocument',
        indexDocument_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StorageRef.fromBuffer(value),
        ($0.IndexProgress value) => value.writeToBuffer()));
  }

  $async.Future<$0.Completion> chat_Pre($grpc.ServiceCall call, $async.Future<$0.Prompt> request) async {
    return chat(call, await request);
  }

  $async.Future<$0.Documents> filterDocuments_Pre($grpc.ServiceCall call, $async.Future<$0.DocumentFilter> request) async {
    return filterDocuments(call, await request);
  }

  $async.Future<$1.Empty> deleteDocument_Pre($grpc.ServiceCall call, $async.Future<$0.StorageRef> request) async {
    return deleteDocument(call, await request);
  }

  $async.Future<$0.Collections> getCollections_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getCollections(call, await request);
  }

  $async.Future<$1.Empty> createCollection_Pre($grpc.ServiceCall call, $async.Future<$0.Collection> request) async {
    return createCollection(call, await request);
  }

  $async.Future<$1.Empty> updateCollection_Pre($grpc.ServiceCall call, $async.Future<$0.Collection> request) async {
    return updateCollection(call, await request);
  }

  $async.Stream<$0.IndexProgress> indexDocument_Pre($grpc.ServiceCall call, $async.Future<$0.StorageRef> request) async* {
    yield* indexDocument(call, await request);
  }

  $async.Future<$0.Completion> chat($grpc.ServiceCall call, $0.Prompt request);
  $async.Future<$0.Documents> filterDocuments($grpc.ServiceCall call, $0.DocumentFilter request);
  $async.Future<$1.Empty> deleteDocument($grpc.ServiceCall call, $0.StorageRef request);
  $async.Future<$0.Collections> getCollections($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.Empty> createCollection($grpc.ServiceCall call, $0.Collection request);
  $async.Future<$1.Empty> updateCollection($grpc.ServiceCall call, $0.Collection request);
  $async.Stream<$0.IndexProgress> indexDocument($grpc.ServiceCall call, $0.StorageRef request);
}
