import 'package:flutter/cupertino.dart';
import 'package:save_the_library/network/api_service.dart';

enum DataState { initial, loading, loaded }

abstract class BaseModel extends ChangeNotifier {
  ApiService apiService = ApiService.create();

  Exception error;
  void setError(Exception error) {
    this.error = error;
    notifyListeners();
  }

  DataState dataState = DataState.initial;
  void setDataState(DataState dataState) {
    this.dataState = dataState;
    notifyListeners();
  }

  Future fetchData();

  @override
  void dispose() {
    this.apiService.dispose();
    super.dispose();
  }
}
