import 'package:chopper/chopper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/pages/home/bottom_views/bottom_view_widget.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/libraries_view_model.dart';
import 'package:save_the_library/widgets/error_message_widget.dart';
import 'components/library_list.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/components/library_state.dart';

class LibrariesView extends StatefulWidget implements BottomViewWidget {
  const LibrariesView({
    Key key,
  }) : super(key: key);

  @override
  _LibrariesViewState createState() => _LibrariesViewState();

  @override
  BottomNavigationBarItem get bottomNaviBarItem => BottomNavigationBarItem(
        icon: Icon(OMIcons.localLibrary),
        activeIcon: Icon(Icons.local_library),
        title: Text('Libraries'),
      );
}

@override
class _LibrariesViewState extends State<LibrariesView> {
  List<Widget> _widgetList = [LibraryList(), LibraryState()];
  @override
  Widget build(BuildContext context) {
    return Consumer<LibrariesViewModel>(
      builder: (context, librariesViewModel, child) {
        if (librariesViewModel.dataState == DataState.loaded) {
          if (librariesViewModel.error != null) {
            return ErrorMessageWidget<LibrariesViewModel>(
              error: librariesViewModel.error,
            );
          } else {
            return child;
          }
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
      child: DefaultTabController(
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
      ),
    );
  }
}
