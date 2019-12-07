import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/built_book_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/books/components/book_item.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class BookList extends StatelessWidget {
  const BookList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoConnectionHandler(
      child: SmartList<BuiltBookList>(
        onGet: (page) => Provider.of<ApiService>(context).getBooks(page),
        listGetter: (body) => body.data.toList(),
        itemBuilder: (context, item) {
          BuiltBook book = item as BuiltBook;
          return BookItem(book: book);
        },
      ),
    );
  }
}
