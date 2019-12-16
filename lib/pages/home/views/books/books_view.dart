import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/pages/home/views/books/components/book_author_list.dart';
import 'package:save_the_library/pages/home/views/books/components/book_category_list.dart';
import 'package:save_the_library/pages/home/views/books/components/book_list.dart';
import 'package:save_the_library/pages/home/views/books/components/book_publisher_list.dart';
import 'package:save_the_library/pages/home/views/view_widget.dart';

class BooksView extends StatefulWidget implements ViewWidget {
  final Widget title;
  final Icon icon;

  BooksView({
    Key key,
    this.title = const Text('Reviews'),
    this.icon = const Icon(Icons.rate_review),
  }) : super(key: key);

  @override
  _BooksViewState createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  List<Widget> _widgetList = [
    BookList(key: ValueKey(typeOf<BookList>())),
    BookAuthorList(key: ValueKey(typeOf<BookAuthorList>())),
    BookCategoryList(key: ValueKey(typeOf<BookCategoryList>())),
    BookPublisherList(key: ValueKey(typeOf<BookPublisherList>())),
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
            Tab(icon: Icon(Icons.book)),
            Tab(icon: Icon(Icons.person)),
            Tab(icon: Icon(Icons.category)),
            Tab(icon: Icon(Icons.print)),
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
