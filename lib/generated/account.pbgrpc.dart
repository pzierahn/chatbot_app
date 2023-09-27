//
//  Generated code. Do not modify.
//  source: account.proto
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

import 'account.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $0;

export 'account.pb.dart';

@$pb.GrpcServiceName('endpoint.brainboost.account.v1.AccountService')
class AccountServiceClient extends $grpc.Client {
  static final _$getModelUsages = $grpc.ClientMethod<$0.Empty, $1.ModelUsages>(
      '/endpoint.brainboost.account.v1.AccountService/GetModelUsages',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ModelUsages.fromBuffer(value));

  AccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.ModelUsages> getModelUsages($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getModelUsages, request, options: options);
  }
}

@$pb.GrpcServiceName('endpoint.brainboost.account.v1.AccountService')
abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'endpoint.brainboost.account.v1.AccountService';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.ModelUsages>(
        'GetModelUsages',
        getModelUsages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.ModelUsages value) => value.writeToBuffer()));
  }

  $async.Future<$1.ModelUsages> getModelUsages_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getModelUsages(call, await request);
  }

  $async.Future<$1.ModelUsages> getModelUsages($grpc.ServiceCall call, $0.Empty request);
}
