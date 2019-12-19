import 'package:flutter/material.dart';
import 'package:save_the_library/pages/home/views/view_widget.dart';

import 'components/news_list.dart';

class NewsView extends StatelessWidget implements ViewWidget {
  final Widget title;
  final Icon icon;
  const NewsView({
    Key key,
    this.title = const Text('News'),
    this.icon = const Icon(Icons.library_books),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsList(),
    );
  }
}
