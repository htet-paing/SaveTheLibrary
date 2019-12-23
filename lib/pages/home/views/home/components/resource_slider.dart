import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/pdf/pdf.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/book_detail/book_detail_page.dart';
import 'package:save_the_library/pages/resource_center_detail/resource_center_detail_page.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class ResourceSlider extends StatefulWidget {
  ResourceSlider({Key key}) : super(key: key);

  @override
  _ResourceSliderState createState() => _ResourceSliderState();
}

class _ResourceSliderState extends State<ResourceSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: Container(
        child: SmartSlider(
          //BuiltPdfList
          title: "Resources Center",
          onGet: (_) => Provider.of<ApiService>(context).getPdfs(),
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
                        imageUrl:
                            'https://savethelibrarymyanmar.org/images/${pdfInfo.image}',
                        fit: BoxFit.cover,
                        height:
                            230.0, //change according to the width of the image cards
                      ),
                      Text('${pdfInfo.pdfTitle}')
                    ],
                  ),
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PdfListPage(
                    //not finished
                    pdfId: pdfInfo.pdfId,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
