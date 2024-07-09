//
//  Generated code. Do not modify.
//  source: chat_service.proto
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

import 'chat_service.pb.dart' as $2;
import 'google/protobuf/empty.pb.dart' as $0;

export 'chat_service.pb.dart';

@$pb.GrpcServiceName('chatbot.chat.v1.Chat')
class ChatClient extends $grpc.Client {
  static final _$postMessage = $grpc.ClientMethod<$2.Prompt, $2.Message>(
      '/chatbot.chat.v1.Chat/PostMessage',
      ($2.Prompt value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Message.fromBuffer(value));
  static final _$getThread = $grpc.ClientMethod<$2.ThreadID, $2.Thread>(
      '/chatbot.chat.v1.Chat/GetThread',
      ($2.ThreadID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Thread.fromBuffer(value));
  static final _$listThreadIDs = $grpc.ClientMethod<$2.CollectionId, $2.ThreadIDs>(
      '/chatbot.chat.v1.Chat/ListThreadIDs',
      ($2.CollectionId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ThreadIDs.fromBuffer(value));
  static final _$deleteThread = $grpc.ClientMethod<$2.ThreadID, $0.Empty>(
      '/chatbot.chat.v1.Chat/DeleteThread',
      ($2.ThreadID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$deleteMessageFromThread = $grpc.ClientMethod<$2.MessageID, $0.Empty>(
      '/chatbot.chat.v1.Chat/DeleteMessageFromThread',
      ($2.MessageID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$completion = $grpc.ClientMethod<$2.CompletionRequest, $2.CompletionResponse>(
      '/chatbot.chat.v1.Chat/Completion',
      ($2.CompletionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CompletionResponse.fromBuffer(value));

  ChatClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.Message> postMessage($2.Prompt request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postMessage, request, options: options);
  }

  $grpc.ResponseFuture<$2.Thread> getThread($2.ThreadID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getThread, request, options: options);
  }

  $grpc.ResponseFuture<$2.ThreadIDs> listThreadIDs($2.CollectionId request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listThreadIDs, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteThread($2.ThreadID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteThread, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteMessageFromThread($2.MessageID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMessageFromThread, request, options: options);
  }

  $grpc.ResponseFuture<$2.CompletionResponse> completion($2.CompletionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completion, request, options: options);
  }
}

@$pb.GrpcServiceName('chatbot.chat.v1.Chat')
abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'chatbot.chat.v1.Chat';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Prompt, $2.Message>(
        'PostMessage',
        postMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Prompt.fromBuffer(value),
        ($2.Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ThreadID, $2.Thread>(
        'GetThread',
        getThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ThreadID.fromBuffer(value),
        ($2.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CollectionId, $2.ThreadIDs>(
        'ListThreadIDs',
        listThreadIDs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CollectionId.fromBuffer(value),
        ($2.ThreadIDs value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ThreadID, $0.Empty>(
        'DeleteThread',
        deleteThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ThreadID.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MessageID, $0.Empty>(
        'DeleteMessageFromThread',
        deleteMessageFromThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MessageID.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CompletionRequest, $2.CompletionResponse>(
        'Completion',
        completion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CompletionRequest.fromBuffer(value),
        ($2.CompletionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.Message> postMessage_Pre($grpc.ServiceCall call, $async.Future<$2.Prompt> request) async {
    return postMessage(call, await request);
  }

  $async.Future<$2.Thread> getThread_Pre($grpc.ServiceCall call, $async.Future<$2.ThreadID> request) async {
    return getThread(call, await request);
  }

  $async.Future<$2.ThreadIDs> listThreadIDs_Pre($grpc.ServiceCall call, $async.Future<$2.CollectionId> request) async {
    return listThreadIDs(call, await request);
  }

  $async.Future<$0.Empty> deleteThread_Pre($grpc.ServiceCall call, $async.Future<$2.ThreadID> request) async {
    return deleteThread(call, await request);
  }

  $async.Future<$0.Empty> deleteMessageFromThread_Pre($grpc.ServiceCall call, $async.Future<$2.MessageID> request) async {
    return deleteMessageFromThread(call, await request);
  }

  $async.Future<$2.CompletionResponse> completion_Pre($grpc.ServiceCall call, $async.Future<$2.CompletionRequest> request) async {
    return completion(call, await request);
  }

  $async.Future<$2.Message> postMessage($grpc.ServiceCall call, $2.Prompt request);
  $async.Future<$2.Thread> getThread($grpc.ServiceCall call, $2.ThreadID request);
  $async.Future<$2.ThreadIDs> listThreadIDs($grpc.ServiceCall call, $2.CollectionId request);
  $async.Future<$0.Empty> deleteThread($grpc.ServiceCall call, $2.ThreadID request);
  $async.Future<$0.Empty> deleteMessageFromThread($grpc.ServiceCall call, $2.MessageID request);
  $async.Future<$2.CompletionResponse> completion($grpc.ServiceCall call, $2.CompletionRequest request);
}
