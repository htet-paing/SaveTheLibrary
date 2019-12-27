import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/api/pdf/pdf.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/resource_center/resource_center_model.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';
import 'package:save_the_library/widgets/smart_list.dart';

class PdfCategoryList extends StatelessWidget {
  const PdfCategoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<ResourceCenterModel, ApiService>(
      builder: (context, resourceCenterModel, apiService, _) {
        return SmartList<BuiltPdfCategoryList>(
          items: resourceCenterModel.pdfCategoryList,
          onGet: (page) => apiService.getPdfCategories(page),
          onLoaded: (body) {
            resourceCenterModel.setPdfCategoryList(
              resourceCenterModel.pdfCategoryList + List.from(body.data),
            );
          },
          itemBuilder: (context, item) {
            BuiltPdfCategory pdfCategory = item as BuiltPdfCategory;
            return Card(
              child: ListTile(
                title: Text(pdfCategory.nameMM),
              ),
            );
          },
        );
      },
    );
  }
}
