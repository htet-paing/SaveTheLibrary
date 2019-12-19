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
        body: ListView(
          children: <Widget>[
            ListTile(
              onTap: showChooser,
              leading: Icon(Icons.brightness_2),
              title: Text('Dark mode'),
            ),
            Divider(),
            ListTile(
              onTap: changeColor,
              leading: Icon(Icons.color_lens),
              title: Text('Theme Color'),
            ),
          ],
        ),

    );
  }

  void changeColor() {
    DynamicTheme.of(context).setThemeData(ThemeData(
      primaryColor: Theme.of(context).primaryColor == Colors.teal
          ?Colors.green
          : Colors.teal
    ));
  }

  void showChooser() {
    showDialog(context: context,
    builder: (context){
      return BrightnessSwitcherDialog(
        onSelectedTheme: (brightness){
          DynamicTheme.of(context).setBrightness(brightness);
        },
      );
    });
  }
}
