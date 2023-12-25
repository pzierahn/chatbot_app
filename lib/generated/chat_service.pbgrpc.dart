//
//  Generated code. Do not modify.
//  source: chat_service.proto
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

import 'chat_service.pb.dart' as $3;
import 'collection_service.pb.dart' as $2;

export 'chat_service.pb.dart';

@$pb.GrpcServiceName('endpoint.brainboost.chat.v2.ChatService')
class ChatServiceClient extends $grpc.Client {
  static final _$chat = $grpc.ClientMethod<$3.Prompt, $3.ChatMessage>(
      '/endpoint.brainboost.chat.v2.ChatService/Chat',
      ($3.Prompt value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChatMessage.fromBuffer(value));
  static final _$getChatMessages = $grpc.ClientMethod<$2.Collection, $3.ChatMessages>(
      '/endpoint.brainboost.chat.v2.ChatService/GetChatMessages',
      ($2.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChatMessages.fromBuffer(value));
  static final _$getChatMessage = $grpc.ClientMethod<$3.MessageID, $3.ChatMessage>(
      '/endpoint.brainboost.chat.v2.ChatService/GetChatMessage',
      ($3.MessageID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChatMessage.fromBuffer(value));
  static final _$deleteChatMessage = $grpc.ClientMethod<$3.MessageID, $3.MessageID>(
      '/endpoint.brainboost.chat.v2.ChatService/DeleteChatMessage',
      ($3.MessageID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.MessageID.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.ChatMessage> chat($3.Prompt request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chat, request, options: options);
  }

  $grpc.ResponseFuture<$3.ChatMessages> getChatMessages($2.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChatMessages, request, options: options);
  }

  $grpc.ResponseFuture<$3.ChatMessage> getChatMessage($3.MessageID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChatMessage, request, options: options);
  }

  $grpc.ResponseFuture<$3.MessageID> deleteChatMessage($3.MessageID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteChatMessage, request, options: options);
  }
}

@$pb.GrpcServiceName('endpoint.brainboost.chat.v2.ChatService')
abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'endpoint.brainboost.chat.v2.ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.Prompt, $3.ChatMessage>(
        'Chat',
        chat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Prompt.fromBuffer(value),
        ($3.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Collection, $3.ChatMessages>(
        'GetChatMessages',
        getChatMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Collection.fromBuffer(value),
        ($3.ChatMessages value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.MessageID, $3.ChatMessage>(
        'GetChatMessage',
        getChatMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.MessageID.fromBuffer(value),
        ($3.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.MessageID, $3.MessageID>(
        'DeleteChatMessage',
        deleteChatMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.MessageID.fromBuffer(value),
        ($3.MessageID value) => value.writeToBuffer()));
  }

  $async.Future<$3.ChatMessage> chat_Pre($grpc.ServiceCall call, $async.Future<$3.Prompt> request) async {
    return chat(call, await request);
  }

  $async.Future<$3.ChatMessages> getChatMessages_Pre($grpc.ServiceCall call, $async.Future<$2.Collection> request) async {
    return getChatMessages(call, await request);
  }

  $async.Future<$3.ChatMessage> getChatMessage_Pre($grpc.ServiceCall call, $async.Future<$3.MessageID> request) async {
    return getChatMessage(call, await request);
  }

  $async.Future<$3.MessageID> deleteChatMessage_Pre($grpc.ServiceCall call, $async.Future<$3.MessageID> request) async {
    return deleteChatMessage(call, await request);
  }

  $async.Future<$3.ChatMessage> chat($grpc.ServiceCall call, $3.Prompt request);
  $async.Future<$3.ChatMessages> getChatMessages($grpc.ServiceCall call, $2.Collection request);
  $async.Future<$3.ChatMessage> getChatMessage($grpc.ServiceCall call, $3.MessageID request);
  $async.Future<$3.MessageID> deleteChatMessage($grpc.ServiceCall call, $3.MessageID request);
}
