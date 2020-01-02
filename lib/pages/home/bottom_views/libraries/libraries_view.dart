import 'package:chopper/chopper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/pages/home/bottom_views/bottom_view_widget.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/components/township_list.dart';
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
  @override
  Widget build(BuildContext context) {
    return Consumer<LibrariesViewModel>(
      builder: (context, model, child) {
        if (model.dataState == DataState.loaded) {
          if (model.error != null) {
            return ErrorMessageWidget<LibrariesViewModel>(
              error: model.error,
            );
          } else {
            return Scaffold(
              body: Builder(builder: (context) {
                if (model.currentIndex == null) {
                  return LibraryList();
                } else {
                  return TownshipList(
                      key: ValueKey(model.currentIndex),
                      stateId: model.currentDivisionId());
                }
              }),
              bottomNavigationBar: Container(
                height: 60.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: model.divisionList.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(right: 2.5, left: 2.5),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 2.5, left: 2.5),
                      child: InputChip(
                        label: Text(
                          model.divisionList[index].stateDivision,
                        ),
                        onSelected: (value) {
                          if (model.currentIndex == index) {
                            model.currentIndex = null;
                          } else {
                            model.currentIndex = index;
                          }
                        },
                        pressElevation: 6,
                        selected: model.currentIndex == index,
                      ),
                    );
                  },
                ),
              ),
            );
          }
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
