import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/news/components/video_list.dart';
import 'package:save_the_library/pages/home/bottom_views/news/news_view_model.dart';
import 'package:save_the_library/pages/home/bottom_views/bottom_view_widget.dart';
import 'package:save_the_library/widgets/error_message_widget.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';

import 'components/news_list.dart';

class NewsView extends StatefulWidget implements BottomViewWidget {
  const NewsView({
    Key key,
  }) : super(key: key);

  @override
  _NewsViewState createState() => _NewsViewState();

  @override
  BottomNavigationBarItem get bottomNaviBarItem => BottomNavigationBarItem(
        icon: Icon(OMIcons.libraryBooks),
        activeIcon: Icon(Icons.library_books),
        title: Text('News'),
      );
}

class _NewsViewState extends State<NewsView> {
  List<Widget> _widgetList = [NewsList(), VideoList()];

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsViewModel>(
      builder: (_, newsModel, child) {
        if (newsModel.dataState == DataState.loaded) {
          if (newsModel.error != null) {
            return ErrorMessageWidget<NewsViewModel>(error: newsModel.error);
          } else {
            return DefaultTabController(
              length: _widgetList.length,
              child: Scaffold(
                appBar: TabBar(
                  indicatorColor: Colors.teal,
                  tabs: [
                    Tab(icon: Text("Events")),
                    Tab(icon: Text("Videos")),
                  ],
                ),
                body: TabBarView(children: _widgetList),
              ),
            );
          }
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
