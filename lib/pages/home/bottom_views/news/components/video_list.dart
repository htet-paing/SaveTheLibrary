import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/api/video/built_video_list.dart';
import 'package:save_the_library/network/api_service.dart';
import '../news_view_model.dart';
import 'video_item.dart';
import 'package:save_the_library/pages/videos_detail_page/videos_detail_page.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class VideoList extends StatelessWidget {
  const VideoList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<NewsViewModel, ApiService>(
      builder: (context, newsModel, apiService, __) {
        return SmartList<BuiltVideoList>(
          items: newsModel.videoList,
          onGet: (page) => apiService.getVideos(page),
          onLoaded: (body) {
            newsModel.setVideoList(newsModel.videoList + List.from(body.data));
          },
          itemBuilder: (_, item) {
            BuiltVideo video = item as BuiltVideo;

            return VideoItem(video: video);
          },
        );
      },
    );
  }

  void goToVideoDetailPage(BuildContext context, BuiltVideo videos) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return VideosDetailPage(
        youtubeId: videos.youtubeId,
        postSlug: videos.postSlug,
      );
    }));
  }
}
