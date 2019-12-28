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
      color: primaryColor,
      elevation: 2.0,
      iconTheme: IconThemeData(color: Colors.white),
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
