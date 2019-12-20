import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/videos_slider_widget.dart';
import '../view_widget.dart';
import 'components/book_slider.dart';
import 'components/library_slider.dart';
import 'components/news_carousel.dart';
import 'components/resource_slider.dart';

class HomeView extends StatefulWidget implements ViewWidget {
  HomeView({
    Key key,
  }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();

  @override
  Icon get icon => Icon(Icons.home);

  @override
  Widget get title => Text("Home");
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        //TODO: Widgets for HomePage here
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
    );
  }
}
