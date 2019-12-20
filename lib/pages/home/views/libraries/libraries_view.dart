import 'package:chopper/chopper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/pages/home/views/view_widget.dart';
import 'components/library_list.dart';
import 'package:save_the_library/pages/home/views/libraries/components/library_state.dart';

class LibrariesView extends StatefulWidget implements ViewWidget {
  const LibrariesView({
    Key key,
  }) : super(key: key);

  @override
  _LibrariesViewState createState() => _LibrariesViewState();

  Icon get icon => Icon(Icons.local_library);

  @override
  Widget get title => Text("Libraries");
}

@override
class _LibrariesViewState extends State<LibrariesView> {
  List<Widget> _widgetList = [LibraryList(), LibraryState()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _widgetList.length,
      child: Scaffold(
        appBar: TabBar(
          indicatorColor: Theme.of(context).primaryColor,
          tabs: [
            Tab(icon: Icon(Icons.list)),
            Tab(icon: Icon(Icons.place)),
          ],
        ),
        body: TabBarView(
          dragStartBehavior: DragStartBehavior.down,
          children: _widgetList,
        ),
      ),
    );
  }
}
