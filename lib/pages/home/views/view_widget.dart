import 'package:flutter/material.dart';

abstract class ViewWidget extends Widget {
  final Widget title;
  final Icon icon;

  ViewWidget(this.title, this.icon);
}
