import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;
import 'package:save_the_library/models/network_failure_exception.dart';
import 'package:save_the_library/network/built_value_converter.dart';
import 'package:save_the_library/network/interceptors/api_header_interceptor.dart';

import 'package:save_the_library/models/api/book/book.dart';
import 'package:save_the_library/models/api/built_app_version.dart';
import 'package:save_the_library/models/api/division/built_division.dart';
import 'package:save_the_library/models/api/library/library.dart';
import 'package:save_the_library/models/api/news/news.dart';
import 'package:save_the_library/models/api/pdf/pdf.dart';
import 'package:save_the_library/models/api/quote/built_random_quote.dart';
import 'package:save_the_library/models/api/township/built_township_list.dart';
import 'package:save_the_library/models/api/video/video.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class ApiService extends ChopperService {
  static Future<T> fetch<T>(Future<T> Function() dataGetter) async {
    try {
      final responseBody = await dataGetter();
      return responseBody;
    } on SocketException {
      throw NoConnectionException();
    } on HttpException {
      throw Http404Exception();
    } on FormatException {
      throw BadResponseException();
    }
  }

  // Books
  @Get(path: 'get-books')
  Future<Response<BuiltBookList>> getBooks([@Query() int page]);

  @Get(path: 'get-books-by-author/{authorId}')
  Future<Response<BuiltBookQueriedList>> getBooksByAuthor(@Path() int authorId,
      [@Query() int page]);

  @Get(path: 'get-books-by-category/{categoryId}')
  Future<Response<BuiltBookQueriedList>> getBooksByCategory(
      @Path() int categoryId,
      [@Query() int page]);

  @Get(path: 'get-book-by-publishers/{publisherId}')
  Future<Response<BuiltBookQueriedList>> getBooksByPublisher(
      @Path() int publisherId,
      [@Query() int page]);

  @Get(path: 'get-book-detail/{id}')
  Future<Response<BuiltBookDetail>> getBookDetail(@Path() int id);

  @Get(path: 'get-book-authors')
  Future<Response<BuiltBookAuthorList>> getBookAuthors([@Query() int page]);

  @Get(path: 'get-book-categories')
  Future<Response<BuiltBookCategoryList>> getBookCategories(
      [@Query() int page]);

  @Get(path: 'get-book-publishers')
  Future<Response<BuiltBookPublisherList>> getBookPublishers(
      [@Query() int page]);

  // Division
  @Get(path: 'get-state-division')
  Future<Response<BuiltDivisions>> getDivisions();

  // Library
  @Get(path: 'get-libraries')
  Future<Response<BuiltLibraryList>> getLibraries([@Query() int page]);

  @Get(path: 'get-library/{townshipId}')
  Future<Response<BuiltLibraries>> getLibrariesByTownship(
      @Path() int townshipId,
      [@Query() int page]);

  @Get(path: 'get-library-detail/{libraryId}')
  Future<Response<BuiltLibraryDetail>> getLibraryDetail(@Path() int libraryId);

  // News
  @Get(path: 'get-news')
  Future<Response<BuiltNewsList>> getNews([@Query() int page]);

  @Get(path: 'get-new-detail/{id}')
  Future<Response<BuiltNewsDetail>> getNewsDetail(@Path() int id);

  // PDFs
  @Get(path: 'get-pdfs')
  Future<Response<BuiltPdfList>> getPdfs([@Query() int page]);

  @Get(path: 'get-pdfs-by-category/{categoryId}')
  Future<Response<BuiltPdfList>> getPdfsByCategory(@Path() int categoryId,
      [@Query() int page]);

  @Get(path: 'get-pdf-categories')
  Future<Response<BuiltPdfCategoryList>> getPdfCategories([@Query() int page]);

  // Quote
  @Get(path: 'get-random-quote')
  Future<Response<BuiltRandomQuote>> getRandomQuote();

  // Township
  @Get(path: 'get-township/{stateId}')
  Future<Response<BuiltTownships>> getTownships(@Path() int stateId);

  // Video
  @Get(path: 'get-videos')
  Future<Response<BuiltVideoList>> getVideos([@Query() int page]);

  @Get(path: 'get-videos/{videoSlug}')
  Future<Response<BuiltVideoDetail>> getVideoDetail(@Path() String videoSlug);

  // App Version
  @Get(path: 'get-version')
  Future<Response<BuiltAppVersion>> getVersion();

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://savethelibrarymyanmar.org/api',
      services: [
        _$ApiService(),
      ],
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        ApiHeaderInterceptor(),
      ],
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 5),
      ),
    );
    return _$ApiService(client);
  }
}
