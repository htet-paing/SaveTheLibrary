import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:save_the_library/pages/developers/assets.dart';
import 'package:save_the_library/pages/developers/information.dart';
import 'package:save_the_library/pages/home/bottom_views/bottom_view_widget.dart';
import 'package:save_the_library/pages/resource_center/resource_center_page.dart';

class SettingView extends StatelessWidget implements BottomViewWidget {
  const SettingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
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
            trailing: Switch(value: true, onChanged: null),
          ),
          buildSubtitle(context, "About Us"),
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
    );
  }

  Widget buildSubtitle(BuildContext context, String text) {
    return ListTile(
      leading: Text(
        text,
        style: TextStyle(
            color: Theme.of(context).textTheme.subtitle.color,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  BottomNavigationBarItem get bottomNaviBarItem => BottomNavigationBarItem(
        icon: Icon(OMIcons.settings),
        activeIcon: Icon(Icons.settings),
        title: Text('Settings'),
      );
}
