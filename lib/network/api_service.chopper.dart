// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiService;

  Future<Response<BuiltBookList>> getBooks([int page]) {
    final $url = '/get-books';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltBookList, BuiltBookList>($request);
  }

  Future<Response<BuiltBookQueriedList>> getBooksByAuthor(int authorId,
      [int page]) {
    final $url = '/get-books-by-author/${authorId}';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltBookQueriedList, BuiltBookQueriedList>($request);
  }

  Future<Response<BuiltBookQueriedList>> getBooksByCategory(int categoryId,
      [int page]) {
    final $url = '/get-books-by-category/${categoryId}';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltBookQueriedList, BuiltBookQueriedList>($request);
  }

  Future<Response<BuiltBookQueriedList>> getBooksByPublisher(int publisherId,
      [int page]) {
    final $url = '/get-book-by-publishers/${publisherId}';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltBookQueriedList, BuiltBookQueriedList>($request);
  }

  Future<Response<BuiltBookDetail>> getBookDetail(int id) {
    final $url = '/get-book-detail/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltBookDetail, BuiltBookDetail>($request);
  }

  Future<Response<BuiltBookAuthorList>> getBookAuthors([int page]) {
    final $url = '/get-book-authors';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltBookAuthorList, BuiltBookAuthorList>($request);
  }

  Future<Response<BuiltBookCategoryList>> getBookCategories([int page]) {
    final $url = '/get-book-categories';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltBookCategoryList, BuiltBookCategoryList>($request);
  }

  Future<Response<BuiltBookPublisherList>> getBookPublishers([int page]) {
    final $url = '/get-book-publishers';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<BuiltBookPublisherList, BuiltBookPublisherList>($request);
  }

  Future<Response<BuiltDivisions>> getDivisions() {
    final $url = '/get-state-division';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltDivisions, BuiltDivisions>($request);
  }

  Future<Response<BuiltLibraryList>> getLibraries([int page]) {
    final $url = '/get-libraries';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltLibraryList, BuiltLibraryList>($request);
  }

  Future<Response<BuiltLibraries>> getLibrariesByTownship(int townshipId,
      [int page]) {
    final $url = '/get-library/${townshipId}';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltLibraries, BuiltLibraries>($request);
  }

  Future<Response<BuiltLibraryDetail>> getLibraryDetail(int libraryId) {
    final $url = '/get-library-detail/${libraryId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltLibraryDetail, BuiltLibraryDetail>($request);
  }

  Future<Response<BuiltNewsList>> getNews([int page]) {
    final $url = '/get-news';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltNewsList, BuiltNewsList>($request);
  }

  Future<Response<BuiltNewsDetail>> getNewsDetail(int id) {
    final $url = '/get-new-detail/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltNewsDetail, BuiltNewsDetail>($request);
  }

  Future<Response<BuiltPdfList>> getPdfs([int page]) {
    final $url = '/get-pdfs';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltPdfList, BuiltPdfList>($request);
  }

  Future<Response<BuiltPdfList>> getPdfsByCategory(int categoryId, [int page]) {
    final $url = '/get-pdfs-by-category/${categoryId}';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltPdfList, BuiltPdfList>($request);
  }

  Future<Response<BuiltPdfCategoryList>> getPdfCategories([int page]) {
    final $url = '/get-pdf-categories';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltPdfCategoryList, BuiltPdfCategoryList>($request);
  }

  Future<Response<BuiltRandomQuote>> getRandomQuote() {
    final $url = '/get-random-quote';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltRandomQuote, BuiltRandomQuote>($request);
  }

  Future<Response<BuiltTownships>> getTownships(int stateId) {
    final $url = '/get-township/${stateId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltTownships, BuiltTownships>($request);
  }

  Future<Response<BuiltVideoList>> getVideos([int page]) {
    final $url = '/get-videos';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltVideoList, BuiltVideoList>($request);
  }

  Future<Response<BuiltVideoDetail>> getVideoDetail(String videoSlug) {
    final $url = '/get-videos/${videoSlug}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltVideoDetail, BuiltVideoDetail>($request);
  }

  Future<Response<BuiltAppVersion>> getVersion() {
    final $url = '/get-version';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltAppVersion, BuiltAppVersion>($request);
  }
}
