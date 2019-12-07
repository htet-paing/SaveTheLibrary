import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/pages/books/components/book_author_list.dart';
import 'package:save_the_library/pages/books/components/book_category_list.dart';
import 'package:save_the_library/pages/books/components/book_list.dart';
import 'package:save_the_library/pages/books/components/book_publisher_list.dart';

class BooksPage extends StatefulWidget {
  BooksPage({Key key}) : super(key: key);

  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  int _currentIndex = 0;
  List<Widget> widgetList = [
    BookList(),
    BookAuthorList(),
    BookCategoryList(),
    BookPublisherList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Books'),
        centerTitle: true,
        elevation: 1,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text("Latest"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Authors"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("Categories"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.print),
            title: Text("Publishers"),
          ),
        ],
      ),
    );
  }
}
