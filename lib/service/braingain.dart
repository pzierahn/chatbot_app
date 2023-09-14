import 'package:braingain_app/generated/braingain.pbgrpc.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/service/supabase.dart';
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';

final _channel = ClientChannel(
  // '192.168.0.125',
  'localhost',
  port: 9055,
  options: const ChannelOptions(
    credentials: ChannelCredentials.insecure(),
  ),
);

final braingain = BraingainClientWithToken(_channel);

class BraingainClientWithToken extends BraingainClient {
  BraingainClientWithToken(super.channel);

  CallOptions? _authOptions(String? token) {
    if (token == null) {
      return null;
    }

    return CallOptions(
      metadata: {
        "Authorization": "Bearer $token",
      },
    );
  }

  @override
  ResponseFuture<Collections> getCollections(Empty request,
      {CallOptions? options}) {
    final token = supabase.auth.currentSession?.accessToken;
    debugPrint('token: $token');

    return super.getCollections(request, options: _authOptions(token));
  }
}
