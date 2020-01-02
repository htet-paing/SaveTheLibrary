import 'package:save_the_library/models/api/township/built_township_list.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/network/api_service.dart';

class TownshipListModel extends BaseModel {
  final int stateId;

  List<BuiltTownship> townshipList;
  void setTownshipList(List<BuiltTownship> townshipList) {
    this.townshipList = townshipList;
    notifyListeners();
  }

  TownshipListModel(this.stateId) {
    fetchData();
  }

  @override
  Future onGet() async {
    await ApiService.fetch(
      () => apiService.getTownships(stateId).then((response) {
        setTownshipList(response.body.townships.data.toList());
      }),
    );
  }
}
