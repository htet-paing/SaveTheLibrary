import 'package:flutter/material.dart';

ThemeData appTheme() {
  Color primaryColor = Colors.teal;
  return ThemeData(
    primaryColor: primaryColor,
    accentColor: Colors.teal,
    hintColor: Colors.white,
    dividerColor: Colors.grey,
    buttonColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    // canvasColor: Colors.black,
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.orange,
      elevation: 10,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 2.0,
      iconTheme: IconThemeData(color: Colors.grey),
      textTheme: TextTheme(
        title: TextStyle(
          color: primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
