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

export 'braingain.pb.dart';

@$pb.GrpcServiceName('endpoint.braingain.v1.Braingain')
class BraingainClient extends $grpc.Client {
  static final _$chat = $grpc.ClientMethod<$0.Prompt, $0.ChatCompletion>(
      '/endpoint.braingain.v1.Braingain/Chat',
      ($0.Prompt value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatCompletion.fromBuffer(value));

  BraingainClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ChatCompletion> chat($0.Prompt request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chat, request, options: options);
  }
}

@$pb.GrpcServiceName('endpoint.braingain.v1.Braingain')
abstract class BraingainServiceBase extends $grpc.Service {
  $core.String get $name => 'endpoint.braingain.v1.Braingain';

  BraingainServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Prompt, $0.ChatCompletion>(
        'Chat',
        chat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Prompt.fromBuffer(value),
        ($0.ChatCompletion value) => value.writeToBuffer()));
  }

  $async.Future<$0.ChatCompletion> chat_Pre($grpc.ServiceCall call, $async.Future<$0.Prompt> request) async {
    return chat(call, await request);
  }

  $async.Future<$0.ChatCompletion> chat($grpc.ServiceCall call, $0.Prompt request);
}
