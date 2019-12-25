import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/api/built_media.dart';
import 'package:save_the_library/models/api/generics.dart';

import 'built_video_user.dart';

part 'built_video_list.g.dart';

/// sample
///
/// [BuiltVideoList] ( implements [GenericList] )
/// {
///   total: ...,
///   per_page: ...,
///   current_page: ...,
///   .
///   .
///   .
///   data: [
///     [BulitVideo],
///     [BuiltVideo],
///     [BuiltVideo],...
///   ]
/// }

abstract class BuiltVideoList
    implements GenericList, Built<BuiltVideoList, BuiltVideoListBuilder> {
  @override
  BuiltList<BuiltVideo> get data;

  BuiltVideoList._();
  factory BuiltVideoList([updates(BuiltVideoListBuilder b)]) = _$BuiltVideoList;
  static Serializer<BuiltVideoList> get serializer =>
      _$builtVideoListSerializer;
}

abstract class BuiltVideo implements Built<BuiltVideo, BuiltVideoBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'post_title')
  String get postTitle;

  @nullable
  @BuiltValueField(wireName: 'post_slug')
  String get postSlug;

  @nullable
  @BuiltValueField(wireName: 'post_type')
  String get postType;

  @nullable
  @BuiltValueField(wireName: 'post_review')
  String get postReview;

  @nullable
  @BuiltValueField(wireName: 'post_status')
  int get postStatus;

  @nullable
  @BuiltValueField(wireName: 'post_content')
  String get postContent;

  @nullable
  @BuiltValueField(wireName: 'news_type')
  String get newsType;

  @nullable
  String get volume;

  @nullable
  @BuiltValueField(wireName: 'user_id')
  int get userId;

  @nullable
  @BuiltValueField(wireName: 'category_id')
  int get categoryId;

  @nullable
  @BuiltValueField(wireName: 'visited_count')
  int get visitedCount;

  @nullable
  @BuiltValueField(wireName: 'editor_pick')
  int get editorPick;

  @nullable
  @BuiltValueField(wireName: 'completed_at')
  String get completedAt;

  @nullable
  @BuiltValueField(wireName: 'show_on_slider')
  int get showOnSlider;

  @nullable
  @BuiltValueField(wireName: 'you_tube_id')
  String get youtubeId;

  @nullable
  @BuiltValueField(wireName: 'published_date')
  String get publishedDate;

  @nullable
  @BuiltValueField(wireName: 'delete_at')
  String get deletedAt;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  @nullable
  @BuiltValueField(wireName: 'author_id')
  int get authorId;

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
  @BuiltValueField(wireName: 'has_media')
  bool get hasMedia;

  @nullable
  BuiltVideoUser get user;

  @nullable
  BuiltList<BuiltMedia> get media;

  BuiltVideo._();
  factory BuiltVideo([updates(BuiltVideoBuilder b)]) = _$BuiltVideo;
  static Serializer<BuiltVideo> get serializer => _$builtVideoSerializer;
}
