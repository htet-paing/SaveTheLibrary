import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/news/built_news_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';
import '../news_view_model.dart';
import 'news_item.dart';

class NewsList extends StatelessWidget {
  NewsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<NewsViewModel, ApiService>(
      builder: (context, newsModel, apiService, _) {
        return SmartList<BuiltNewsList>(
          items: newsModel.newsList,
          onGet: (page) => ApiService.fetch<Response<BuiltNewsList>>(
            () => apiService.getNews(page),
          ),
          onLoaded: (body) {
            newsModel.setNewsList(newsModel.newsList + List.from(body.data));
          },
          listGetter: (body) => body.data.toList(),
          itemBuilder: (_, item) {
            BuiltNews news = item as BuiltNews;
            return NewsItem(news: news);
          },
        );
      },
    );
  }
}
