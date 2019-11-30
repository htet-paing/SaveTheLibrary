import 'package:flutter/material.dart';

class LibrariesPage extends StatefulWidget {
  @override
  _LibrariesPageState createState() => _LibrariesPageState();
}

class _LibrariesPageState extends State<LibrariesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Libraries',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text('News Page'),
      ),
    );
  }
}
