import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:save_the_library/models/api/built_media.dart';
import 'package:save_the_library/models/api/generics.dart';

part 'built_book_author_list.g.dart';

/// sample
///
/// [BuiltBookAuthorList] ( implements [GenericList] )
/// {
///   total: ...,
///   per_page: ...,
///   current_page: ...,
///   .
///   .
///   .
///   data: [
///     [BulitBookAuthor],
///     [BuiltBookAuthor],
///     [BuiltBookAuthor],...
///   ]
/// }

abstract class BuiltBookAuthorList
    implements
        GenericList,
        Built<BuiltBookAuthorList, BuiltBookAuthorListBuilder> {
  @override
  BuiltList<BuiltBookAuthor> get data;

  BuiltBookAuthorList._();
  factory BuiltBookAuthorList([updates(BuiltBookAuthorListBuilder b)]) =
      _$BuiltBookAuthorList;
  static Serializer<BuiltBookAuthorList> get serializer =>
      _$builtBookAuthorListSerializer;
}

abstract class BuiltBookAuthor
    implements Built<BuiltBookAuthor, BuiltBookAuthorBuilder> {
  int get id;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'book_count')
  int get bookCount;

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

  BuiltBookAuthor._();

  factory BuiltBookAuthor([updates(BuiltBookAuthorBuilder b)]) =
      _$BuiltBookAuthor;

  static Serializer<BuiltBookAuthor> get serializer =>
      _$builtBookAuthorSerializer;
}
