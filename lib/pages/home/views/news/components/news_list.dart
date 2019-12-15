import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/news/built_news_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';
import 'news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoConnectionHandler(
      builder: (context) => SmartList<BuiltNewsList>(
        onGet: (page) => Provider.of<ApiService>(context).getNews(page),
        listGetter: (body) => body.data.toList(),
        itemBuilder: (_, item) {
          BuiltNews news = item as BuiltNews;
          return NewsItem(news: news);
        },
      ),
    );
  }
}
