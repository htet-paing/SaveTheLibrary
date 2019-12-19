import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: chageBrightness,
              child: Text('Change brightness'),
            ),

            RaisedButton(
              onPressed: changeColor,
              child: Text('Change color'),
            )
          ],
        ),
      ),
    );
  }

  void chageBrightness() {
    DynamicTheme.of(context).setBrightness(
      Theme.of(context).brightness == Brightness.dark
          ? Brightness.light
          :Brightness.dark
    );
  }

  void changeColor() {
    DynamicTheme.of(context).setThemeData(ThemeData(
      primaryColor: Theme.of(context).primaryColor == Colors.teal
          ?Colors.green
          : Colors.teal
    ));
  }
}
