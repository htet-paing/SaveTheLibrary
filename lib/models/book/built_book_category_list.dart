import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/generics.dart';

part 'built_book_category_list.g.dart';

/// sample
///
/// [BuiltBookCategoryList] ( implements [GenericList] )
/// {
///   total: ...,
///   per_page: ...,
///   current_page: ...,
///   .
///   .
///   .
///   data: [
///     [BulitBookCategory],
///     [BuiltBookCategory],
///     [BuiltBookCategory],...
///   ]
/// }

abstract class BuiltBookCategoryList
    implements
        GenericList,
        Built<BuiltBookCategoryList, BuiltBookCategoryListBuilder> {
  @override
  BuiltList<BuiltBookCategory> get data;

  BuiltBookCategoryList._();
  factory BuiltBookCategoryList([updates(BuiltBookCategoryListBuilder b)]) =
      _$BuiltBookCategoryList;
  static Serializer<BuiltBookCategoryList> get serializer =>
      _$builtBookCategoryListSerializer;
}

abstract class BuiltBookCategory
    implements Built<BuiltBookCategory, BuiltBookCategoryBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'name_mm')
  String get nameMM;

  @nullable
  @BuiltValueField(wireName: 'name_en')
  String get nameEN;

  @nullable
  @BuiltValueField(wireName: 'book_count')
  int get bookCount;

  BuiltBookCategory._();

  factory BuiltBookCategory([updates(BuiltBookCategoryBuilder b)]) =
      _$BuiltBookCategory;

  static Serializer<BuiltBookCategory> get serializer =>
      _$builtBookCategorySerializer;
}
