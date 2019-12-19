import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/pages/home/views/news/components/video_list.dart';
import 'package:save_the_library/pages/home/views/view_widget.dart';

import 'components/news_list.dart';

class NewsView extends StatefulWidget implements ViewWidget {
  final Widget title;
  final Icon icon;
  const NewsView({
    Key key,
    this.title = const Text('News'),
    this.icon = const Icon(Icons.library_books),
  }) : super(key: key);

  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  List<Widget> _widgetList = [NewsList(), VideoList()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _widgetList.length,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Colors.teal,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.teal,
          tabs: [
            Tab(icon: Text("Events")),
            Tab(icon: Text("Videos")),
          ],
        ),
        body: TabBarView(
          dragStartBehavior: DragStartBehavior.down,
          children: _widgetList,
        ),
      ),
    );
  }
}
