import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/connectivity_state.dart';
import 'package:save_the_library/network/api_service.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () => {},
              )
            ],
            title: Text('Save the Library'),
            centerTitle: true,
          ),
          drawer: buildDrawer()),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/savethelibrary.png"),
            ),
            accountName: Text(
              "Save the Library",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "savethelibrarymyanmar.org",
              style: TextStyle(color: Colors.black54),
            ),
            decoration: BoxDecoration(color: Colors.white),
          ),
          buildSubtitle('Categories'),
          buildDrawerItem(Icons.library_books, 'News', '/news'),
          buildDrawerItem(
              Icons.collections_bookmark, 'Libraries', '/libraries'),
          buildDrawerItem(Icons.book, 'Books', '/books'),
          buildDrawerItem(
              Icons.cloud_download, 'Resources Center', '/resources'),
          buildDrawerItem(Icons.video_library, 'Videos List', '/videos'),
          Divider(),
          buildSubtitle('About Application'),
          buildDrawerItem(Icons.info, 'About Us', '/about'),
          buildDrawerItem(Icons.mail, 'Contact Us', '/contact'),
          buildDrawerItem(Icons.developer_mode, 'Developers', '/developer'),
          Divider(),
          buildSubtitle('Communicate'),
          buildDrawerItem(Icons.share, 'Share'),
          buildDrawerItem(Icons.send, 'Send')
        ],
      ),
    );
  }

  Widget buildDrawerItem(IconData icon, String label, [String routeName]) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        label,
        style: TextStyle(),
      ),
      onTap: () => Navigator.of(context).pushNamed(routeName),
    );
  }

  Widget buildSubtitle(String text) {
    return ListTile(
      leading: Text(
        text,
        style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
      ),
    );
  }
}
