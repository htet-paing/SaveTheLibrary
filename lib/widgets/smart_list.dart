import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:save_the_library/network/interceptors/internet_connection_interceptor.dart';

/// [T] is type of Response's body

typedef List<dynamic> ListGetter<T>(T body);
typedef Widget ItemBuilder<T>(BuildContext context, T item);

typedef Future<Response<T>> OnGet<T>(int page);

class SmartList<T> extends StatefulWidget {
  final OnGet<T> onGet;

  /// [listGetter] generate list of item which is used in the [itemBuilder] to build widget
  final ListGetter<T> listGetter;
  final ItemBuilder itemBuilder;
  final bool enablePullUp;
  final bool enablePullDown;

  SmartList({
    Key key,
    @required this.onGet,
    @required this.listGetter,
    @required this.itemBuilder,
    this.enablePullUp = true,
    this.enablePullDown = true,
  }) : super(key: key);

  @override
  _SmartListState createState() => _SmartListState<T>(
        this.onGet,
        this.listGetter,
        this.enablePullUp,
        this.enablePullDown,
      );
}

class _SmartListState<T> extends State<SmartList> {
  OnGet<T> _onGet;
  ListGetter<T> _listGetter;
  bool _enablePullUp;
  bool _enablePullDown;

  _SmartListState(
    this._onGet,
    this._listGetter,
    this._enablePullUp,
    this._enablePullDown,
  );

  RefreshController _refreshController;
  ScrollController _scrollController;
  int _currentPage;
  List<dynamic> _itemList = [];
  double _floatingButtonOpticity = 0.0;

  @override
  void initState() {
    _refreshController = RefreshController(
      initialRefresh: true,
      initialRefreshStatus: RefreshStatus.refreshing,
    );

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset > 0.0) {
        setState(() {
          _floatingButtonOpticity = 1.0;
        });
      } else {
        setState(() {
          _floatingButtonOpticity = 0.0;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      // for stacking floating actoin button
      children: <Widget>[
        SmartRefresher(
          controller: _refreshController,
          enablePullUp: this._enablePullUp,
          enablePullDown: this._enablePullDown,
          header: MaterialClassicHeader(),
          footer: ClassicFooter(),
          physics: BouncingScrollPhysics(),
          onRefresh: () => _onRefresh(context),
          onLoading: _onLoading,
          child: ListView.builder(
            controller: _scrollController,
            itemCount: _itemList.length,
            itemBuilder: (BuildContext context, int index) {
              return this.widget.itemBuilder(context, this._itemList[index]);
            },
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment(0.8, 0.9),
            child: AnimatedOpacity(
              child: FloatingActionButton(
                onPressed: () {
                  _scrollController.animateTo(
                    0.0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
                child: Icon(Icons.arrow_upward),
              ),
              duration: Duration(milliseconds: 500),
              opacity: _floatingButtonOpticity,
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
        setState(() {
          _itemList = this._listGetter(response.body);
          _currentPage = 1;
          _refreshController.refreshCompleted();
        });
      } else {
        _refreshController.refreshFailed();
      }
    } on NoConnectionException {
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
      if (response.statusCode == 200) {
        setState(() {
          _itemList.addAll(this._listGetter(response.body));
          _currentPage++;
          _refreshController.loadComplete();
        });
      } else {
        _refreshController.loadFailed();
      }
    } on NoConnectionException {
      _refreshController.loadFailed();
    }
  }

  @override
  void dispose() {
    _refreshController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
