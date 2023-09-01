import 'package:braingain_app/generated/braingain.pbgrpc.dart';
import 'package:grpc/grpc.dart';

final _channel = ClientChannel(
  '192.168.0.125',
  port: 9055,
  options: const ChannelOptions(
    credentials: ChannelCredentials.insecure(),
  ),
);

final braingain = BraingainClient(_channel);
