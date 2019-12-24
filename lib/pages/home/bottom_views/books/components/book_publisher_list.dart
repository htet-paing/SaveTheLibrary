import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/book.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/books/books_view_model.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class BookPublisherList extends StatelessWidget {
  const BookPublisherList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<BooksViewModel, ApiService>(
      builder: (context, booksViewModel, apiService, _) {
        return SmartList<BuiltBookPublisherList>(
          items: booksViewModel.bookPublisherList,
          onGet: (page) => ApiService.fetch(
            () => apiService.getBookPublishers(page),
          ),
          onLoaded: (body) {
            booksViewModel.setBookPublisherList(
              booksViewModel.bookPublisherList + body.data.toList(),
            );
          },
          itemBuilder: (context, item) {
            BuiltBookPublisher bookPublisher = item as BuiltBookPublisher;
            return Card(
              child: ListTile(
                title: Text(bookPublisher.name),
              ),
            );
          },
        );
      },
    );
  }
}
