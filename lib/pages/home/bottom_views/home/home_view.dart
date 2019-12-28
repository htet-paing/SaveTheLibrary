import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/pages/home/bottom_views/home/home_view_model.dart';
import 'package:save_the_library/widgets/error_message_widget.dart';

import 'components/videos_slider_widget.dart';
import '../bottom_view_widget.dart';
import 'components/book_slider.dart';
import 'components/library_slider.dart';
import 'components/news_carousel.dart';
import 'components/resource_slider.dart';

class HomeView extends StatefulWidget implements BottomViewWidget {
  HomeView({
    Key key,
  }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();

  @override
  BottomNavigationBarItem get bottomNaviBarItem => BottomNavigationBarItem(
        icon: Icon(OMIcons.home),
        activeIcon: Icon(Icons.home),
        title: Text('Home'),
      );
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, homeViewModel, child) {
          if (homeViewModel.dataState == DataState.loaded) {
            if (homeViewModel.error != null) {
              return ErrorMessageWidget<HomeViewModel>(
                  error: homeViewModel.error);
            } else {
              return child;
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            NewsCarousel(),
            SizedBox(height: 30.0),
            BookSlider(),
            SizedBox(height: 30.0),
            ResourceSlider(),
            SizedBox(height: 30.0),
            LibrarySlider(),
            SizedBox(height: 30.0),
            VideosSliderWidget()
          ],
        ),
      ),
    );
  }
}
