import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/models/news/built_news_list.dart';
import 'package:save_the_library/pages/news_detail.dart/news_detail_page.dart';

class NewsItem extends StatelessWidget {
  final BuiltNews news;
  const NewsItem({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToNewDetailPage(context, news),
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
        child: Card(
          elevation: 2.0,
          child: Column(
            children: <Widget>[
              Container(
                height: 200.0,
                child: CachedNetworkImage(
                  imageUrl:
                      'https://savethelibrarymyanmar.org/images/${news.image}',
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  news.postTitle,
                  style: TextStyle(fontFamily: 'Pyidaungsu', fontSize: 15.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  goToNewDetailPage(BuildContext context, BuiltNews news) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return NewsDetailPage(
        newsId: news.postId,
        newsContent: news.postContent,
        newsImage: news.image,
      
      );
    }));
  }
}
