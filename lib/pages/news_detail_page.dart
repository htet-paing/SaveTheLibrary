import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/news/news.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';

class NewsDetailPage extends StatelessWidget {
  final int newsId;

  const NewsDetailPage({Key key, @required this.newsId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Detail'),
      ),
      body: NoConnectionHandler(
        child: FutureBuilder<Response<BuiltNewsDetail>>(
          future: Provider.of<ApiService>(context).getNewsDetail(this.newsId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Text(snapshot.data.body.postTitle),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
