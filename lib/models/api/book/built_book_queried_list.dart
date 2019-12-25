import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/api/built_media.dart';
import 'package:save_the_library/models/api/generics.dart';

part 'built_book_queried_list.g.dart';

/// sample
///
/// [BuiltBookQueriedList] ( implements [GenericList] )
/// {
///   total: ...,
///   per_page: ...,
///   current_page: ...,
///   .
///   .
///   .
///   data: [
///     [BulitBookQueried],
///     [BuiltBookQueried],
///     [BuiltBookQueried],...
///   ]
/// }
///
/// you get [BuiltBookQueriedList] by querying from API with author_id, category_id, or publisher_id
///

abstract class BuiltBookQueriedList
    implements
        GenericList,
        Built<BuiltBookQueriedList, BuiltBookQueriedListBuilder> {
  @override
  BuiltList<BuiltBookQueried> get data;

  BuiltBookQueriedList._();

  factory BuiltBookQueriedList([updates(BuiltBookQueriedListBuilder b)]) =
      _$BuiltBookQueriedList;

  static Serializer<BuiltBookQueriedList> get serializer =>
      _$builtBookQueriedListSerializer;
}

abstract class BuiltBookQueried
    implements Built<BuiltBookQueried, BuiltBookQueriedBuilder> {
  int get id;

  @nullable
  String get title;

  @nullable
  @BuiltValueField(wireName: 'bookauthor_name')
  String get bookAuthorName;

  @nullable
  @BuiltValueField(wireName: 'category_mm')
  String get categoryMM;

  @nullable
  @BuiltValueField(wireName: 'category_en')
  String get categoryEN;

  @nullable
  @BuiltValueField(wireName: 'bookpublisher_name')
  String get bookPublisherName;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: 'feature_image_path')
  String get featureImagePath;

  @nullable
  @BuiltValueField(wireName: 'feature_image_id')
  String get featureImagId => toString(); // API return '' instead of null

  @nullable
  @BuiltValueField(wireName: 'thumb_image_path')
  String get thumbImagePath;

  @nullable
  BuiltList<BuiltMedia> get media;

  BuiltBookQueried._();

  factory BuiltBookQueried([updates(BuiltBookQueriedBuilder b)]) =
      _$BuiltBookQueried;

  static Serializer<BuiltBookQueried> get serializer =>
      _$builtBookQueriedSerializer;
}
