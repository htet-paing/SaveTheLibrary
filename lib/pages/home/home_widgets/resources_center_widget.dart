import 'package:cached_network_image/cached_network_image.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/pdf/pdf.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/book_detail/book_detail_page.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class ResopurcesCenterWidget extends StatefulWidget {
  ResopurcesCenterWidget({Key key}) : super(key: key);

  @override
  _ResopurcesCenterWidgetState createState() => _ResopurcesCenterWidgetState();
}

class _ResopurcesCenterWidgetState extends State<ResopurcesCenterWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: Container(
        child: FutureBuilder<Response<BuiltPdfList>>(
          future: Provider.of<ApiService>(context).getPdfs(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done){
              return SmartSlider(//BuiltPdfList
                title: "Resources Center",
                onGet: () => snapshot,
                listGetter: (body) => body.data.toList(),
                itemBuilder: (context, item) {
                  BuiltPdf pdfInfo = item as BuiltPdf;
                  return InkWell(
                    child: Container(
                      width: 160.0,              
                    //TODO: custom card and container's properties goes here
                      child: Card(
                        child: Wrap(
                          children: <Widget>[
                            CachedNetworkImage(
                              imageUrl: 'https://savethelibrarymyanmar.org/images/${pdfInfo.image}',
                              fit: BoxFit.cover,
                              height: 230.0,//change according to the width of the image cards
                            ),
                            Text('${pdfInfo.pdfTitle}')
                          ],
                        ),
                      ),
                    ),
                    onTap: () => Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context) => BookDetailPage(//not finished
                          bookId: pdfInfo.pdfId,
                        ),
                      ),
                    ),
                  );
                }
              );
            } else {
                return SizedBox(
                  height: 50.0,
                  width: 50.0,
                  child: Center(child: CircularProgressIndicator())
                );
            }
          }
        ),
      ),
    );
  }
}