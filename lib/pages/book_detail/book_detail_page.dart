import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/book.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:html/dom.dart' as dom;

class BookDetailPage extends StatefulWidget {

  final int bookId;
  final String bookName;
  final String bookAuthorName;
  final String bookCategorynameMM;
  final String bookCateogrynameEN;
  final String bookPublisherAddress;
  final String featureImagePath;
  final String thumbImagePath;

  const BookDetailPage({
    Key key,@required 
    this.bookId,
    this.bookName,
    this.bookAuthorName,
    this.bookCategorynameMM,
    this.bookCateogrynameEN,
    this.bookPublisherAddress,
    this.featureImagePath,
    this.thumbImagePath
    }) : super(key: key);

  @override
  _BookDetailPageState createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Detail now library'),
      ),
      body: NoConnectionHandler(
        builder: (context) => FutureBuilder<Response<BuiltBookDetail>>(
          future: Provider.of<ApiService>(context)
              .getBookDetail(this.widget.bookId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(children: <Widget>[
                Container(
                  child: Image.network(
                    'https://savethelibrarymyanmar.org/images/${snapshot.data.body.image}',
                    fit: BoxFit.contain,
                    width: 1000.0,
                    height: 300.0,
                    
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "${snapshot.data.body.bookName}",
                    style: TextStyle(fontFamily: 'Pyidaungsu', fontSize: 17.0, color: Colors.indigo),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 10.0, bottom: 10.0),
                      child: Text(
                        "Save the Library",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 10.0, bottom: 10.0),
                      child: Text(
                        "21 November, 2019",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
                // Expanded(
                //   child: ListView(
                //     shrinkWrap: true,
                //     children: <Widget>[
                //       Html(
                //         padding: EdgeInsets.all(10.0),
                //         data: "${snapshot.data.body.bookCategoryNameMM}",
                //         customTextAlign: (dom.Node node) {
                //           if (node is dom.Element) {
                //             switch (node.localName) {
                //               case "p":
                //                 return TextAlign.justify;
                //             }
                //           }
                //           return null;
                //         },
                //         customTextStyle: (dom.Node node, TextStyle baseStyle) {
                //           if (node is dom.Element) {
                //             switch (node.localName) {
                //               case "p":
                //                 return baseStyle
                //                     .merge(TextStyle(fontFamily: 'Pyidaungsu'));
                //             }
                //           }
                //           return baseStyle;
                //         },
                //       ),
                //     ],
                //   ),
                // )
              ]);
//              return Center(
//                child: Text(snapshot.data.body.postTitle),
//              );
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