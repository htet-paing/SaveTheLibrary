import 'package:flutter/material.dart';
import 'package:save_the_library/models/api/news/news.dart';

class NewsBody extends StatelessWidget {
  
  final BuiltNewsDetail newsDetail;

  const NewsBody({Key key, this.newsDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(newsDetail.postTitle),
    );
  }
}
