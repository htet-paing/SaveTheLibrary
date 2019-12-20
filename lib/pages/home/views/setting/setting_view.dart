import 'package:flutter/material.dart';
import 'package:save_the_library/pages/developers/assets.dart';
import 'package:save_the_library/pages/developers/information.dart';
import 'package:save_the_library/pages/home/views/view_widget.dart';
import 'package:save_the_library/pages/resource_center/resource_center_page.dart';

class SettingView extends StatelessWidget implements ViewWidget {
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
                      builder: (context) => ResourceCenterPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text("Dark Mode"),
            trailing: Switch(value: true, onChanged: null),
          ),
          buildSubtitle("About Us"),
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
                context, MaterialPageRoute(builder: (context) => ProfileSixPage(sid))
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Icon get icon => Icon(Icons.settings);

  @override
  Widget get title => Text('Setting');

  Widget buildSubtitle(String text) {
    return ListTile(
      leading: Text(
        text,
        style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
      ),
    );
  }
}
