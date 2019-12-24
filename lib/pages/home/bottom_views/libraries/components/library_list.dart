import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/library/built_library_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/libraries_view_model.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

import 'library_item.dart';

class LibraryList extends StatelessWidget {
  const LibraryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<LibrariesViewModel, ApiService>(
      builder: (context, librariesViewModel, apiService, _) {
        return SmartList<BuiltLibraryList>(
          items: librariesViewModel.libraryList,
          onGet: (page) => ApiService.fetch(
            () => apiService.getLibraries(page),
          ),
          onLoaded: (body) {
            librariesViewModel.setLibraryList(
              librariesViewModel.libraryList + body.data.toList(),
            );
          },
          itemBuilder: (context, item) => LibraryItem(
            library: item as BuiltLibrary,
          ),
        );
      },
    );
  }
}
