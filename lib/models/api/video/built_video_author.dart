import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/api/built_media.dart';

part 'built_video_author.g.dart';

abstract class BuiltVideoAuthor
    implements Built<BuiltVideoAuthor, BuiltVideoAuthorBuilder> {
  int get id;

  @nullable
  String get biography;

  @nullable
  @BuiltValueField(wireName: 'author_name')
  String get authorName;

  @nullable
  @BuiltValueField(wireName: 'pen_name')
  String get penName;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  @nullable
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  @nullable
  @BuiltValueField(wireName: 'feature_image_path')
  String get featureImagePath;

  @nullable
  @BuiltValueField(wireName: 'thumb_image_path')
  String get thumbImagePath;

  @nullable
  @BuiltValueField(wireName: 'feature_image')
  BuiltList<BuiltMedia> get featureImage;

  @nullable
  @BuiltValueField(wireName: 'feature_image_id')
  String get featureImagId => toString(); // API return '' instead of null

  @nullable
  BuiltList<BuiltMedia> get media;

  BuiltVideoAuthor._();

  factory BuiltVideoAuthor([updates(BuiltVideoAuthorBuilder b)]) =
      _$BuiltVideoAuthor;

  static Serializer<BuiltVideoAuthor> get serializer =>
      _$builtVideoAuthorSerializer;
}
