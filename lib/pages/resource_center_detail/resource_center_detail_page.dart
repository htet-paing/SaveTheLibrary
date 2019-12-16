import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/news/news.dart';
import 'package:save_the_library/models/pdf/pdf.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:html/dom.dart' as dom;

class PdfListPage extends StatefulWidget {
  final int pdfId;
  final String pdfTitle;
  final String downloadLink;
  final String pdfSource;
  final String featureImagePath;
  final String categoryMM;
  final String categoryEN;

  PdfListPage({
    @required 
    this.pdfId,
    this.pdfTitle,
    this.downloadLink,
    this.pdfSource,
    this.featureImagePath,
    this.categoryMM,
    this.categoryEN,
    Key key}) : super(key: key);
    @override
  _PdfListPageState createState() => _PdfListPageState();
}

class _PdfListPageState extends State<PdfListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resource Details Detail'),
      ),
      body: NoConnectionHandler(
        builder: (context) => FutureBuilder<Response<BuiltPdfList>>(
          future: Provider.of<ApiService>(context)
              .getPdfs(this.widget.pdfId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(children: <Widget>[
                Container(
                  child: Image.network(
                    'https://savethelibrarymyanmar.org/images/${snapshot.data.body.total}',
                    fit: BoxFit.cover,
                    width: 1000.0,
                    height: 200.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Myanmar Story Teller's Forum စိန်ရတုခန်းမ။ ရန်ကုန်တက္ကသိုလ် မနက် ၈နာရီခွဲ",
                    style: TextStyle(fontFamily: 'Pyidaungsu', fontSize: 17.0),
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
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Html(
                        padding: EdgeInsets.all(10.0),
                        data: "${snapshot.data.body}",
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
                                return baseStyle
                                    .merge(TextStyle(fontFamily: 'Pyidaungsu'));
                            }
                          }
                          return baseStyle;
                        },
                      ),
                    ],
                  ),
                )
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
// end here








// class PdfListPage extends StatefulWidget {

//   final int pdfId;
//   final String pdfTitle;
//   final String downloadLink;
//   final String pdfSource;
//   final String featureImagePath;
//   final String categoryMM;
//   final String categoryEN;

//   PdfListPage({
//     @required 
//     this.pdfId,
//     this.pdfTitle,
//     this.downloadLink,
//     this.pdfSource,
//     this.featureImagePath,
//     this.categoryMM,
//     this.categoryEN,
//     Key key}) : super(key: key);

//   @override
//   _PdfListPageState createState() => _PdfListPageState();
// }

// class _PdfListPageState extends State<PdfListPage> {

//   @override
//   Widget build(BuildContext context) {
  
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         centerTitle: true,
//         title: Text(
//           "Resource Center Detail Page",
//           style: TextStyle(color: Colors.black87),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       body: NoConnectionHandler(
//         builder: (context) => FutureBuilder<Response<BuiltPdfList>>(
//           future: Provider.of<ApiService>(context).getPdfs(),
//           builder: (context, snapshot) {
//             if(snapshot.connectionState == ConnectionState.done){
              
//               BuiltPdfList pdfList = snapshot.data.body;

//               return GridView(
//                 children: <Widget>[
//                   GridView.builder(
    
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//     itemBuilder: (context, index) {
//       return Image.network("https://savethelibrarymyanmar.org/images/${snapshot.data.body}",
//         fit: BoxFit.fitHeight,
//       );
//     },
//   ),
//                 ],
//               );
//             }
//           }
//         ),
//       ),
//     );
//   } 
// }


///
///



