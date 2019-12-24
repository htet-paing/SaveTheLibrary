import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/book.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/books/books_view_model.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class BookAuthorList extends StatelessWidget {
  const BookAuthorList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<BooksViewModel, ApiService>(
      builder: (context, booksViewModel, apiService, child) {
        return SmartList<BuiltBookAuthorList>(
          items: booksViewModel.bookAuthorList,
          onGet: (page) => ApiService.fetch(
            () => apiService.getBookAuthors(page),
          ),
          onLoaded: (body) {
            booksViewModel.setBookAuthorList(
              booksViewModel.bookAuthorList + body.data.toList(),
            );
          },
          itemBuilder: (context, item) {
            BuiltBookAuthor bookAuthor = item as BuiltBookAuthor;
            return Card(
              child: ListTile(
                title: Text(bookAuthor.name),
              ),
            );
          },
        );
      },
    );
  }
}
