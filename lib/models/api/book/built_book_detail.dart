import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/api/built_media.dart';

part 'built_book_detail.g.dart';

abstract class BuiltBookDetail
    implements Built<BuiltBookDetail, BuiltBookDetailBuilder> {
  @nullable
  @BuiltValueField(wireName: 'book_id')
  int get id;

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

  BuiltBookDetail._();

  factory BuiltBookDetail([updates(BuiltBookDetailBuilder b)]) =
      _$BuiltBookDetail;

  static Serializer<BuiltBookDetail> get serializer =>
      _$builtBookDetailSerializer;
}
