import 'package:save_the_library/models/base_model.dart';
import 'package:save_the_library/models/api/book/book.dart';
import 'package:save_the_library/models/network_failure_exception.dart';
import 'package:save_the_library/network/api_service.dart';

class BooksViewModel extends BaseModel {
  List<BuiltBookAuthor> bookAuthorList = [];
  void setBookAuthorList(List<BuiltBookAuthor> bookAuthorList) {
    this.bookAuthorList = bookAuthorList;
    notifyListeners();
  }

  List<BuiltBookCategory> bookCategoryList = [];
  void setBookCategoryList(List<BuiltBookCategory> bookCategoryList) {
    this.bookCategoryList = bookCategoryList;
    notifyListeners();
  }

  List<BuiltBookPublisher> bookPublisherList = [];
  void setBookPublisherList(List<BuiltBookPublisher> bookPublisherList) {
    this.bookPublisherList = bookPublisherList;
    notifyListeners();
  }

  List<BuiltBook> bookList = [];
  void setBookList(List<BuiltBook> bookList) {
    this.bookList = bookList;
    notifyListeners();
  }

  BooksViewModel() {
    this.fetchData();
  }

  @override
  Future fetchData() async {
    setDataState(DataState.loading);

    try {
      await ApiService.fetch(() => apiService.getBookAuthors()).then((value) {
        this.setBookAuthorList(value.body.data.toList());
      });
      await ApiService.fetch(() => apiService.getBookCategories())
          .then((value) {
        this.setBookCategoryList(value.body.data.toList());
      });
      await ApiService.fetch(() => apiService.getBookPublishers())
          .then((value) {
        this.setBookPublisherList(value.body.data.toList());
      });
      await ApiService.fetch(() => apiService.getBooks()).then((value) {
        this.setBookList(value.body.data.toList());
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
