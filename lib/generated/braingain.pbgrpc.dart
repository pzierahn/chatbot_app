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
  static final _$listDocuments = $grpc.ClientMethod<$1.Empty, $0.Documents>(
      '/endpoint.braingain.v1.Braingain/ListDocuments',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Documents.fromBuffer(value));
  static final _$findDocuments = $grpc.ClientMethod<$0.DocumentQuery, $0.Documents>(
      '/endpoint.braingain.v1.Braingain/FindDocuments',
      ($0.DocumentQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Documents.fromBuffer(value));

  BraingainClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Completion> chat($0.Prompt request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chat, request, options: options);
  }

  $grpc.ResponseFuture<$0.Documents> listDocuments($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDocuments, request, options: options);
  }

  $grpc.ResponseFuture<$0.Documents> findDocuments($0.DocumentQuery request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findDocuments, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.Documents>(
        'ListDocuments',
        listDocuments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.Documents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DocumentQuery, $0.Documents>(
        'FindDocuments',
        findDocuments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DocumentQuery.fromBuffer(value),
        ($0.Documents value) => value.writeToBuffer()));
  }

  $async.Future<$0.Completion> chat_Pre($grpc.ServiceCall call, $async.Future<$0.Prompt> request) async {
    return chat(call, await request);
  }

  $async.Future<$0.Documents> listDocuments_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return listDocuments(call, await request);
  }

  $async.Future<$0.Documents> findDocuments_Pre($grpc.ServiceCall call, $async.Future<$0.DocumentQuery> request) async {
    return findDocuments(call, await request);
  }

  $async.Future<$0.Completion> chat($grpc.ServiceCall call, $0.Prompt request);
  $async.Future<$0.Documents> listDocuments($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.Documents> findDocuments($grpc.ServiceCall call, $0.DocumentQuery request);
}
