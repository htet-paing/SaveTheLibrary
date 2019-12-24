import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/pages/home/bottom_views/books/books_view_model.dart';
import 'package:save_the_library/pages/home/bottom_views/books/components/book_author_list.dart';
import 'package:save_the_library/pages/home/bottom_views/books/components/book_category_list.dart';
import 'package:save_the_library/pages/home/bottom_views/books/components/book_list.dart';
import 'package:save_the_library/pages/home/bottom_views/books/components/book_publisher_list.dart';
import 'package:save_the_library/pages/home/bottom_views/bottom_view_widget.dart';
import 'package:save_the_library/widgets/error_message_widget.dart';

class BooksView extends StatefulWidget implements BottomViewWidget {
  BooksView({
    Key key,
  }) : super(key: key);

  @override
  _BooksViewState createState() => _BooksViewState();

  @override
  Icon get icon => Icon(Icons.rate_review);

  @override
  Widget get title => Text("Reviews");
}

class _BooksViewState extends State<BooksView> {
  List<Widget> _widgetList = [
    BookList(),
    BookAuthorList(),
    BookCategoryList(),
    BookPublisherList(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BooksViewModel>(
      create: (_) => BooksViewModel(),
      child: Consumer<BooksViewModel>(
        builder: (context, booksViewModel, child) {
          if (booksViewModel.dataState == DataState.loaded) {
            if (booksViewModel.error != null) {
              return ErrorMessageWidget<BooksViewModel>(
                  error: booksViewModel.error);
            } else {
              return child;
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        child: DefaultTabController(
          length: _widgetList.length,
          child: Scaffold(
            appBar: TabBar(
              indicatorColor: Theme.of(context).primaryColor,
              tabs: [
                Tab(icon: Text("Books")),
                Tab(icon: Text("Authors")),
                Tab(icon: Text("Category")),
                Tab(icon: Text("Publisher")),
              ],
            ),
            body: TabBarView(
              dragStartBehavior: DragStartBehavior.down,
              children: _widgetList,
            ),
          ),
        ),
      ),
    );
  }
}
