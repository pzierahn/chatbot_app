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

  CallOptions? _authOptions(CallOptions? options, String? token) {
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
  ResponseFuture<Collections> getCollections(
    Empty request, {
    CallOptions? options,
  }) {
    final token = supabase.auth.currentSession?.accessToken;
    return super.getCollections(
      request,
      options: _authOptions(options, token),
    );
  }
}
