import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/pages/home/views/books/books_view.dart';
import 'package:save_the_library/pages/home/views/home/components/resource_slider.dart';
import 'package:save_the_library/pages/home/views/home/home_view.dart';
import 'package:save_the_library/pages/home/views/libraries/libraries_view.dart';
import 'package:save_the_library/pages/home/views/news/news_view.dart';
import 'package:save_the_library/pages/home/views/resource_center/resource_center_view.dart';
import 'package:save_the_library/pages/home/views/videos/videos_view.dart';
import 'package:save_the_library/pages/home/views/view_widget.dart';
import 'package:save_the_library/pages/home/views/resource_center/components/pdf_list.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin<MyHomePage> {
  int _currentIndex = 0;
  List<Key> _viewKeys;
  List<AnimationController> _viewAnimators;

  /// every widget in viewList need to implement [ViewWidget] which provide _title_ and _icon_ required for creating [BottomNavigationItem]
  List<ViewWidget> _viewList = [
    HomeView(),
    NewsView(),
    LibrariesView(),
    BooksView(),
    VideosView(),
    PdfView(),
  ];

  @override
  void initState() {
    super.initState();

    // set animator for each view
    _viewAnimators = _viewList.map((view) {
      return AnimationController(
          vsync: this, duration: Duration(milliseconds: 400));
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            Tooltip(
              message: 'Use for Testing',
              child: IconButton(
                icon: Icon(
                  
                  Icons.open_in_new,
                  color: Colors.black,
                ),
                onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => PdfList()))},
              ),
            )
          ],
          title: _viewList[_currentIndex].title,
          centerTitle: true,
        ),
        body: SafeArea(
          top: false,
          child: Stack(
            fit: StackFit.expand,
            children: _viewList.map((ViewWidget view) {
              // config for transition animation
              int viewIndex = _viewList.indexOf(view);
              AnimationController viewAnimator = _viewAnimators[viewIndex];

              final Widget viewWithTransition = FadeTransition(
                opacity: viewAnimator.drive<double>(
                  CurveTween(curve: Curves.fastOutSlowIn),
                ),
                child: KeyedSubtree(
                  key: _viewKeys[viewIndex],
                  child: view,
                ),
              );

              if (viewIndex == _currentIndex) {
                viewAnimator.forward();
                return viewWithTransition;
              } else {
                viewAnimator.reverse();
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
            setState(() {
              this._currentIndex = index;
            });
          },
          items: _viewList.map((view) {
            return BottomNavigationBarItem(icon: view.icon, title: view.title);
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
