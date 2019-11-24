import 'package:flutter/material.dart';
import 'package:save_the_library/drawerpage/librariespage.dart';
import 'package:save_the_library/drawerpage/newpage.dart';
import 'package:save_the_library/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: <String,WidgetBuilder>{
        "/newspage": (BuildContext context) => NewsPage(),
        "/librariespage": (BuildContext context) => LibrariesPage(),

      },
    );
  }
}
