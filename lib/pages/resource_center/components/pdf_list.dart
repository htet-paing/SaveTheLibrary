import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/pdf/built_pdf_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class PdfList extends StatelessWidget {
  const PdfList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoConnectionHandler(
      child: SmartList<BuiltPdfList>(
        onGet: (page) => Provider.of<ApiService>(context).getPdfs(page),
        listGetter: (body) => body.data.toList(),
        itemBuilder: (context, item) {
          BuiltPdf pdf = item as BuiltPdf;
          return Card(
            child: ListTile(
              title: Text(pdf.pdfTitle),
            ),
          );
        },
      ),
    );
  }
}
