//
//  Generated code. Do not modify.
//  source: collection_service.proto
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

import 'collection_service.pb.dart' as $2;
import 'google/protobuf/empty.pb.dart' as $0;

export 'collection_service.pb.dart';

@$pb.GrpcServiceName('endpoint.brainboost.collections.v1.CollectionService')
class CollectionServiceClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$2.CollectionID, $2.Collection>(
      '/endpoint.brainboost.collections.v1.CollectionService/Get',
      ($2.CollectionID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Collection.fromBuffer(value));
  static final _$getAll = $grpc.ClientMethod<$0.Empty, $2.Collections>(
      '/endpoint.brainboost.collections.v1.CollectionService/GetAll',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Collections.fromBuffer(value));
  static final _$create = $grpc.ClientMethod<$2.Collection, $2.Collection>(
      '/endpoint.brainboost.collections.v1.CollectionService/Create',
      ($2.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Collection.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$2.Collection, $2.Collection>(
      '/endpoint.brainboost.collections.v1.CollectionService/Update',
      ($2.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Collection.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$2.Collection, $0.Empty>(
      '/endpoint.brainboost.collections.v1.CollectionService/Delete',
      ($2.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  CollectionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.Collection> get($2.CollectionID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$2.Collections> getAll($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$2.Collection> create($2.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$2.Collection> update($2.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete($2.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

@$pb.GrpcServiceName('endpoint.brainboost.collections.v1.CollectionService')
abstract class CollectionServiceBase extends $grpc.Service {
  $core.String get $name => 'endpoint.brainboost.collections.v1.CollectionService';

  CollectionServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CollectionID, $2.Collection>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CollectionID.fromBuffer(value),
        ($2.Collection value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Collections>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Collections value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Collection, $2.Collection>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Collection.fromBuffer(value),
        ($2.Collection value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Collection, $2.Collection>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Collection.fromBuffer(value),
        ($2.Collection value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Collection, $0.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Collection.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.Collection> get_Pre($grpc.ServiceCall call, $async.Future<$2.CollectionID> request) async {
    return get(call, await request);
  }

  $async.Future<$2.Collections> getAll_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAll(call, await request);
  }

  $async.Future<$2.Collection> create_Pre($grpc.ServiceCall call, $async.Future<$2.Collection> request) async {
    return create(call, await request);
  }

  $async.Future<$2.Collection> update_Pre($grpc.ServiceCall call, $async.Future<$2.Collection> request) async {
    return update(call, await request);
  }

  $async.Future<$0.Empty> delete_Pre($grpc.ServiceCall call, $async.Future<$2.Collection> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.Collection> get($grpc.ServiceCall call, $2.CollectionID request);
  $async.Future<$2.Collections> getAll($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$2.Collection> create($grpc.ServiceCall call, $2.Collection request);
  $async.Future<$2.Collection> update($grpc.ServiceCall call, $2.Collection request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $2.Collection request);
}
