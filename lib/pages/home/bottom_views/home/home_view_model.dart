import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/models/api/book/book.dart';
import 'package:save_the_library/models/api/library/built_library_list.dart';
import 'package:save_the_library/models/network_failure_exception.dart';
import 'package:save_the_library/models/api/news/news.dart';
import 'package:save_the_library/models/api/pdf/built_pdf_list.dart';
import 'package:save_the_library/models/api/video/built_video_list.dart';
import 'package:save_the_library/network/api_service.dart';

class HomeViewModel extends BaseModel {
  List<BuiltNews> _newsList;
  List<BuiltNews> get newsList => _newsList;
  void _setNewsList(List<BuiltNews> newsList) {
    _newsList = newsList;
    notifyListeners();
  }

  List<BuiltBook> _bookList;
  List<BuiltBook> get bookList => _bookList;
  void _setBookList(List<BuiltBook> bookList) {
    _bookList = bookList;
    notifyListeners();
  }

  List<BuiltPdf> _pdfList;
  List<BuiltPdf> get pdfList => _pdfList;
  void _setPdfList(List<BuiltPdf> pdfList) {
    _pdfList = pdfList;
    notifyListeners();
  }

  List<BuiltLibrary> _libraryList;
  List<BuiltLibrary> get libraryList => _libraryList;
  void _setLibraryList(List<BuiltLibrary> libraryList) {
    _libraryList = libraryList;
    notifyListeners();
  }

  List<BuiltVideo> _videoList;
  List<BuiltVideo> get videoList => _videoList;
  void _setVideoList(List<BuiltVideo> videoList) {
    _videoList = videoList;
    notifyListeners();
  }

  HomeViewModel() {
    this.fetchData();
  }

  @override
  Future fetchData() async {
    setDataState(DataState.loading);

    try {
      await ApiService.fetch(() => apiService.getNews()).then((value) {
        this._setNewsList(value.body.data.toList());
      });
      await ApiService.fetch(() => apiService.getBooks()).then((value) {
        this._setBookList(value.body.data.toList());
      });
      await ApiService.fetch(() => apiService.getPdfs()).then((value) {
        this._setPdfList(value.body.data.toList());
      });
      await ApiService.fetch(() => apiService.getLibraries()).then((value) {
        this._setLibraryList(value.body.data.toList());
      });
      await ApiService.fetch(() => apiService.getVideos()).then((value) {
        this._setVideoList(value.body.data.toList());
      });
      // for testing
      // throw NoConnectionException();
      // throw Http404Exception();
      // throw BadResponseException();
    } on NoConnectionException catch (e) {
      setError(e);
    } finally {
      setDataState(DataState.loaded);
    }
  }
}
