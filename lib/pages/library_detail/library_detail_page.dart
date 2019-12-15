import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/library/library.dart';
import 'package:save_the_library/pages/library/components/google_map_widget.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';

import '../../network/api_service.dart';

class LibraryDetailPage extends StatefulWidget {

  final int libraryId;

  LibraryDetailPage({
    @required this.libraryId,
    Key key, }) : super(key: key);

  @override
  _LibraryDetailPageState createState() => _LibraryDetailPageState();
}

class _LibraryDetailPageState extends State<LibraryDetailPage> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Library Detail",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
      ),
      body: NoConnectionHandler(
        builder: (context) => FutureBuilder<Response<BuiltLibraryDetail>>(
          future: Provider.of<ApiService>(context).getLibraryDetail(this.widget.libraryId),

          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {

              BuiltLibraryDetail library = snapshot.data.body;
              return ListView(
                children: <Widget>[
                  GoogleMapWidget(
                    libraryId: widget.libraryId,
                    latitude: library.latitude,
                    longitude: library.longitude,
                  )
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  } 
}


