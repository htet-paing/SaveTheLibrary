import 'package:flutter/cupertino.dart';
import 'package:save_the_library/models/api/library/library.dart';

class LibraryDetailBody extends StatelessWidget {
  
  final BuiltLibraryDetail libraryDetail;

  const LibraryDetailBody({Key key, this.libraryDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(libraryDetail.name),
    );
  }
}
