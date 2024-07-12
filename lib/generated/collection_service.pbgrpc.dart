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

@$pb.GrpcServiceName('chatbot.collections.v1.Collections')
class CollectionsClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$0.Empty, $3.CollectionList>(
      '/chatbot.collections.v1.Collections/List',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CollectionList.fromBuffer(value));
  static final _$insert = $grpc.ClientMethod<$3.Collection, $0.Empty>(
      '/chatbot.collections.v1.Collections/Insert',
      ($3.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$3.Collection, $0.Empty>(
      '/chatbot.collections.v1.Collections/Update',
      ($3.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$3.Collection, $0.Empty>(
      '/chatbot.collections.v1.Collections/Delete',
      ($3.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  CollectionsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CollectionList> list($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> insert($3.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insert, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> update($3.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete($3.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

@$pb.GrpcServiceName('chatbot.collections.v1.Collections')
abstract class CollectionsServiceBase extends $grpc.Service {
  $core.String get $name => 'chatbot.collections.v1.Collections';

  CollectionsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $3.CollectionList>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($3.CollectionList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Collection, $0.Empty>(
        'Insert',
        insert_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Collection.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Collection, $0.Empty>(
        'Update',
        update_Pre,
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

  $async.Future<$3.CollectionList> list_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return list(call, await request);
  }

  $async.Future<$0.Empty> insert_Pre($grpc.ServiceCall call, $async.Future<$3.Collection> request) async {
    return insert(call, await request);
  }

  $async.Future<$0.Empty> update_Pre($grpc.ServiceCall call, $async.Future<$3.Collection> request) async {
    return update(call, await request);
  }

  $async.Future<$0.Empty> delete_Pre($grpc.ServiceCall call, $async.Future<$3.Collection> request) async {
    return delete(call, await request);
  }

  $async.Future<$3.CollectionList> list($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> insert($grpc.ServiceCall call, $3.Collection request);
  $async.Future<$0.Empty> update($grpc.ServiceCall call, $3.Collection request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $3.Collection request);
}
