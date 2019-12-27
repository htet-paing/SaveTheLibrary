import 'package:chopper/chopper.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/models/network_failure_exception.dart';
import 'package:save_the_library/widgets/type_def.dart';

/// [SmartList] provide _pull to refresh_, _pagination_, and other additional features out-of-the-box with few configuration
///
/// _T_ is type of Response's body return on get method
///
class SmartList<T> extends StatefulWidget {
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

  final List items;

  final void Function(T body) onLoaded;

  final bool Function(T body) stopAt;

  /// _true_ by default
  final bool enablePullUp;

  /// _true_ by default
  final bool enablePullDown;

  SmartList({
    Key key,
    this.onGet,
    this.onLoaded,
    this.stopAt,
    this.listGetter,
    @required this.itemBuilder,
    @required this.items,
    this.enablePullUp = true,
    this.enablePullDown = false,
  }) : super(key: key);

  @override
  _SmartListState createState() =>
      _SmartListState<T>(this.onGet, this.onLoaded, this.stopAt);
}

class _SmartListState<T> extends State<SmartList>
    with
        TickerProviderStateMixin<SmartList>,
        AutomaticKeepAliveClientMixin<SmartList> {
  OnGet<T> _onGet;
  void Function(T body) _onLoaded;
  bool Function(T body) _errorOn;

  _SmartListState(this._onGet, this._onLoaded, bool Function(T body) errorOn) {
    errorOn ??= (body) => false;
    this._errorOn = errorOn;
  }

  RefreshController _refreshController;
  ScrollController _scrollController;
  int _currentPage = 1;
  AnimationController _fabAnimationController;

  @override
  void initState() {
    super.initState();

    _refreshController = RefreshController();

    _scrollController = ScrollController();

    _fabAnimationController = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    _scrollController.addListener(() {
      if (_scrollController.offset > 1000) {
        // print(_scrollController.offset);
        _fabAnimationController.forward();
      } else {
        _fabAnimationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      // for stacking floating actoin button
      children: <Widget>[
        SmartRefresher(
          controller: _refreshController,
          enablePullUp: this.widget.enablePullUp,
          enablePullDown: this.widget.enablePullDown,
          header: MaterialClassicHeader(),
          footer: ClassicFooter(),
          physics: BouncingScrollPhysics(),
          onRefresh: () => _onRefresh(context),
          onLoading: _onLoading,
          child: ListView.builder(
            controller: _scrollController,
            itemCount: this.widget.items.length,
            itemBuilder: (BuildContext context, int index) {
              return this.widget.itemBuilder(context, this.widget.items[index]);
            },
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment(0.8, 0.9),
            child: ScaleTransition(
              scale: _fabAnimationController
                  .drive(CurveTween(curve: Curves.fastOutSlowIn)),
              child: FloatingActionButton(
                // need if there are two floating action bottom in the same screen
                heroTag: typeOf<T>(),
                onPressed: () {
                  _scrollController.animateTo(
                    0.0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
                child: Icon(Icons.arrow_upward),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onRefresh(BuildContext context) async {
    try {
      Response<T> response = await this._onGet(1);
      if (response.statusCode == 200) {
        if (this.mounted) {
          setState(() {
            // _itemList = this._listGetter(response.body);
            _currentPage = 1;
            _refreshController.refreshCompleted();
          });
        }
      } else {
        _refreshController.refreshFailed();
      }
    } on NetworkFailure {
      _refreshController.refreshFailed();
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('No Internet Connection'),
          action: SnackBarAction(
            label: 'Retry',
            onPressed: () {
              _refreshController.requestRefresh();
            },
          ),
        ),
      );
    }
  }

  void _onLoading() async {
    try {
      Response<T> response = await this._onGet(_currentPage + 1);
      if (this.mounted) {
        if (this._errorOn(response.body)) {
          setState(() {
            _refreshController.loadNoData();
          });
        } else {
          this._onLoaded(response.body);
          setState(() {
            _currentPage++;
            _refreshController.loadComplete();
          });
        }
      }
    } on NetworkFailure {
      _refreshController.loadFailed();
    }
  }

  @override
  void dispose() {
    _refreshController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true; // to maintain ListView state
}
