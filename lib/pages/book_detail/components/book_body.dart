import 'package:flutter/material.dart';
import 'package:save_the_library/models/book/book.dart';

class BooksBody extends StatelessWidget {
  
  final BuiltBookDetail booksDetail;

  const BooksBody({Key key, this.booksDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(booksDetail.featureImagePath),
    );
  }
}
