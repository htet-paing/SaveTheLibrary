import 'package:flutter/material.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/models/network_failure_exception.dart';
import 'package:save_the_library/models/api/news/built_news_list.dart';
import 'package:save_the_library/models/api/video/built_video_list.dart';
import 'package:save_the_library/network/api_service.dart';

class NewsViewModel extends BaseModel {

  List<BuiltNews> newsList = [];
  void setNewsList(List<BuiltNews> newsList) {
    this.newsList = newsList;
    notifyListeners();
  }

  List<BuiltVideo> videoList = [];
  void setVideoList(List<BuiltVideo> videoList) {
    this.videoList = videoList;
    notifyListeners();
  }

  NewsViewModel() {
    this.fetchData();
  }

  @override
  Future onGet() async {
    await ApiService.fetch(() => apiService.getNews()).then((value) {
      this.setNewsList(value.body.data.toList());
    });
    await ApiService.fetch(() => apiService.getVideos()).then((value) {
      this.setVideoList(value.body.data.toList());
    });
  }

  bool hasError() {
    return this.error != null;
  }
}
