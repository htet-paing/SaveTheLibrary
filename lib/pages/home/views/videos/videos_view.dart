import 'package:flutter/material.dart';
import 'package:save_the_library/pages/home/views/view_widget.dart';
import 'components/video_list.dart';

class VideosView extends StatefulWidget implements ViewWidget {
  final Widget title;
  final Icon icon;

  const VideosView({
    Key key,
    this.title = const Text('Videos'),
    this.icon = const Icon(Icons.play_circle_filled),
  }) : super(key: key);
  @override
  _VideosViewState createState() => _VideosViewState();
}

class _VideosViewState extends State<VideosView> {
  @override
  Widget build(BuildContext context) {
    return VideoList();
  }
}
