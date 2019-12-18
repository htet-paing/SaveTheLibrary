import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/widgets/type_def.dart';

/// [SmartSlider] provides a vertical slider when configured
///
/// _T_ is type of Response's body return on get method
///
class SmartSlider<T> extends StatefulWidget {
  ///[title] the title of the carousel which exists at the top of the associated carousel
  final String title;

  /// [onGet] will pass _page_ parameter. use that _page_ inside api get method.
  ///
  /// i.e: need to return the type of Future<Response<_SmartSlider Type_>>
  ///
  /// eg:
  /// ```dart
  /// SmartSlider<BuiltBookList> {
  ///   onGet: () => Provider.of<ApiService>(context).getBooks();
  ///   // should return Future<Response<BuiltBookList>>
  /// }
  ///
  /// SmartSlider<BuiltLibraryList> {
  ///   onGet: () => Provider.of<ApiService>(context).getLibraries();
  ///   // should return Future<Response<BuiltLibraryList>>
  /// }
  /// ```
  final OnGet<T> onGet;

  /// [listGetter] will pass _body_ ( of Response ).
  ///
  /// From that _body_ return a list of item to use in [itemBuilder]
  ///
  /// eg:
  /// ```dart
  /// SmartSlider<BuiltBookList> {
  ///   onGet: (int page) => Provider.of<ApiService>(context).getBooks(page);
  ///   listGetter: (BuiltLibrariesList body) => body.data.toList();
  /// }
  ///
  /// SmartSlider<BuiltLibraryList> {
  ///   onGet: (int page) => Provider.of<ApiService>(context).getLibraries(page);
  ///   listGetter: (BuiltLibraryList body) => body.data.toList();
  /// }
  /// ```
  final ListGetter<T> listGetter;

  /// [itemBuilder] will pass _context_ and dynamic _item_ ( from _listGetter_ ) for building item widget.
  ///
  /// eg:
  /// ```dart
  /// SmartSlider<BuiltBookList> {
  ///   ...
  ///   listGetter: (BuiltLibrariesList body) => body.data.toList();
  ///   itemBuilder: (context, dynamic item) {
  ///     BuiltBook book = item as BuiltBook; // for typesafe
  ///     return Text(book.bookTitle);
  ///   }
  /// }
  ///
  /// SmartSlider<BuiltLibraryList> {
  ///   ...
  ///   listGetter: (BuiltLibraryList body) => body.data.toList();
  ///   itemBuilder: (context, dynamic item) {
  ///     BuiltLibrary library = item as BuiltLibrary; // for typesafe
  ///     return Text(library.name);
  ///   }
  /// }
  /// ```
  final ItemBuilder itemBuilder;

  SmartSlider(
      {@required this.title,
      @required this.listGetter,
      @required this.itemBuilder,
      @required this.onGet,
      Key key})
      : super(key: key);

  @override
  _SmartSlider1State createState() => _SmartSlider1State();
}

class _SmartSlider1State extends State<SmartSlider> {
  List _itemList;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Response<dynamic>>(
      future: this.widget.onGet(1),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          _itemList = this.widget.listGetter(snapshot.data.body);
          return Column(children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Text("${this.widget.title}")),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 210.0,
                  child: ListView.builder(
                    itemCount: _itemList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return this.widget.itemBuilder(context, _itemList[index]);
                    },
                  ),
                ),
              ],
            ),
          ]);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
