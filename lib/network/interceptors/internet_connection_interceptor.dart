import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';

class InternetConnectionInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final connectivityResult = await Connectivity().checkConnectivity();

    final noConnection = connectivityResult == ConnectivityResult.none;
    if (noConnection) {
      chopperLogger.severe(NoConnectionException().toString());
      throw NoConnectionException();
    }

    return request;
  }
}

class NoConnectionException implements Exception {
  final message = 'No Internet Connection';
  @override
  String toString() => message;
}
