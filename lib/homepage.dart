import 'package:flutter/material.dart';

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
              icon: Icon(Icons.search,
                color: Colors.black,),
            )
          ],
          title: Text('Save the Library',style: TextStyle(
            color: Color(0xFFF9A825,),)
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/savethelibrary.png"),
                ),
                accountName: Text("Save the Library", style: TextStyle(
                    color: Colors.black
                ),),
                accountEmail: Text("savethelibrarymyanmar.org", style: TextStyle(
                    color: Colors.black54
                ),),
                decoration: BoxDecoration(
                    color: Colors.white
                ) ,

              ),


              ListTile(
                leading: Text("Categories", style: TextStyle(
                    color: Colors.black45,
                  fontWeight: FontWeight.bold
                ),),
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("News",style: TextStyle(
                ),),
                onTap: () => Navigator.of(context).pushNamed("/newspage"),

              ),
              ListTile(
                leading: Icon(Icons.library_books),
                title: Text("Libraries",style: TextStyle(
                ),),
                onTap: () => Navigator.of(context).pushNamed("/librariespage"),
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                title: Text("Reviews",style: TextStyle(
                ),),

              ),
              ListTile(
                leading: Icon(Icons.cloud_download),
                title: Text("Resources Center",style: TextStyle(
                ),),

              ),
              ListTile(
                leading: Icon(Icons.video_library),
                title: Text("Videos List",style: TextStyle(
                ),),

              ),
              Divider(color: Colors.black26,),
              ListTile(
                leading: Text("About Application", style: TextStyle(
                    color: Colors.black45,
                  fontWeight: FontWeight.bold
                ),),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("About us",style: TextStyle(
                ),),
                onTap: () => Navigator.of(context).pushNamed("/about"),

              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contact Us",style: TextStyle(
                ),),
                onTap: () => Navigator.of(context).pushNamed("/contact"),

              ),
              ListTile(
                leading: Icon(Icons.developer_mode),
                title: Text("Developers",style: TextStyle(
                ),),
                onTap: () => Navigator.of(context).pushNamed("/developer"),

              ),
              Divider(color: Colors.black26,),
              ListTile(
                leading: Text("Communicate", style: TextStyle(
                    color: Colors.black45,
                  fontWeight: FontWeight.bold
                ),),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share",style: TextStyle(
                ),),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Send",style: TextStyle(
                ),),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
