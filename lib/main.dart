import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/pages/developers/information.dart';
import 'package:save_the_library/pages/intro_slider/intro_slider_page.dart';
import 'package:save_the_library/pages/home/home_page.dart';
import 'package:save_the_library/pages/resource_center/resource_center_page.dart';
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
          create: (_) => ApiService
              .create(), // builder is deprecated in new version. use create instead
          dispose: (_, apiService) => apiService.dispose(),
        ),
        ChangeNotifierProvider(
          create: (_) => ConnectivityState(),
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
              return Container(
                color: Colors.white,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ),
        routes: <String, WidgetBuilder>{
          "/home": (BuildContext context) => MyHomePage(),
          "/resources": (context) => ResourceCenterPage(),
          "/developer": (BuildContext context) => ProfileSixPage(sid),
        },
      ),
    );
  }
}
