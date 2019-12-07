import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/library/library.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/library_detail/components/library_detail_body.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';

class LibraryDetailPage extends StatelessWidget {
  final int libraryId;
  const LibraryDetailPage({Key key, this.libraryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          'Library Detail',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
      ),
      body: NoConnectionHandler(
        child: FutureBuilder<Response<BuiltLibraryDetail>>(
          future: Provider.of<ApiService>(context).getLibraryDetail(libraryId),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return LibraryDetailBody(libraryDetail: snapshot.data.body);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
