import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/models/api/book/book.dart';

class BookItem extends StatelessWidget {
  final BuiltBook book;
  const BookItem({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: ListTile(
          title: Text(book.bookName),
        ),
      ),
    );
  }
}
