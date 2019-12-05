import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/news/news.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/news_detail_page.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
        body: NoConnectionHandler(
          child: SmartList<BuiltNewsList>(
            onGet: (page) => Provider.of<ApiService>(context).getNews(page),
            listGetter: (body) => body.data.toList(),
            itemBuilder: (_, item) {
              BuiltNews news = item as BuiltNews;
              return Card(
                elevation: 4,
                child: ListTile(
                  title: Text(news.postTitle),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsDetailPage(
                          newsId: news.postId,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ));
  }
}
