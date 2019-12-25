import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/api/generics.dart';

part 'built_pdf_category_list.g.dart';

/// sample
///
/// [BuiltPdfCategoryList] ( implements [GenericList] )
/// {
///   total: ...,
///   per_page: ...,
///   current_page: ...,
///   .
///   .
///   .
///   data: [
///     [BulitPdfCategory],
///     [BuiltPdfCategory],
///     [BuiltPdfCategory],...
///   ]
/// }

abstract class BuiltPdfCategoryList
    implements
        GenericList,
        Built<BuiltPdfCategoryList, BuiltPdfCategoryListBuilder> {
  @override
  BuiltList<BuiltPdfCategory> get data;

  BuiltPdfCategoryList._();

  factory BuiltPdfCategoryList([updates(BuiltPdfCategoryListBuilder b)]) =
      _$BuiltPdfCategoryList;

  static Serializer<BuiltPdfCategoryList> get serializer =>
      _$builtPdfCategoryListSerializer;
}

abstract class BuiltPdfCategory
    implements Built<BuiltPdfCategory, BuiltPdfCategoryBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'name_mm')
  String get nameMM;

  @nullable
  @BuiltValueField(wireName: 'name_en')
  String get nameEN;

  @nullable
  @BuiltValueField(wireName: 'pdf_count')
  int get pdfCount;

  BuiltPdfCategory._();

  factory BuiltPdfCategory([updates(BuiltPdfCategoryBuilder b)]) =
      _$BuiltPdfCategory;

  static Serializer<BuiltPdfCategory> get serializer =>
      _$builtPdfCategorySerializer;
}
