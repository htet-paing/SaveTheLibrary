import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_news_detail.g.dart';

abstract class BuiltNewsDetail
    implements Built<BuiltNewsDetail, BuiltNewsDetailBuilder> {
  @BuiltValueField(wireName: 'post_id')
  int get postId;

  @nullable
  @BuiltValueField(wireName: 'post_title')
  String get postTitle;

  @nullable
  @BuiltValueField(wireName: 'post_content')
  String get postContent;

  @nullable
  @BuiltValueField(wireName: 'author_name')
  String get authorName;

  @nullable
  String get date;

  @nullable
  String get image;

  BuiltNewsDetail._();

  factory BuiltNewsDetail([updates(BuiltNewsDetailBuilder b)]) =
      _$BuiltNewsDetail;

  static Serializer<BuiltNewsDetail> get serializer =>
      _$builtNewsDetailSerializer;
}
