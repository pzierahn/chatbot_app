import 'dart:io';

import 'package:grpc/grpc.dart';

class ErrorUtils {
  static String toText(Object? error) {
    if (error is SocketException) {
      return error.message;
    }

    if (error is GrpcError) {
      return "${error.codeName}: ${error.message}";
    }

    return "${error ?? "Unknown Error"}";
  }
}
