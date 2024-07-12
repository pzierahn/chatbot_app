//
//  Generated code. Do not modify.
//  source: crashlytics.proto
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

import 'crashlytics.pb.dart' as $4;
import 'google/protobuf/empty.pb.dart' as $0;

export 'crashlytics.pb.dart';

@$pb.GrpcServiceName('crashlytics.v1.Crashlytics')
class CrashlyticsClient extends $grpc.Client {
  static final _$recordError = $grpc.ClientMethod<$4.Error, $0.Empty>(
      '/crashlytics.v1.Crashlytics/RecordError',
      ($4.Error value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  CrashlyticsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> recordError($4.Error request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recordError, request, options: options);
  }
}

@$pb.GrpcServiceName('crashlytics.v1.Crashlytics')
abstract class CrashlyticsServiceBase extends $grpc.Service {
  $core.String get $name => 'crashlytics.v1.Crashlytics';

  CrashlyticsServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.Error, $0.Empty>(
        'RecordError',
        recordError_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Error.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> recordError_Pre($grpc.ServiceCall call, $async.Future<$4.Error> request) async {
    return recordError(call, await request);
  }

  $async.Future<$0.Empty> recordError($grpc.ServiceCall call, $4.Error request);
}
