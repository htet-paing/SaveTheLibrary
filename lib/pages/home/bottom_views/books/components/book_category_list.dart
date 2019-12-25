import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/api/book/book.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/home/bottom_views/books/books_view_model.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class BookCategoryList extends StatelessWidget {
  const BookCategoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<BooksViewModel, ApiService>(
      builder: (context, booksViewModel, apiService, child) {
        return SmartList<BuiltBookCategoryList>(
          items: booksViewModel.bookCategoryList,
          onGet: (page) =>
              ApiService.fetch(() => apiService.getBookCategories(page)),
          onLoaded: (body) {
            booksViewModel.setBookCategoryList(
              booksViewModel.bookCategoryList + body.data.toList(),
            );
          },
          itemBuilder: (context, item) {
            BuiltBookCategory bookCategory = item as BuiltBookCategory;
            return Card(
              child: ListTile(
                title: Text(bookCategory.nameMM),
              ),
            );
          },
        );
      },
    );
  }
}
