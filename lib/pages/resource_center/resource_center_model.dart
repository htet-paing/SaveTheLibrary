import 'package:save_the_library/models/api/pdf/built_pdf_list.dart';
import 'package:save_the_library/models/api/pdf/pdf.dart';
import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/models/network_failure_exception.dart';

class ResourceCenterModel extends BaseModel {
  List<BuiltPdf> pdfList;
  void setPdfList(List<BuiltPdf> pdfList) {
    this.pdfList = pdfList;
    notifyListeners();
  }

  List<BuiltPdfCategory> pdfCategoryList;
  void setPdfCategoryList(List<BuiltPdfCategory> pdfCategoryList) {
    this.pdfCategoryList = pdfCategoryList;
    notifyListeners();
  }

  ResourceCenterModel() {
    this.fetchData();
  }

  @override
  Future onGet() async {
    await ApiService.fetch(() => apiService.getPdfs()).then((response) {
      setPdfList(response.body.data.toList());
    });
    await ApiService.fetch(() => apiService.getPdfCategories())
        .then((response) {
      setPdfCategoryList(response.body.data.toList());
    });
  }
}
