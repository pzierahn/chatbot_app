//
//  Generated code. Do not modify.
//  source: collection_service.proto
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

import 'collection_service.pb.dart' as $3;
import 'google/protobuf/empty.pb.dart' as $0;

export 'collection_service.pb.dart';

@$pb.GrpcServiceName('chatbot.collections.v3.CollectionService')
class CollectionServiceClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$0.Empty, $3.Collections>(
      '/chatbot.collections.v3.CollectionService/List',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Collections.fromBuffer(value));
  static final _$store = $grpc.ClientMethod<$3.Collection, $0.Empty>(
      '/chatbot.collections.v3.CollectionService/Store',
      ($3.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$3.Collection, $0.Empty>(
      '/chatbot.collections.v3.CollectionService/Delete',
      ($3.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  CollectionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.Collections> list($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> store($3.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$store, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete($3.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

@$pb.GrpcServiceName('chatbot.collections.v3.CollectionService')
abstract class CollectionServiceBase extends $grpc.Service {
  $core.String get $name => 'chatbot.collections.v3.CollectionService';

  CollectionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $3.Collections>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($3.Collections value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Collection, $0.Empty>(
        'Store',
        store_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Collection.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Collection, $0.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Collection.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$3.Collections> list_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return list(call, await request);
  }

  $async.Future<$0.Empty> store_Pre($grpc.ServiceCall call, $async.Future<$3.Collection> request) async {
    return store(call, await request);
  }

  $async.Future<$0.Empty> delete_Pre($grpc.ServiceCall call, $async.Future<$3.Collection> request) async {
    return delete(call, await request);
  }

  $async.Future<$3.Collections> list($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> store($grpc.ServiceCall call, $3.Collection request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $3.Collection request);
}
