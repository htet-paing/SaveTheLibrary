import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/book.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class BookPublisherList extends StatelessWidget {
  const BookPublisherList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoConnectionHandler(
      child: SmartList<BuiltBookPublisherList>(
        onGet: (page) => Provider.of<ApiService>(context).getBookPublishers(page),
        listGetter: (body) => body.data.toList(),
        itemBuilder: (context, item) {
          BuiltBookPublisher bookPublisher = item as BuiltBookPublisher;
          return Card(
            child: ListTile(
              title: Text(bookPublisher.name),
            ),
          );
        },
      ),
    );
  }
}
