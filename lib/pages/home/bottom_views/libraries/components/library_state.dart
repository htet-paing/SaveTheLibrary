import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/api/division/built_division.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/libraries_view_model.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class LibraryState extends StatelessWidget {
  const LibraryState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<LibrariesViewModel, ApiService>(
      builder: (context, librariesViewModel, apiService, _) {
        return SmartList<BuiltDivisions>(
          items: librariesViewModel.divisionList,
          listGetter: (body) => body.states.toList(),
          enablePullUp: false,
          itemBuilder: (context, item) {
            BuiltDivision builtDivision = item as BuiltDivision;
            return Card(
              child: ListTile(
                title: Text(builtDivision.stateDivision),
              ),
            );
          },
        );
      },
    );
  }
}
