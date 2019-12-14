import 'package:flutter/material.dart';

class BookDetailPage extends StatefulWidget {

  final int bookId;

  BookDetailPage({
    @required this.bookId,
    Key key}) : super(key: key);

  @override
  _BookDetailPageState createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO: book detail UI here
    );
  }
}