import 'package:flutter/material.dart';

abstract class BottomViewWidget extends Widget {
  final Widget title;
  final Icon icon;

  BottomViewWidget(this.title, this.icon);
}
