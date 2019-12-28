import 'package:flutter/material.dart';

abstract class BottomViewWidget extends Widget {
  final BottomNavigationBarItem bottomNaviBarItem;

  BottomViewWidget(this.bottomNaviBarItem);
}
