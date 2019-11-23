import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/built_media.dart';

part 'built_library_detail.g.dart';

abstract class BuiltLibraryDetail
    implements Built<BuiltLibraryDetail, BuiltLibraryDetailBuilder> {
  @BuiltValueField(wireName: 'library_id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'library_name')
  String get name;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: 'established_date')
  String get establishedDate;

  @nullable
  String get address;

  @nullable
  String get email;

  @nullable
  String get facebook;

  @nullable
  String get youtube;

  @nullable
  String get phone;

  @nullable
  double get latitude;

  @nullable
  double get longitude;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: 'township_name')
  String get townshipName;

  @nullable
  @BuiltValueField(wireName: 'statedvision_name')
  String get statedVisionName;

  @nullable
  @BuiltValueField(wireName: 'villagetract_name')
  String get villageTractName;

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

  BuiltLibraryDetail._();

  factory BuiltLibraryDetail([updates(BuiltLibraryDetailBuilder b)]) =
      _$BuiltLibraryDetail;

  static Serializer<BuiltLibraryDetail> get serializer =>
      _$builtLibraryDetailSerializer;
}
