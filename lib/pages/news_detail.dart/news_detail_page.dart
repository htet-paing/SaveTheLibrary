import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/news/news.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/news_detail.dart/components/news_body.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';

class NewsDetailPage extends StatefulWidget {
  final int newsId;

  const NewsDetailPage({Key key, @required this.newsId}) : super(key: key);

  @override
  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Detail'),
      ),
      body: NoConnectionHandler(
        child: FutureBuilder<Response<BuiltNewsDetail>>(
          future: Provider.of<ApiService>(context)
              .getNewsDetail(this.widget.newsId),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              //! snapshot.data returning null when reloading widget
              return NewsBody(newsDetail: snapshot.data.body);
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
