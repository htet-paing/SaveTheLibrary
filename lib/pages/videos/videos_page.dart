import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/video/built_video_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class VideosPage extends StatefulWidget {
  VideosPage({Key key}) : super(key: key);

  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Video'),
        centerTitle: true,
        elevation: 1,
      ),
      body: NoConnectionHandler(
        child: SmartList<BuiltVideoList>(
          onGet: (page) => Provider.of<ApiService>(context).getVideos(page),
          listGetter: (body) => body.data.toList(),
          itemBuilder: (context, item) {
            BuiltVideo video = item as BuiltVideo;
            return Card(
              child: ListTile(
                title: Text(video.postTitle),
              ),
            );
          },
        ),
      ),
    );
  }
}
