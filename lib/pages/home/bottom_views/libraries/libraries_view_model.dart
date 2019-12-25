import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/models/api/division/built_division.dart';
import 'package:save_the_library/models/api/library/library.dart';
import 'package:save_the_library/models/network_failure_exception.dart';
import 'package:save_the_library/network/api_service.dart';

class LibrariesViewModel extends BaseModel {
  List<BuiltLibrary> libraryList = [];
  void setLibraryList(List<BuiltLibrary> libraryList) {
    this.libraryList = libraryList;
    notifyListeners();
  }

  List<BuiltDivision> divisionList = [];
  void setDivisionList(List<BuiltDivision> divisionList) {
    this.divisionList = divisionList;
    notifyListeners();
  }

  LibrariesViewModel() {
    this.fetchData();
  }

  @override
  Future fetchData() async {
    setDataState(DataState.loading);

    try {
      await ApiService.fetch(() => apiService.getLibraries()).then((value) {
        this.setLibraryList(value.body.data.toList());
      });
      await ApiService.fetch(() => apiService.getDivisions()).then((value) {
        this.setDivisionList(value.body.states.toList());
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
}
