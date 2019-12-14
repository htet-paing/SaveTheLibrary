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
  /// i.e: need to return the type of Future<Response<_SmartList Type_>>
  ///
  /// eg:
  /// ```dart
  /// SmartList<BuiltBookList> {
  ///   onGet: (int page) => Provider.of<ApiService>(context).getBooks(page);
  ///   // should return Future<Response<BuiltBookList>>
  /// }
  ///
  /// SmartList<BuiltLibraryList> {
  ///   onGet: (int page) => Provider.of<ApiService>(context).getLibraries(page);
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
  /// SmartList<BuiltBookList> {
  ///   onGet: (int page) => Provider.of<ApiService>(context).getBooks(page);
  ///   listGetter: (BuiltLibrariesList body) => body.data.toList();
  /// }
  ///
  /// SmartList<BuiltLibraryList> {
  ///   onGet: (int page) => Provider.of<ApiService>(context).getLibraries(page);
  ///   listGetter: (BuiltLibraryList body) => body.data.toList();
  /// }
  /// ```
  final ListGetter<T> listGetter;

  /// [itemBuilder] will pass _context_ and dynamic _item_ ( from _listGetter_ ) for building item widget.
  ///
  /// eg:
  /// ```dart
  /// SmartList<BuiltBookList> {
  ///   ...
  ///   listGetter: (BuiltLibrariesList body) => body.data.toList();
  ///   itemBuilder: (context, dynamic item) {
  ///     BuiltBook book = item as BuiltBook; // for typesafe
  ///     return Text(book.bookTitle);
  ///   }
  /// }
  ///
  /// SmartList<BuiltLibraryList> {
  ///   ...
  ///   listGetter: (BuiltLibraryList body) => body.data.toList();
  ///   itemBuilder: (context, dynamic item) {
  ///     BuiltLibrary library = item as BuiltLibrary; // for typesafe
  ///     return Text(library.name);
  ///   }
  /// }
  /// ```
  final ItemBuilder itemBuilder;

  ///[onClick] pass in a function to pe called when clicked on individual items
  final Function onClick;

  SmartSlider({
    @required this.title,
    @required this.listGetter,
    @required this.itemBuilder,
    @required this.onGet,
    @required this.onClick,
    Key key
    }) : super(key: key);

  @override
  _SmartSlider1State createState() => _SmartSlider1State();
}

class _SmartSlider1State extends State<SmartSlider> {
  var _itemList = Set();

  @override
  Widget build(BuildContext context) {

    _onLoad();
    return ListView(
      children: <Widget>[
        Text("${this.widget.title}"),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: ListView.builder(
                itemCount: _itemList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,int index) {
                  if(index < _itemList.length){
                    print(index);
                    return this.widget.itemBuilder(context, _itemList.elementAt(index));
                  }
                },
              ),
            ),
          ],
        ),
      ]
    );
  }

  void _onLoad() async{
    try {
      Response response = await this.widget.onGet(1);
        if (response.statusCode == 200) {
          setState(() {
            _itemList.addAll(this.widget.listGetter(response.body));
          });
        } else {
          print('ERROR! : ${response.statusCode.toString()}');
        }

    } catch (err){
      print(err.toString());
    }
  }

}
