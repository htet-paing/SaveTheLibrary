import 'package:flutter/material.dart';

ThemeData appTheme(Brightness brightness) {
  Color primaryColor = Colors.teal;
  return ThemeData(
    textTheme: TextTheme(
      subtitle: TextStyle(
        color: Colors.grey,
      ),
    ),
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: primaryColor,
    // hintColor: Colors.white,
    // dividerColor: Colors.grey,
    // buttonColor: Colors.white,
    // scaffoldBackgroundColor: Colors.white,
    // canvasColor: Colors.black,
    bottomAppBarTheme: BottomAppBarTheme(
      // color: Colors.orange,
      elevation: 10,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: primaryColor,
      unselectedLabelColor: Colors.grey,
    ),
    appBarTheme: AppBarTheme(
      elevation: 2.0,
      textTheme: TextTheme(
        title: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: brightness == Brightness.light ? Colors.black : Colors.white,
        ),
      ),
    ),
  );
}
