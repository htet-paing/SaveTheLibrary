import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_video_tag.g.dart';

/// sample
///
/// [BuiltVideoTag]
/// {
///   id: ...,
///   tagName: ...,
///   .
///   .
///   .
///   pivot: [BuiltPivot]
/// }

abstract class BuiltVideoTag
    implements Built<BuiltVideoTag, BuiltVideoTagBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'tag_name')
  String get tagName;

  @nullable
  @BuiltValueField(wireName: 'tag_description')
  String get tagDescription;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  @nullable
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  @nullable
  BuiltPivot get pivot;

  BuiltVideoTag._();
  factory BuiltVideoTag([updates(BuiltVideoTagBuilder b)]) = _$BuiltVideoTag;
  static Serializer<BuiltVideoTag> get serializer => _$builtVideoTagSerializer;
}

abstract class BuiltPivot implements Built<BuiltPivot, BuiltPivotBuilder> {
  @BuiltValueField(wireName: 'post_id')
  int get postId;

  @nullable
  @BuiltValueField(wireName: 'tag_id')
  int get tagId;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  @nullable
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  BuiltPivot._();
  factory BuiltPivot([updates(BuiltPivotBuilder b)]) = _$BuiltPivot;
  static Serializer<BuiltPivot> get serializer => _$builtPivotSerializer;
}
