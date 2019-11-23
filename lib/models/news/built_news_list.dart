import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/built_media.dart';
import 'package:save_the_library/models/generics.dart';

part 'built_news_list.g.dart';

/// sample
///
/// [BuiltNewsList] ( implements [GenericList] )
/// {
///   total: ...,
///   per_page: ...,
///   current_page: ...,
///   .
///   .
///   .
///   data: [
///     [BulitNews],
///     [BuiltNews],
///     [BuiltNews],...
///   ]
/// }

abstract class BuiltNewsList
    implements GenericList, Built<BuiltNewsList, BuiltNewsListBuilder> {
  @override
  BuiltList<BuiltNews> get data;

  BuiltNewsList._();

  factory BuiltNewsList([updates(BuiltNewsListBuilder b)]) = _$BuiltNewsList;

  static Serializer<BuiltNewsList> get serializer => _$builtNewsListSerializer;
}

abstract class BuiltNews implements Built<BuiltNews, BuiltNewsBuilder> {
  @BuiltValueField(wireName: "post_id")
  int get postId;

  @nullable
  @BuiltValueField(wireName: "post_title")
  String get postTitle;

  @nullable
  @BuiltValueField(wireName: "post_content")
  String get postContent;

  @nullable
  @BuiltValueField(wireName: "author_name")
  String get authorName;

  @nullable
  String get date;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: "feature_image_path")
  String get featureImagePath;

  @nullable
  @BuiltValueField(wireName: "feature_image_id")
  String get featureImagId => toString(); // API return '' instead of null

  @nullable
  @BuiltValueField(wireName: "thumb_image_path")
  String get thumbImagePath;

  @nullable
  @BuiltValueField(wireName: "has_media")
  bool get hasMedia;

  @nullable
  String get user;

  @nullable
  BuiltList<BuiltMedia> get media;

  BuiltNews._();

  factory BuiltNews([updates(BuiltNewsBuilder b)]) = _$BuiltNews;

  static Serializer<BuiltNews> get serializer => _$builtNewsSerializer;
}
