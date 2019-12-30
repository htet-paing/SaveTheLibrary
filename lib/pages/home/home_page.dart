import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/pages/developers/information.dart';
import 'package:save_the_library/pages/home/bottom_views/books/books_view.dart';
import 'package:save_the_library/pages/home/bottom_views/books/books_view_model.dart';
import 'package:save_the_library/pages/home/bottom_views/home/home_view.dart';
import 'package:save_the_library/pages/home/bottom_views/home/home_view_model.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/libraries_view.dart';
import 'package:save_the_library/pages/home/bottom_views/libraries/libraries_view_model.dart';
import 'package:save_the_library/pages/home/bottom_views/news/news_view.dart';
import 'package:save_the_library/pages/home/bottom_views/news/news_view_model.dart';
import 'package:save_the_library/pages/home/bottom_views/bottom_view_widget.dart';
import 'package:save_the_library/pages/resource_center/resource_center_page.dart';
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
  ];

  @override
  void initState() {
    super.initState();

    _viewAnimators = _viewList.map((view) {
      return AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 400),
      );
    }).toList();

    _viewKeys = List<Key>.generate(
      _viewList.length,
      (_) => GlobalKey(),
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeViewModel>(
          create: (_) => HomeViewModel(),
        ),
        ChangeNotifierProvider<BooksViewModel>(
          create: (_) => BooksViewModel(),
        ),
        ChangeNotifierProvider<LibrariesViewModel>(
          create: (_) => LibrariesViewModel(),
        ),
        ChangeNotifierProvider<NewsViewModel>(
          create: (_) => NewsViewModel(),
        )
      ],
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).bottomAppBarColor,
            textTheme: Theme.of(context).appBarTheme.textTheme,
            leading: Builder(
              builder: (context) => IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
            title: _viewList[_currentIndex].bottomNaviBarItem.title,
            centerTitle: true,
          ),
          drawer: _buildDrawer(context),
          body: SafeArea(
            top: false,
            child: Stack(
              fit: StackFit.expand,
              children: _buildViewTransitions(),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            items: _viewList.map((view) {
              return view.bottomNaviBarItem;
            }).toList(),
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
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (var viewAnimator in _viewAnimators) {
      viewAnimator.dispose();
    }
    super.dispose();
  }

  List<Widget> _buildViewTransitions() {
    return _viewList.map((BottomViewWidget view) {
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
    }).toList();
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
              title: Text(
                "Save The Library",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              ),
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text("Resource Center"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResourceCenterPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.brightness_6),
              title: Text("Dark Mode"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BrightnessSwitcherDialog(
                      onSelectedTheme: (brightness) {
                        DynamicTheme.of(context).setBrightness(brightness);
                      },
                    );
                  },
                );
              },
            ),
            Divider(),
            _buildSubtitle(context, "About Us"),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Save The Library"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Contact Us"),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text("Developers"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileSixPage(sid)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context, String text) {
    return ListTile(
      leading: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).textTheme.subtitle.color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

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
}
