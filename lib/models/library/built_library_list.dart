import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/built_media.dart';
import 'package:save_the_library/models/generics.dart';

part 'built_library_list.g.dart';

/// sample
///
/// [BuiltLibraries]
/// {
///   libraries: [BuiltLibraryList] ( implements [GenericList] )
///   {
///     total: ...,
///     per_page: ...,
///     current_page: ...,
///     .
///     .
///     .
///     data: [
///       [BulitLibrary],
///       [BuiltLibrary],
///       [BuiltLibrary],
///       .
///       .
///       .
///     ]
///   }
/// }

abstract class BuiltLibraries
    implements Built<BuiltLibraries, BuiltLibrariesBuilder> {
  BuiltLibraryList get libraries;

  BuiltLibraries._();

  factory BuiltLibraries([updates(BuiltLibrariesBuilder b)]) = _$BuiltLibraries;

  static Serializer<BuiltLibraries> get serializer =>
      _$builtLibrariesSerializer;
}

abstract class BuiltLibraryList
    implements GenericList, Built<BuiltLibraryList, BuiltLibraryListBuilder> {
  @override
  BuiltList<BuiltLibrary> get data;

  BuiltLibraryList._();

  factory BuiltLibraryList([updates(BuiltLibraryListBuilder b)]) =
      _$BuiltLibraryList;

  static Serializer<BuiltLibraryList> get serializer =>
      _$builtLibraryListSerializer;
}

abstract class BuiltLibrary
    implements Built<BuiltLibrary, BuiltLibraryBuilder> {
  @BuiltValueField(wireName: 'libraries_id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'libraries_name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'township_name')
  String get townshipName;

  @nullable
  @BuiltValueField(wireName: 'villagetract_name')
  String get villageTractName;

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

  BuiltLibrary._();

  factory BuiltLibrary([updates(BuiltLibraryBuilder b)]) = _$BuiltLibrary;

  static Serializer<BuiltLibrary> get serializer => _$builtLibrarySerializer;
}
