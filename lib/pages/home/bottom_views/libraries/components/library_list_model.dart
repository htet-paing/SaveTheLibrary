import 'package:flutter/cupertino.dart';
import 'package:save_the_library/models/api/library/built_library_list.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/models/network_failure_exception.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/components/library_list.dart';

class LibraryListModel extends BaseModel {
  List<BuiltLibrary> libraryList;
  void setLibraryList(List<BuiltLibrary> libraryList) {
    this.libraryList = libraryList;
  }

  LibraryListModel() {
    fetchData();
  }

  @override
  Future onGet() async {
    await ApiService.fetch(() => apiService.getLibraries()).then((response) {
      setLibraryList(response.body.data.toList());
    });
  }
}
