import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/models/library/library.dart';
import 'package:save_the_library/pages/library_detail/library_detail_page.dart';

class LibraryItem extends StatelessWidget {
  final BuiltLibrary library;
  const LibraryItem({Key key, this.library}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(library.name),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LibraryDetailPage(
                libraryId: library.id,
              ),
            ),
          );
        },
      ),
    );
  }
}
