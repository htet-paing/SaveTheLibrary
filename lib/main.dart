import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/intro_slider_page.dart';
import 'package:save_the_library/pages/library_page.dart';
import 'package:save_the_library/pages/news_page.dart';
import 'package:save_the_library/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<SharedPreferences> _getSliderState() async {
    final pref = await SharedPreferences.getInstance();

    pref.get('sliderState') ?? pref.setBool('sliderState', true);
    return pref;
  }

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
        home: FutureBuilder<SharedPreferences>(
          future: _getSliderState(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data.getBool('sliderState') == true) {
                return MyIntroSlider();
              } else {
                return MyHomePage();
              }
            } else {
              return Text(snapshot.error.toString());
            }
          },
        ),
        routes: <String, WidgetBuilder>{
          "/homepage": (BuildContext context) => MyHomePage(),
          "/newspage": (BuildContext context) => NewsPage(),
          "/librariespage": (BuildContext context) => LibrariesPage(),
        },
      ),
    );
  }
}
