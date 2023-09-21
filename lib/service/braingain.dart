import 'package:braingain_app/generated/braingain.pbgrpc.dart';
import 'package:braingain_app/service/supabase.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

final _channel = GrpcOrGrpcWebClientChannel.toSeparateEndpoints(
  grpcHost: 'localhost',
  grpcPort: 9055,
  grpcTransportSecure: false,
  grpcWebHost: 'localhost',
  grpcWebPort: 8080,
  grpcWebTransportSecure: false,
);

final braingain = BrainboostClient(_channel, interceptors: [
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
