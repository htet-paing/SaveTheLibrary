import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/book.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class BookAuthorList extends StatelessWidget {
  const BookAuthorList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoConnectionHandler(
      child: SmartList<BuiltBookAuthorList>(
        onGet: (page) => Provider.of<ApiService>(context).getBookAuthors(page),
        listGetter: (body) => body.data.toList(),
        itemBuilder: (context, item) {
          BuiltBookAuthor bookAuthor = item as BuiltBookAuthor;
          return Card(
            child: ListTile(
              title: Text(bookAuthor.name),
            ),
          );
        },
      ),
    );
  }
}
