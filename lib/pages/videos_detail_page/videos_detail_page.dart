import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosDetailPage extends StatefulWidget {
  final String youtubeId;

  VideosDetailPage({this.youtubeId});

  @override
  _VideosDetailPageState createState() => _VideosDetailPageState();
}

class _VideosDetailPageState extends State<VideosDetailPage> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: '${widget.youtubeId}',
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        forceHideAnnotation: true,
      ),
    );
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Save the Library'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.white,
                Colors.grey
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          progressColors: ProgressBarColors(
              playedColor: Colors.amber, handleColor: Colors.amberAccent),
          onReady: () {
            print('Player is Ready');
          },
        ),
      ),
    );
  }
}
