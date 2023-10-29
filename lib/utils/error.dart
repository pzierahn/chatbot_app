import 'dart:io';

import 'package:grpc/grpc.dart';

const _noFundingCode = 17;

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

  static isNoFunding(Object? error) {
    if (error is GrpcError) {
      return error.code == _noFundingCode;
    }

    return false;
  }
}
