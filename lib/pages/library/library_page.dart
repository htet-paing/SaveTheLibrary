import 'package:flutter/material.dart';
import 'package:save_the_library/pages/books/components/book_list.dart';

import 'components/library_list.dart';

class LibrariesPage extends StatefulWidget {
  @override
  _LibrariesPageState createState() => _LibrariesPageState();
}

class _LibrariesPageState extends State<LibrariesPage> {
  int _currentIndex = 0;
  List<Widget> widgetList = <Widget>[LibraryList(), BookList()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
        centerTitle: true,
        title: Text('Libraries'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          this.setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("Library"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            title: Text("Divisions"),
          ),
        ],
      ),
    );
  }
}
