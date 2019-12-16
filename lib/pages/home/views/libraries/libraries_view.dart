import 'package:flutter/material.dart';
import 'package:save_the_library/pages/home/views/view_widget.dart';
import 'components/library_list.dart';

class LibrariesView extends StatefulWidget implements ViewWidget {
  final Widget title;
  final Icon icon;

  const LibrariesView({
    Key key,
    this.title = const Text('Libraries'),
    this.icon = const Icon(Icons.local_library),
  }) : super(key: key);

  @override
  _LibrariesViewState createState() => _LibrariesViewState();
}

class _LibrariesViewState extends State<LibrariesView> {
  @override
  Widget build(BuildContext context) {
    return LibraryList();
  }
}
