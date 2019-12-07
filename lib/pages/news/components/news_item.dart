import 'package:flutter/material.dart';
import 'package:save_the_library/models/news/built_news_list.dart';
import 'package:save_the_library/pages/news_detail.dart/news_detail_page.dart';

class NewsItem extends StatelessWidget {
  final BuiltNews news;
  const NewsItem({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
