import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/api/pdf/pdf.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class PdfCategoryList extends StatelessWidget {
  const PdfCategoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoConnectionHandler(
      builder: (conext) => SmartList<BuiltPdfCategoryList>(
        onGet: (page) =>
            Provider.of<ApiService>(context).getPdfCategories(page),
        listGetter: (body) => body.data.toList(),
        itemBuilder: (context, item) {
          BuiltPdfCategory pdfCategory = item as BuiltPdfCategory;
          return Card(
            child: ListTile(
              title: Text(pdfCategory.nameMM),
            ),
          );
        },
      ),
    );
  }
}
