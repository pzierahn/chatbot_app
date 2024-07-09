//
//  Generated code. Do not modify.
//  source: notion.proto
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

import 'google/protobuf/empty.pb.dart' as $0;
import 'notion.pb.dart' as $6;

export 'notion.pb.dart';

@$pb.GrpcServiceName('chatbot.notion.v2.Notion')
class NotionClient extends $grpc.Client {
  static final _$insertAPIKey = $grpc.ClientMethod<$6.NotionApiKey, $0.Empty>(
      '/chatbot.notion.v2.Notion/InsertAPIKey',
      ($6.NotionApiKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$updateAPIKey = $grpc.ClientMethod<$6.NotionApiKey, $0.Empty>(
      '/chatbot.notion.v2.Notion/UpdateAPIKey',
      ($6.NotionApiKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$deleteAPIKey = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/chatbot.notion.v2.Notion/DeleteAPIKey',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getAPIKey = $grpc.ClientMethod<$0.Empty, $6.NotionApiKey>(
      '/chatbot.notion.v2.Notion/GetAPIKey',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.NotionApiKey.fromBuffer(value));
  static final _$listDatabases = $grpc.ClientMethod<$0.Empty, $6.Databases>(
      '/chatbot.notion.v2.Notion/ListDatabases',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.Databases.fromBuffer(value));
  static final _$executePrompt = $grpc.ClientMethod<$6.NotionPrompt, $6.ExecutionResult>(
      '/chatbot.notion.v2.Notion/ExecutePrompt',
      ($6.NotionPrompt value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ExecutionResult.fromBuffer(value));

  NotionClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> insertAPIKey($6.NotionApiKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertAPIKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> updateAPIKey($6.NotionApiKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAPIKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteAPIKey($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAPIKey, request, options: options);
  }

  $grpc.ResponseFuture<$6.NotionApiKey> getAPIKey($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAPIKey, request, options: options);
  }

  $grpc.ResponseFuture<$6.Databases> listDatabases($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDatabases, request, options: options);
  }

  $grpc.ResponseStream<$6.ExecutionResult> executePrompt($6.NotionPrompt request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$executePrompt, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('chatbot.notion.v2.Notion')
abstract class NotionServiceBase extends $grpc.Service {
  $core.String get $name => 'chatbot.notion.v2.Notion';

  NotionServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.NotionApiKey, $0.Empty>(
        'InsertAPIKey',
        insertAPIKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.NotionApiKey.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.NotionApiKey, $0.Empty>(
        'UpdateAPIKey',
        updateAPIKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.NotionApiKey.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DeleteAPIKey',
        deleteAPIKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $6.NotionApiKey>(
        'GetAPIKey',
        getAPIKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($6.NotionApiKey value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $6.Databases>(
        'ListDatabases',
        listDatabases_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($6.Databases value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.NotionPrompt, $6.ExecutionResult>(
        'ExecutePrompt',
        executePrompt_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $6.NotionPrompt.fromBuffer(value),
        ($6.ExecutionResult value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> insertAPIKey_Pre($grpc.ServiceCall call, $async.Future<$6.NotionApiKey> request) async {
    return insertAPIKey(call, await request);
  }

  $async.Future<$0.Empty> updateAPIKey_Pre($grpc.ServiceCall call, $async.Future<$6.NotionApiKey> request) async {
    return updateAPIKey(call, await request);
  }

  $async.Future<$0.Empty> deleteAPIKey_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return deleteAPIKey(call, await request);
  }

  $async.Future<$6.NotionApiKey> getAPIKey_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAPIKey(call, await request);
  }

  $async.Future<$6.Databases> listDatabases_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return listDatabases(call, await request);
  }

  $async.Stream<$6.ExecutionResult> executePrompt_Pre($grpc.ServiceCall call, $async.Future<$6.NotionPrompt> request) async* {
    yield* executePrompt(call, await request);
  }

  $async.Future<$0.Empty> insertAPIKey($grpc.ServiceCall call, $6.NotionApiKey request);
  $async.Future<$0.Empty> updateAPIKey($grpc.ServiceCall call, $6.NotionApiKey request);
  $async.Future<$0.Empty> deleteAPIKey($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$6.NotionApiKey> getAPIKey($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$6.Databases> listDatabases($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$6.ExecutionResult> executePrompt($grpc.ServiceCall call, $6.NotionPrompt request);
}
