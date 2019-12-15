import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/video/built_video_detail.dart';
import 'package:save_the_library/models/video/built_video_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosDetailPage extends StatefulWidget {
  final String youtubeId;
  final String postSlug;

  VideosDetailPage({
      @required this.postSlug,
      @required this.youtubeId,
      Key key}): super(key: key);

  @override
  _VideosDetailPageState createState() => _VideosDetailPageState();
}

class _VideosDetailPageState extends State<VideosDetailPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: '${widget.youtubeId}',
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
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
        key: _scaffoldKey,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Videos Detail',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: NoConnectionHandler(
          builder: (context) => FutureBuilder<Response<BuiltVideoDetail>>(
            future: Provider.of<ApiService>(context)
                .getVideoDetail(this.widget.postSlug),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                BuiltVideoDetail videoDetail = snapshot.data.body;
                return ListView(
                  children: <Widget>[
                    YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blueAccent,
                      topActions: <Widget>[
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Text(
                            _controller.metadata.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 23.0,
                          ),
                          onPressed: () {
//                _showSnackBar('Settings Tapped!');
                          },
                        ),
                      ],
                      bottomActions: <Widget>[
                        CurrentPosition(),
                        SizedBox(width: 10.0),
                        ProgressBar(isExpanded: true),
                        SizedBox(width: 10.0),
                        RemainingDuration(),
                        FullScreenButton(),
                      ],
                      onReady: () {
                        print('Player is Ready');
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            videoDetail.postTitle,
                            style: TextStyle(
                                fontFamily: 'Pyidaungsu', fontSize: 17.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            videoDetail.postReview,
                            style: TextStyle(fontFamily: 'Pyidaungsu'),
                          )
                        ],
                      ),
                    )
                  ],
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}
