import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/models/video/built_video_list.dart';
import 'package:save_the_library/pages/videos_detail_page/videos_detail_page.dart';

class VideoItem extends StatelessWidget {
  final BuiltVideo video;
  const VideoItem({Key key, this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToVideoDetailPage(context, video),
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
        child: Card(
          elevation: 2.0,
          child: Column(
            children: <Widget>[
              Container(
                height: 200.0,
                child: CachedNetworkImage(
                  imageUrl:
                      'https://img.youtube.com/vi/${video.youtubeId}/hqdefault.jpg',
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  video.postTitle,
                  style: TextStyle(fontSize: 15.0, fontFamily: 'Pyidaungsu'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void goToVideoDetailPage(BuildContext context, BuiltVideo video) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return VideosDetailPage(
            youtubeId: video.youtubeId,
            postSlug: video.postSlug,
          );
        },
      ),
    );
  }
}
