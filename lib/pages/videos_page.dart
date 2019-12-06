import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/video/built_video_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/videos_detail_page.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

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
          'News',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:  NoConnectionHandler(
        child: SmartList<BuiltVideoList>(
          onGet: (page) => Provider.of<ApiService>(context).getVideos(page),
          listGetter: (body) => body.data.toList(),
          itemBuilder: (_, item) {
            BuiltVideo videos = item as BuiltVideo;

            return InkWell(
              onTap: () => goToVideoDetailPage(context,videos),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 5.0, right: 5.0, bottom: 5.0),
                child: Card(
                  elevation: 2.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        child: CachedNetworkImage(
                          imageUrl: 'https://img.youtube.com/vi/${videos.youtubeId}/hqdefault.jpg',
                          fit: BoxFit.cover,
                          width: 1000.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(videos.postTitle,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Pyidaungsu'
                          ),),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  goToVideoDetailPage(BuildContext context, BuiltVideo videos) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context){
          return VideosDetailPage(
            youtube_vid: videos.youtubeId,
          );
        }));

  }
}
