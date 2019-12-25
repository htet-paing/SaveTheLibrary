import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/api/generics.dart';
import 'package:save_the_library/models/api/built_media.dart';

part 'built_book_list.g.dart';

/// sample
///
/// [BuiltBookList] ( implements [GenericList] )
/// {
///   total: ...,
///   per_page: ...,
///   current_page: ...,
///   .
///   .
///   .
///   data: [
///     [BulitBook],
///     [BuiltBook],
///     [BuiltBook],...
///   ]
/// }

abstract class BuiltBookList
    implements GenericList, Built<BuiltBookList, BuiltBookListBuilder> {
  @override
  BuiltList<BuiltBook> get data;

  BuiltBookList._();

  factory BuiltBookList([updates(BuiltBookListBuilder b)]) = _$BuiltBookList;

  static Serializer<BuiltBookList> get serializer => _$builtBookListSerializer;
}

abstract class BuiltBook implements Built<BuiltBook, BuiltBookBuilder> {
  int get id;

  @nullable
  String get title;

  @nullable
  @BuiltValueField(wireName: 'book_name')
  String get bookName;

  @nullable
  @BuiltValueField(wireName: 'download_link')
  String get downloadLink;

  @nullable
  String get subjects;

  @nullable
  String get notes;

  @nullable
  @BuiltValueField(wireName: 'bookauthor_name')
  String get bookAuthorName;

  @nullable
  @BuiltValueField(wireName: 'bookcategory_name_mm')
  String get bookCategoryNameMM;

  @nullable
  @BuiltValueField(wireName: 'bookcategory_name_en')
  String get bookCategoryNameEN;

  @nullable
  @BuiltValueField(wireName: 'bookpublisher_name')
  String get bookPublisherName;

  @nullable
  @BuiltValueField(wireName: 'bookpublisher_address')
  String get bookPublisherAddress;

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

  BuiltBook._();

  factory BuiltBook([updates(BuiltBookBuilder b)]) = _$BuiltBook;

  static Serializer<BuiltBook> get serializer => _$builtBookSerializer;
}
