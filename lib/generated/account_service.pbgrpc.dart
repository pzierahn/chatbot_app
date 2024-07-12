//
//  Generated code. Do not modify.
//  source: account_service.proto
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

import 'account_service.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $0;

export 'account_service.pb.dart';

@$pb.GrpcServiceName('chatbot.account.v1.Account')
class AccountClient extends $grpc.Client {
  static final _$getUsage = $grpc.ClientMethod<$0.Empty, $1.Usage>(
      '/chatbot.account.v1.Account/GetUsage',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Usage.fromBuffer(value));
  static final _$getPayments = $grpc.ClientMethod<$0.Empty, $1.Payments>(
      '/chatbot.account.v1.Account/GetPayments',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Payments.fromBuffer(value));
  static final _$getOverview = $grpc.ClientMethod<$0.Empty, $1.Overview>(
      '/chatbot.account.v1.Account/GetOverview',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Overview.fromBuffer(value));

  AccountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.Usage> getUsage($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUsage, request, options: options);
  }

  $grpc.ResponseFuture<$1.Payments> getPayments($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPayments, request, options: options);
  }

  $grpc.ResponseFuture<$1.Overview> getOverview($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOverview, request, options: options);
  }
}

@$pb.GrpcServiceName('chatbot.account.v1.Account')
abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'chatbot.account.v1.Account';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.Usage>(
        'GetUsage',
        getUsage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.Usage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.Payments>(
        'GetPayments',
        getPayments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.Payments value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.Overview>(
        'GetOverview',
        getOverview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.Overview value) => value.writeToBuffer()));
  }

  $async.Future<$1.Usage> getUsage_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getUsage(call, await request);
  }

  $async.Future<$1.Payments> getPayments_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getPayments(call, await request);
  }

  $async.Future<$1.Overview> getOverview_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getOverview(call, await request);
  }

  $async.Future<$1.Usage> getUsage($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Payments> getPayments($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Overview> getOverview($grpc.ServiceCall call, $0.Empty request);
}
