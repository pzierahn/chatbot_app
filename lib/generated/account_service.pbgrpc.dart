//
//  Generated code. Do not modify.
//  source: account_service.proto
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

import 'account_service.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $0;

export 'account_service.pb.dart';

@$pb.GrpcServiceName('endpoint.brainboost.account.v1.AccountService')
class AccountServiceClient extends $grpc.Client {
  static final _$getCosts = $grpc.ClientMethod<$0.Empty, $1.Costs>(
      '/endpoint.brainboost.account.v1.AccountService/GetCosts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Costs.fromBuffer(value));
  static final _$getPayments = $grpc.ClientMethod<$0.Empty, $1.Payments>(
      '/endpoint.brainboost.account.v1.AccountService/GetPayments',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Payments.fromBuffer(value));
  static final _$getBalanceSheet = $grpc.ClientMethod<$0.Empty, $1.BalanceSheet>(
      '/endpoint.brainboost.account.v1.AccountService/GetBalanceSheet',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BalanceSheet.fromBuffer(value));

  AccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.Costs> getCosts($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCosts, request, options: options);
  }

  $grpc.ResponseFuture<$1.Payments> getPayments($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPayments, request, options: options);
  }

  $grpc.ResponseFuture<$1.BalanceSheet> getBalanceSheet($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBalanceSheet, request, options: options);
  }
}

@$pb.GrpcServiceName('endpoint.brainboost.account.v1.AccountService')
abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'endpoint.brainboost.account.v1.AccountService';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.Costs>(
        'GetCosts',
        getCosts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.Costs value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.Payments>(
        'GetPayments',
        getPayments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.Payments value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BalanceSheet>(
        'GetBalanceSheet',
        getBalanceSheet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BalanceSheet value) => value.writeToBuffer()));
  }

  $async.Future<$1.Costs> getCosts_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getCosts(call, await request);
  }

  $async.Future<$1.Payments> getPayments_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getPayments(call, await request);
  }

  $async.Future<$1.BalanceSheet> getBalanceSheet_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getBalanceSheet(call, await request);
  }

  $async.Future<$1.Costs> getCosts($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Payments> getPayments($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BalanceSheet> getBalanceSheet($grpc.ServiceCall call, $0.Empty request);
}
