import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'package:save_the_library/models/api/book/book.dart';
import 'package:save_the_library/models/api/division/built_division.dart';
import 'package:save_the_library/models/api/library/library.dart';
import 'package:save_the_library/models/api/news/news.dart';
import 'package:save_the_library/models/api/pdf/pdf.dart';
import 'package:save_the_library/models/api/quote/built_random_quote.dart';
import 'package:save_the_library/models/api/township/built_township_list.dart';
import 'package:save_the_library/models/api/video/video.dart';
import 'package:save_the_library/models/api/built_app_version.dart';
import 'package:save_the_library/models/api/built_media.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  // Books
  BuiltBookList,
  BuiltBook,
  BuiltBookDetail,
  BuiltBookAuthor,
  BuiltBookAuthorList,
  BuiltBookCategory,
  BuiltBookCategoryList,
  BuiltBookPublisher,
  BuiltBookPublisherList,
  BuiltBookQueried,
  BuiltBookQueriedList,
  // Divisions
  BuiltDivisions,
  BuiltDivision,
  // Library
  BuiltLibraries,
  BuiltLibraryList,
  BuiltLibrary,
  BuiltLibraryDetail,
  // News
  BuiltNewsList,
  BuiltNews,
  BuiltNewsDetail,
  // PDFs
  BuiltPdfList,
  BuiltPdf,
  BuiltPdfCategoryList,
  BuiltPdfCategory,
  // Quote
  BuiltRandomQuote,
  BuiltQuote,
  // Township
  BuiltTownships,
  BuiltTownshipList,
  BuiltTownship,
  // Video
  BuiltVideoList,
  BuiltVideo,
  BuiltVideoDetail,
  BuiltVideoAuthor,
  BuiltVideoUser,
  BuiltVideoTag,
  BuiltPivot,
  // Others
  BuiltMedia,
  BuiltAppVersion,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
