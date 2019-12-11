import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

///
/// all the [Built____List] class has same data structure
///
/// {
///   total: ... ,
///   perPage: ... ,
///   currentPage: ... ,
///   lastPage: ... ,
///   nextPageUrl: ... ,
///   prevPateUrl: ... ,
///   from: ... ,
///   to: ... ,
///   data: [
///     .
///     .
///     .
///   ]
/// }
///
/// therefore every [Built____List] class is implemented with [GenericList] class
///

abstract class GenericList {
  @nullable
  int get total;

  @nullable
  @BuiltValueField(wireName: 'per_page')
  int get perPage;

  @nullable
  @BuiltValueField(wireName: 'current_page')
  int get currentPage;

  @nullable
  @BuiltValueField(wireName: 'last_page')
  int get lastPage;

  @nullable
  @BuiltValueField(wireName: 'next_page_url')
  String get nextPageUrl;

  @nullable
  @BuiltValueField(wireName: 'prev_page_url')
  String get prevPageUrl;

  @nullable
  int get from;

  @nullable
  int get to;

  // override this to get specific type of BuiltList
  BuiltList<dynamic> get data;
}
