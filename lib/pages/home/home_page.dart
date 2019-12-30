import 'package:flutter/material.dart';
import 'package:save_the_library/pages/home/bottom_views/books/books_view.dart';
import 'package:save_the_library/pages/home/bottom_views/home/home_view.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/libraries_view.dart';
import 'package:save_the_library/pages/home/bottom_views/news/news_view.dart';
import 'package:save_the_library/pages/home/bottom_views/setting/setting_view.dart';
import 'package:save_the_library/pages/home/bottom_views/bottom_view_widget.dart';
import 'package:save_the_library/pages/setting_page/setting_page.dart';
import 'package:save_the_library/widgets/flutter_transitions.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin<MyHomePage> {
  int _currentIndex = 0;
  List<Key> _viewKeys;
  List<AnimationController> _viewAnimators;

  /// every widget in viewList need to implement [BottomViewWidget] which provide _title_ and _icon_ required for creating [BottomNavigationItem]
  List<BottomViewWidget> _viewList = [
    HomeView(),
    NewsView(),
    LibrariesView(),
    BooksView(),
    SettingView(),
  ];

  @override
  void initState() {
    super.initState();

    // set animator for each view
    _viewAnimators = _viewList.map((view) {
      return AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 400),
      );
    }).toList();
    _viewAnimators[_currentIndex].value = 0.0;
    _viewKeys =
        List<Key>.generate(_viewList.length, (_) => GlobalKey()).toList();
  }

  @override
  void dispose() {
    for (var viewAnimator in _viewAnimators) {
      viewAnimator.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Tooltip(
              message: 'Use for Testing',
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPage()),
                  )
                },
              ),
            )
          ],
          title: _viewList[_currentIndex].bottomNaviBarItem.title,
          centerTitle: true,
        ),
        body: SafeArea(
          top: false,
          child: Stack(
            fit: StackFit.expand,
            children: _viewList.map((BottomViewWidget view) {
              // config for transition animation
              int viewIndex = _viewList.indexOf(view);
              AnimationController viewAnimator = _viewAnimators[viewIndex];

              final Widget viewWithTransition = FadeUpwardTransition(
                routeAnimation: viewAnimator,
                child: KeyedSubtree(key: _viewKeys[viewIndex], child: view),
              );

              if (viewIndex == _currentIndex) {
                viewAnimator.forward(from: 0.5);
                return viewWithTransition;
              } else {
                viewAnimator.reverse(from: 0.0);
                if (viewAnimator.isAnimating) {
                  return IgnorePointer(child: viewWithTransition);
                }
                return Offstage(child: viewWithTransition);
              }
            }).toList(),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            if (index != _currentIndex) {
              setState(() {
                this._currentIndex = index;
              });
            }
          },
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          iconSize: 25,
          selectedFontSize: 13,
          unselectedFontSize: 13,
          items: _viewList.map((view) {
            return view.bottomNaviBarItem;
          }).toList(),
        ),
      ),
    );
  }

  // Drawer buildDrawer() {
  //   return Drawer(
  //     child: ListView(
  //       children: <Widget>[
  //         UserAccountsDrawerHeader(
  //           currentAccountPicture: CircleAvatar(
  //             backgroundImage: AssetImage("images/savethelibrary.png"),
  //           ),
  //           accountName: Text(
  //             "Save the Library",
  //             style: TextStyle(color: Colors.black),
  //           ),
  //           accountEmail: Text(
  //             "savethelibrarymyanmar.org",
  //             style: TextStyle(color: Colors.black54),
  //           ),
  //           decoration: BoxDecoration(color: Colors.white),
  //         ),
  //         buildSubtitle('Categories'),
  //         buildDrawerItem(Icons.library_books, 'News', '/news'),
  //         buildDrawerItem(
  //             Icons.collections_bookmark, 'Libraries', '/libraries'),
  //         buildDrawerItem(Icons.book, 'Books', '/books'),
  //         buildDrawerItem(
  //             Icons.cloud_download, 'Resources Center', '/resources'),
  //         buildDrawerItem(Icons.video_library, 'Videos List', '/videos'),
  //         Divider(),
  //         buildSubtitle('About Application'),
  //         buildDrawerItem(Icons.info, 'About Us', '/about'),
  //         buildDrawerItem(Icons.mail, 'Contact Us', '/contact'),
  //         buildDrawerItem(Icons.developer_mode, 'Developers', '/developer'),
  //         Divider(),
  //         buildSubtitle('Communicate'),
  //         buildDrawerItem(Icons.share, 'Share'),
  //         buildDrawerItem(Icons.send, 'Send')
  //       ],
  //     ),
  //   );
  // }

  // Widget buildDrawerItem(IconData icon, String label, [String routeName]) {
  //   return ListTile(
  //     leading: Icon(icon),
  //     title: Text(
  //       label,
  //       style: TextStyle(),
  //     ),
  //     onTap: () => Navigator.of(context).pushNamed(routeName),
  //   );
  // }

  // Widget buildSubtitle(String text) {
  //   return ListTile(
  //     leading: Text(
  //       text,
  //       style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
  //     ),
  //   );
  // }
}
