import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_media.g.dart';

abstract class BuiltMedia implements Built<BuiltMedia, BuiltMediaBuilder> {
  BuiltMedia._();
  int get id;

  @BuiltValueField(wireName: 'model_id')
  int get modelId;

  @BuiltValueField(wireName: 'model_type')
  String get modelType;

  @BuiltValueField(wireName: 'collection_name')
  String get collectionName;

  @nullable
  String get name;

  @BuiltValueField(wireName: 'file_name')
  String get fileName;

  @nullable
  String get disk;

  @nullable
  int get size;

  @nullable
  BuiltList<dynamic> get manipulations;

  @nullable
  @BuiltValueField(wireName: 'custom_properties')
  BuiltList<dynamic> get customProperties;

  @nullable
  @BuiltValueField(wireName: 'order_column')
  int get orderColumn;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  @nullable
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  factory BuiltMedia([updates(BuiltMediaBuilder b)]) = _$BuiltMedia;

  static Serializer<BuiltMedia> get serializer => _$builtMediaSerializer;
}
