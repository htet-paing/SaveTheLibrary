import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/models/api/division/built_division.dart';
import 'package:save_the_library/models/api/library/library.dart';
import 'package:save_the_library/models/network_failure_exception.dart';
import 'package:save_the_library/network/api_service.dart';

class LibrariesViewModel extends BaseModel {
  int _currentIndex;
  int get currentIndex => _currentIndex;
  set currentIndex(int currentIndex) {
    _currentIndex = currentIndex;
    notifyListeners();
  }

  List<BuiltDivision> divisionList = [];
  void setDivisionList(List<BuiltDivision> divisionList) {
    this.divisionList = divisionList;
    notifyListeners();
  }

  String currentDivisionId() {
    return this.divisionList[currentIndex].id.toString();
  }

  LibrariesViewModel() {
    this.fetchData();
  }

  @override
  Future onGet() async {
    await ApiService.fetch(() => apiService.getDivisions()).then((value) {
      this.setDivisionList(value.body.states.toList());
    });
  }
}
