import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';

class ConnectivityState extends ChangeNotifier {
  ConnectivityResult state;
  StreamSubscription<ConnectivityResult> connectionSub;

  ConnectivityState() {
    updateConnectionState();
    connectionSub = Connectivity().onConnectivityChanged.listen((result) {
      state = result;
      notifyListeners();
    });
  }

  Future updateConnectionState() async {
    this.state = await Connectivity().checkConnectivity();
  }

  @override
  void dispose() {
    this.connectionSub.cancel();
    super.dispose();
  }
}
