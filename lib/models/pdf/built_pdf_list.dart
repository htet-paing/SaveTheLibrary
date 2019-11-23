import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/generics.dart';

part 'built_pdf_list.g.dart';

/// sample
///
/// [BuiltPdfList] ( implements [GenericList] )
/// {
///   total: ...,
///   per_page: ...,
///   current_page: ...,
///   .
///   .
///   .
///   data: [
///     [BulitPdf],
///     [BuiltPdf],
///     [BuiltPdf],...
///   ]
/// }

abstract class BuiltPdfList
    implements GenericList, Built<BuiltPdfList, BuiltPdfListBuilder> {
  @override
  BuiltList<BuiltPdf> get data;

  BuiltPdfList._();

  factory BuiltPdfList([updates(BuiltPdfListBuilder b)]) = _$BuiltPdfList;

  static Serializer<BuiltPdfList> get serializer => _$builtPdfListSerializer;
}

abstract class BuiltPdf implements Built<BuiltPdf, BuiltPdfBuilder> {
  @BuiltValueField(wireName: 'pdf_id')
  int get pdfId;

  @nullable
  @BuiltValueField(wireName: 'pdf_title')
  String get pdfTitle;

  @nullable
  @BuiltValueField(wireName: 'download_link')
  String get downloadLink;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: 'category_mm')
  String get categoryMM;

  @nullable
  @BuiltValueField(wireName: 'category_en')
  String get categoryEN;

  @nullable
  @BuiltValueField(wireName: 'pdf_source')
  String get pdfSource;

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
  BuiltList<dynamic> get media;

  BuiltPdf._();

  factory BuiltPdf([updates(BuiltPdfBuilder b)]) = _$BuiltPdf;

  static Serializer<BuiltPdf> get serializer => _$builtPdfSerializer;
}
