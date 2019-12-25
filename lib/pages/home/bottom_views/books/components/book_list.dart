import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/api/book/built_book_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/books/books_view_model.dart';
import 'book_item.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class BookList extends StatelessWidget {
  const BookList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<BooksViewModel, ApiService>(
      builder: (context, booksViewModel, apiService, _) {
        return SmartList<BuiltBookList>(
          items: booksViewModel.bookList,
          onGet: (page) => ApiService.fetch(() => apiService.getBooks(page)),
          onLoaded: (body) {
            booksViewModel
                .setBookList(booksViewModel.bookList + body.data.toList());
          },
          itemBuilder: (context, item) {
            BuiltBook book = item as BuiltBook;
            return BookItem(book: book);
          },
        );
      },
    );
  }
}
