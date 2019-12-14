import 'package:flutter/material.dart';
import 'package:save_the_library/pages/videos/components/video_list.dart';

class VideosPage extends StatefulWidget {
  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Videos',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: VideoList(),
    );
  }
}
