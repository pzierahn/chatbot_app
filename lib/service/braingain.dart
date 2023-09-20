import 'package:braingain_app/generated/braingain.pbgrpc.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/service/supabase.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

final _channel = GrpcOrGrpcWebClientChannel.toSeparateEndpoints(
  grpcHost: 'localhost',
  grpcPort: 9055,
  grpcTransportSecure: false,
  grpcWebHost: 'localhost',
  grpcWebPort: 8080,
  grpcWebTransportSecure: false,
);

final braingain = BraingainClientWithToken(_channel);

class BraingainClientWithToken extends BraingainClient {
  BraingainClientWithToken(super.channel);

  CallOptions? _mergeAuth(CallOptions? options) {
    final token = supabase.auth.currentSession?.accessToken;

    if (token == null) {
      return options;
    }

    return CallOptions(
      metadata: {
        "Authorization": "Bearer $token",
      },
    ).mergedWith(options);
  }

  @override
  ResponseFuture<ChatMessage> chat(Prompt request, {CallOptions? options}) {
    return super.chat(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseFuture<ChatMessages> getChatMessages(Collection request,
      {CallOptions? options}) {
    return super.getChatMessages(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseFuture<ChatMessage> getChatMessage(MessageID request,
      {CallOptions? options}) {
    return super.getChatMessage(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseFuture<Documents> listDocuments(DocumentFilter request,
      {CallOptions? options}) {
    return super.listDocuments(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseFuture<Empty> deleteDocument(Document request,
      {CallOptions? options}) {
    return super.deleteDocument(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseFuture<Empty> updateDocument(Document request,
      {CallOptions? options}) {
    return super.updateDocument(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseFuture<Collections> getCollections(Empty request,
      {CallOptions? options}) {
    return super.getCollections(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseFuture<Empty> createCollection(Collection request,
      {CallOptions? options}) {
    return super.createCollection(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseFuture<Empty> deleteCollection(Collection request,
      {CallOptions? options}) {
    return super.deleteCollection(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseFuture<Empty> updateCollection(Collection request,
      {CallOptions? options}) {
    return super.updateCollection(
      request,
      options: _mergeAuth(options),
    );
  }

  @override
  ResponseStream<IndexProgress> indexDocument(Document request,
      {CallOptions? options}) {
    return super.indexDocument(
      request,
      options: _mergeAuth(options),
    );
  }
}
