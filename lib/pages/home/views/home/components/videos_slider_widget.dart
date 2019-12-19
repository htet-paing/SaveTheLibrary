import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/video/built_video_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/videos_detail_page/videos_detail_page.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class VideosSliderWidget extends StatefulWidget {
  VideosSliderWidget({Key key}) : super(key: key);

  @override
  _VideosSliderWidgetState createState() => _VideosSliderWidgetState();
}

class _VideosSliderWidgetState extends State<VideosSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SmartSlider(//BuiltBooksList
          title: "Book Reviews",
          onGet: (_) => Provider.of<ApiService>(context).getVideos(),
          listGetter: (body) => body.data.toList(),
          itemBuilder: (context, item) {
            BuiltVideo video = item as BuiltVideo;
            return InkWell(
              child: Container(
                width: 260.0,              
              //TODO: custom card and container's properties goes here
                child: Card(
                  child: Wrap(
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl: '${video.featureImagePath}',
                        fit: BoxFit.cover,
                      ),
                      Text('${video.postTitle}')
                    ],
                  ),
                ),
              ),
              onTap: () => Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context){
                    return VideosDetailPage(//not finished
                      postSlug: video.postSlug, youtubeId: "${video.id.toString()}",
                    );  
                  } 
                ),
              ),
            );
          }
      ),
    );
  }
}