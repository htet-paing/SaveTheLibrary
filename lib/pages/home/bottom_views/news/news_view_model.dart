import 'package:flutter/material.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/models/network_failure_exception.dart';
import 'package:save_the_library/models/news/built_news_list.dart';
import 'package:save_the_library/models/video/built_video_list.dart';
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
  Future fetchData() async {
    setDataState(DataState.loading);

    try {
      await ApiService.fetch(() => apiService.getNews()).then((value) {
        this.setNewsList(value.body.data.toList());
      });
      await ApiService.fetch(() => apiService.getVideos()).then((value) {
        this.setVideoList(value.body.data.toList());
      });
      // throw NoConnectionException();
      // throw Http404Exception();
      // throw BadResponseException();
    } on NoConnectionException catch (e) {
      setError(e);
    } finally {
      setDataState(DataState.loaded);
    }
  }

  bool hasError() {
    return this.error != null;
  }
}
