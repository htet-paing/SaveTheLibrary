import 'package:cached_network_image/cached_network_image.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/built_book_list.dart';
import 'package:save_the_library/models/news/built_news_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/book_detail/book_detail_page.dart';
import 'package:save_the_library/pages/news_detail.dart/news_detail_page.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class NewsSlider extends StatefulWidget {
  NewsSlider({Key key}) : super(key: key);
  

  @override
  _NewsSliderState createState() => _NewsSliderState();
}

class _NewsSliderState extends State<NewsSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.0,
      child: Container(
        child: SmartSlider(
          //BuiltBooksList
          title: 'News Carousel Slider',
          onGet: (_) => Provider.of<ApiService>(context).getNews(1),
          listGetter: (body) => body.data.toList(),
          itemBuilder: (context, item) {
            BuiltNews news = item as BuiltNews;
            return InkWell(
              splashColor: Colors.green,
              child: Container(
                width: 400.0,
                //TODO: custom card and container's properties goes here
                child: Card(
                  child: Wrap(
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl:
                            'https://savethelibrarymyanmar.org/images/${news.image}',
                        fit: BoxFit.fitWidth,
                      ),
                      Text('${news.postTitle}'),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetailPage(
                    //not finished
                    newsId: 1,
                    
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



//