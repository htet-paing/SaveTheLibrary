import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/news/built_news_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/home/home_view_model.dart';
import 'package:save_the_library/pages/news_detail/news_detail_page.dart';

class NewsCarousel extends StatefulWidget {
  NewsCarousel({Key key}) : super(key: key);

  @override
  _CarouselSliderState createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<NewsCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: Consumer<HomeViewModel>(
            builder: (context, homeViewModel, _) {
              return Carousel(
                boxFit: BoxFit.cover,
                autoplay: false,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Color(0xFFFF335C),
                dotBgColor: Colors.black12,
                dotPosition: DotPosition.bottomCenter,
                overlayShadowColors: Colors.black45,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: homeViewModel.newsList.map((news) {
                  return CachedNetworkImage(
                    imageUrl:
                        'https://savethelibrarymyanmar.org/images/${news.image}',
                    fit: BoxFit.cover,
                    height:
                        230.0, //change according to the width of the image cards
                  );
                }).toList(),
                onImageTap: (index) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsDetailPage(
                      //not finished
                      newsId: homeViewModel.newsList[index].postId,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
