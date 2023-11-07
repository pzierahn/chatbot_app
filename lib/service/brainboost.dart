import 'package:braingain_app/generated/account.pbgrpc.dart';
import 'package:braingain_app/generated/chat.pbgrpc.dart';
import 'package:braingain_app/generated/collections.pbgrpc.dart';
import 'package:braingain_app/generated/documents.pbgrpc.dart';
import 'package:braingain_app/service/supabase.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

// final _channel = ClientChannel(
//   'localhost',
//   port: 9055,
//   options: const ChannelOptions(
//     credentials: ChannelCredentials.insecure(),
//   ),
// );

final _channel = GrpcOrGrpcWebClientChannel.toSeparateEndpoints(
  grpcHost: 'brainboost-service-2qkjmuus4a-ey.a.run.app',
  grpcPort: 443,
  grpcTransportSecure: true,
  grpcWebHost: 'brainboost-gateway-2qkjmuus4a-ey.a.run.app',
  grpcWebPort: 443,
  grpcWebTransportSecure: true,
);

final collections = CollectionServiceClient(_channel, interceptors: [
  _AuthenticationInterceptor(),
]);

final documents = DocumentServiceClient(_channel, interceptors: [
  _AuthenticationInterceptor(),
]);

final account = AccountServiceClient(_channel, interceptors: [
  _AuthenticationInterceptor(),
]);

final chat = ChatServiceClient(_channel, interceptors: [
  _AuthenticationInterceptor(),
]);

class _AuthenticationInterceptor implements ClientInterceptor {
  CallOptions _mergeAuth(CallOptions options) {
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
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    invoker,
  ) {
    options = _mergeAuth(options);
    return invoker(method, request, options);
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
      ClientMethod<Q, R> method,
      Stream<Q> requests,
      CallOptions options,
      ClientStreamingInvoker<Q, R> invoker) {
    options = _mergeAuth(options);
    return invoker(method, requests, options);
  }
}
