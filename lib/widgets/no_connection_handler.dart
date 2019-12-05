import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NoConnectionHandler extends StatefulWidget {
  final Widget reloadPage;
  final Widget child;

  NoConnectionHandler({
    Key key,
    this.reloadPage = const NoConnectionWidget(),
    @required this.child,
  }) : super(key: key);

  @override
  _NoConnectionHandlerState createState() => _NoConnectionHandlerState();
}

class _NoConnectionHandlerState extends State<NoConnectionHandler> {
  StreamSubscription<ConnectivityResult> _connectivitySub;
  WidgetStatus _widgetStatus;

  @override
  void initState() {
    super.initState();
    _connectivitySub = Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) {
        if (this._widgetStatus == WidgetStatus.idle) {
          this.setState(() {}); // rebuild widget
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ConnectivityResult>(
      future: Connectivity().checkConnectivity(),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == ConnectivityResult.none) {
            this._widgetStatus = WidgetStatus.idle; // <-
            return this.widget.reloadPage;
          } else {
            this._widgetStatus = WidgetStatus.busy; // <-
            return this.widget.child;
          }
        } else {
          return this.widget.child;
        }
      },
    );
  }

  @override
  void dispose() {
    this._connectivitySub.cancel();
    super.dispose();
  }
}

class NoConnectionWidget extends StatelessWidget {
  const NoConnectionWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error,
              color: Colors.red,
              size: 40,
            ),
            Text('No Connection', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

enum WidgetStatus { idle, busy }
