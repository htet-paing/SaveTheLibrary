import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/library_page.dart';
import 'package:save_the_library/pages/news_page.dart';
import 'package:save_the_library/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ApiService>(
          builder: (_) => ApiService.create(),
          dispose: (_, apiService) => apiService.dispose(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        routes: <String, WidgetBuilder>{
          "/newspage": (BuildContext context) => NewsPage(),
          "/librariespage": (BuildContext context) => LibrariesPage(),
        },
      ),
    );
  }
}
