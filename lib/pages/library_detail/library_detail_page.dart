import 'dart:io';
import 'package:html/dom.dart' as dom;
import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/library/library.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/library_detail/components/library_detail_body.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';

class LibraryDetailPage extends StatelessWidget {
  final int libraryId;
  final String libraryImage;
  final String libraryName;
  final String libraryDescription;
  final String libraryLatitute;
  final String libraryLongitude;

  const LibraryDetailPage({Key key, @required this.libraryId, this.libraryLatitute, this.libraryLongitude, this.libraryImage, this.libraryName, this.libraryDescription}) : super(key: key);

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
          future: Provider.of<ApiService>(context)
              .getLibraryDetail(libraryId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(children: <Widget>[
                Container(
                  child: Image.network(
                    'https://savethelibrarymyanmar.org/images/${snapshot.data.body.image}',
                    fit: BoxFit.cover,
                    width: 1000.0,
                    height: 200.0,
                  ),
                ),
                // Text Title under Image network 
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "${snapshot.data.body.name}",
                    style: TextStyle(fontFamily: 'Pyidaungsu', fontSize: 17.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
                      child: Text(
                        "Save the Library",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
                      child: Text(
                        "7 December, 2019",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Expanded(child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Html(
                      padding: EdgeInsets.all(10.0),
                      data: "${snapshot.data.body.description}",
                      customTextAlign: (dom.Node node) {
                        if (node is dom.Element) {
                          switch (node.localName) {
                            case "p": 
                            return TextAlign.justify;
                          }
                        }
                        return null;
                      },
                      customTextStyle: (dom.Node node, TextStyle baseStyle) {
                        if (node is dom.Element) {
                          switch (node.localName) {
                            case "p":
                            return baseStyle .merge(TextStyle(fontFamily: 'Pyidaungsu'));
                          }
                        }
                        return baseStyle;
                      },
                    ),
                  ],
                ),),
                Expanded(child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Html(
                      padding: EdgeInsets.all(05.0),
                      data: "${snapshot.data.body.phone}",
                      customTextAlign: (dom.Node node) {
                        if (node is dom.Element) {
                          switch (node.localName) {
                            case "p": 
                            return TextAlign.justify;
                          }
                        }
                        return null;
                      },
                      customTextStyle: (dom.Node node, TextStyle baseStyle) {
                        if (node is dom.Element) {
                          switch (node.localName) {
                            case "p":
                            return baseStyle .merge(TextStyle(fontFamily: 'Pyidaungsu'));
                          }
                        }
                        return baseStyle;
                      },
                    ),
                  ],
                ),),
              ],
              );
            
            } else {
              return Center(child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
