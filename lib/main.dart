import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/maps/google.dart';
import 'package:save_the_library/pages/books/books_page.dart';
import 'package:save_the_library/pages/intro_slider/intro_slider_page.dart';
import 'package:save_the_library/pages/library/library_page.dart';
import 'package:save_the_library/pages/news/news_page.dart';
import 'package:save_the_library/pages/home/home_page.dart';
import 'package:save_the_library/pages/resource_center/resource_center_page.dart';
import 'package:save_the_library/pages/videos/videos_page.dart';
import 'package:save_the_library/theme/style.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/connectivity_state.dart';
import 'network/api_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<SharedPreferences> _getSliderState() async {
    final pref = await SharedPreferences.getInstance();

    await pref.get('sliderState') ?? await pref.setBool('sliderState', true);
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
        ),
        ChangeNotifierProvider(
          builder: (_) => ConnectivityState(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme(),
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
              return Container();
            }
          },
        ),
        routes: <String, WidgetBuilder>{
          "/home": (BuildContext context) => MyHomePage(),
          "/news": (BuildContext context) => NewsPage(),
          "/libraries": (BuildContext context) => LibrariesPage(),
          "/books": (context) => BooksPage(),
          "/resources": (context) => ResourceCenterPage(),
          "/videos": (context) => VideosPage(),
          "/map": (BuildContext context) => PointApp(),
        },
      ),
    );
  }
}
