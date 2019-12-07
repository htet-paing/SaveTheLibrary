import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/video/built_video_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/videos/components/video_item.dart';
import 'package:save_the_library/pages/videos_detail_page/videos_detail_page.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class VideoList extends StatelessWidget {
  const VideoList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoConnectionHandler(
      child: SmartList<BuiltVideoList>(
        onGet: (page) => Provider.of<ApiService>(context).getVideos(page),
        listGetter: (body) => body.data.toList(),
        itemBuilder: (_, item) {
          BuiltVideo video = item as BuiltVideo;

          return VideoItem(video: video);
        },
      ),
    );
  }

  void goToVideoDetailPage(BuildContext context, BuiltVideo videos) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return VideosDetailPage(
        youtubeId: videos.youtubeId,
      );
    }));
  }
}