import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/library/built_library_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

import 'library_item.dart';

class LibraryList extends StatelessWidget {
  const LibraryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoConnectionHandler(
      child: SmartList<BuiltLibraryList>(
        onGet: (page) => Provider.of<ApiService>(context).getLibraries(page),
        listGetter: (body) => body.data.toList(),
        itemBuilder: (context, item) => LibraryItem(
          library: item as BuiltLibrary,
        ),
      ),
    );
  }
}
