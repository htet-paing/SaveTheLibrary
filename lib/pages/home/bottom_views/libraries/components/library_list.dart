import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/api/library/built_library_list.dart';
import 'package:save_the_library/models/api/township/built_township_list.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/components/library_list_model.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/components/township_list_model.dart';
import 'package:save_the_library/widgets/error_message_widget.dart';
import 'package:save_the_library/widgets/smart_list.dart';

import 'library_item.dart';

class LibraryList extends StatelessWidget {
  const LibraryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LibraryListModel(),
      child: Consumer2<LibraryListModel, ApiService>(
        builder: (context, model, apiService, _) {
          if (model.dataState == DataState.loaded) {
            if (model.hasError()) {
              return ErrorMessageWidget<LibraryListModel>(error: model.error);
            }
            return Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: SmartList<BuiltLibraryList>(
                enablePullDown: true,
                items: model.libraryList,
                onGet: (page) => ApiService.fetch(
                  () => apiService.getLibraries(page),
                ),
                onLoaded: (body) {
                  model.setLibraryList(
                    model.libraryList + body.data.toList(),
                  );
                },
                itemBuilder: (context, item) => LibraryItem(
                  library: item as BuiltLibrary,
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
