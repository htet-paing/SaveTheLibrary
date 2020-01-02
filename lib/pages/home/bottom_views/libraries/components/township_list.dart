import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/api/township/built_township_list.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/components/township_list_model.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class TownshipList extends StatelessWidget {
  final String stateId;

  const TownshipList({Key key, @required this.stateId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TownshipListModel(int.parse(stateId)),
      child: Consumer2<TownshipListModel, ApiService>(
        builder: (context, model, apiService, _) {
          if (model.dataState == DataState.loaded) {
            return SmartList<BuiltTownships>(
              items: model.townshipList,
              onGet: (page) => ApiService.fetch(
                () => apiService.getTownships(int.parse(stateId), page),
              ),
              stopAt: (body) {
                return body.townships.currentPage > body.townships.lastPage;
              },
              onLoaded: (body) {
                model.setTownshipList(
                  model.townshipList + body.townships.data.toList(),
                );
              },
              itemBuilder: (context, item) {
                BuiltTownship township = item as BuiltTownship;
                return ListTile(
                  title: Text(township.townshipName),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
