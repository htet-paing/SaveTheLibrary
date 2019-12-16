import 'package:chopper/chopper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/pages/home/views/books/components/book_author_list.dart';
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
  List<Widget> _widgetList = [
    LibraryList(key: ValueKey(typeOf<LibraryList>()),),
    BookAuthorList(key: ValueKey(typeOf<BookAuthorList>()),)

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _widgetList.length,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Colors.teal,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.teal,
          tabs: [
            Tab(icon: Icon(Icons.list)),
            Tab(icon: Icon(Icons.place)),
          ],
        ),
        body: TabBarView(
          dragStartBehavior: DragStartBehavior.down,
          children: _widgetList,
        ),
      ),
    );
  }
}
