import 'dart:async';

import 'package:chopper/chopper.dart';

class ResponseChecker implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    if (response.statusCode == 429) {
      throw TooManyAttempts();
    }
    return response;
  }
}

class TooManyAttempts implements Exception {
  final message = 'Too Many Attempts';
  @override
  String toString() => message;
}
