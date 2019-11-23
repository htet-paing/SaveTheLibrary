// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_video_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltVideoDetail> _$builtVideoDetailSerializer =
    new _$BuiltVideoDetailSerializer();

class _$BuiltVideoDetailSerializer
    implements StructuredSerializer<BuiltVideoDetail> {
  @override
  final Iterable<Type> types = const [BuiltVideoDetail, _$BuiltVideoDetail];
  @override
  final String wireName = 'BuiltVideoDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltVideoDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.postTitle != null) {
      result
        ..add('post_title')
        ..add(serializers.serialize(object.postTitle,
            specifiedType: const FullType(String)));
    }
    if (object.postSlug != null) {
      result
        ..add('post_slug')
        ..add(serializers.serialize(object.postSlug,
            specifiedType: const FullType(String)));
    }
    if (object.postType != null) {
      result
        ..add('post_type')
        ..add(serializers.serialize(object.postType,
            specifiedType: const FullType(String)));
    }
    if (object.postReview != null) {
      result
        ..add('post_review')
        ..add(serializers.serialize(object.postReview,
            specifiedType: const FullType(String)));
    }
    if (object.postStatus != null) {
      result
        ..add('post_status')
        ..add(serializers.serialize(object.postStatus,
            specifiedType: const FullType(int)));
    }
    if (object.postContent != null) {
      result
        ..add('post_content')
        ..add(serializers.serialize(object.postContent,
            specifiedType: const FullType(String)));
    }
    if (object.newsType != null) {
      result
        ..add('news_type')
        ..add(serializers.serialize(object.newsType,
            specifiedType: const FullType(String)));
    }
    if (object.volume != null) {
      result
        ..add('volume')
        ..add(serializers.serialize(object.volume,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(int)));
    }
    if (object.categoryId != null) {
      result
        ..add('category_id')
        ..add(serializers.serialize(object.categoryId,
            specifiedType: const FullType(int)));
    }
    if (object.visitedCount != null) {
      result
        ..add('visited_count')
        ..add(serializers.serialize(object.visitedCount,
            specifiedType: const FullType(int)));
    }
    if (object.editorPick != null) {
      result
        ..add('editor_pick')
        ..add(serializers.serialize(object.editorPick,
            specifiedType: const FullType(int)));
    }
    if (object.completedAt != null) {
      result
        ..add('completed_at')
        ..add(serializers.serialize(object.completedAt,
            specifiedType: const FullType(String)));
    }
    if (object.showOnSlider != null) {
      result
        ..add('show_on_slider')
        ..add(serializers.serialize(object.showOnSlider,
            specifiedType: const FullType(int)));
    }
    if (object.youtubeId != null) {
      result
        ..add('you_tube_id')
        ..add(serializers.serialize(object.youtubeId,
            specifiedType: const FullType(String)));
    }
    if (object.publishedDate != null) {
      result
        ..add('published_date')
        ..add(serializers.serialize(object.publishedDate,
            specifiedType: const FullType(String)));
    }
    if (object.deletedAt != null) {
      result
        ..add('delete_at')
        ..add(serializers.serialize(object.deletedAt,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.authorId != null) {
      result
        ..add('author_id')
        ..add(serializers.serialize(object.authorId,
            specifiedType: const FullType(int)));
    }
    if (object.featureImagePath != null) {
      result
        ..add('feature_image_path')
        ..add(serializers.serialize(object.featureImagePath,
            specifiedType: const FullType(String)));
    }
    if (object.thumbImagePath != null) {
      result
        ..add('thumb_image_path')
        ..add(serializers.serialize(object.thumbImagePath,
            specifiedType: const FullType(String)));
    }
    if (object.hasMedia != null) {
      result
        ..add('has_media')
        ..add(serializers.serialize(object.hasMedia,
            specifiedType: const FullType(bool)));
    }
    if (object.media != null) {
      result
        ..add('media')
        ..add(serializers.serialize(object.media,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BuiltMedia)])));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(BuiltVideoUser)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType: const FullType(
                BuiltList, const [const FullType(BuiltVideoTag)])));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(BuiltVideoAuthor)));
    }
    return result;
  }

  @override
  BuiltVideoDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltVideoDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'post_title':
          result.postTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_slug':
          result.postSlug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_type':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_review':
          result.postReview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_status':
          result.postStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'post_content':
          result.postContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'news_type':
          result.newsType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'volume':
          result.volume = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'category_id':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'visited_count':
          result.visitedCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'editor_pick':
          result.editorPick = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'completed_at':
          result.completedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'show_on_slider':
          result.showOnSlider = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'you_tube_id':
          result.youtubeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'published_date':
          result.publishedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delete_at':
          result.deletedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_id':
          result.authorId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'feature_image_path':
          result.featureImagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumb_image_path':
          result.thumbImagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_media':
          result.hasMedia = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltMedia)]))
              as BuiltList<dynamic>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltVideoUser)) as BuiltVideoUser);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltVideoTag)]))
              as BuiltList<dynamic>);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltVideoAuthor))
              as BuiltVideoAuthor);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltVideoDetail extends BuiltVideoDetail {
  @override
  final int id;
  @override
  final String postTitle;
  @override
  final String postSlug;
  @override
  final String postType;
  @override
  final String postReview;
  @override
  final int postStatus;
  @override
  final String postContent;
  @override
  final String newsType;
  @override
  final String volume;
  @override
  final int userId;
  @override
  final int categoryId;
  @override
  final int visitedCount;
  @override
  final int editorPick;
  @override
  final String completedAt;
  @override
  final int showOnSlider;
  @override
  final String youtubeId;
  @override
  final String publishedDate;
  @override
  final String deletedAt;
  @override
  final String createdAt;
  @override
  final int authorId;
  @override
  final String featureImagePath;
  @override
  final String thumbImagePath;
  @override
  final bool hasMedia;
  @override
  final BuiltList<BuiltMedia> media;
  @override
  final BuiltVideoUser user;
  @override
  final BuiltList<BuiltVideoTag> tags;
  @override
  final BuiltVideoAuthor author;

  factory _$BuiltVideoDetail(
          [void Function(BuiltVideoDetailBuilder) updates]) =>
      (new BuiltVideoDetailBuilder()..update(updates)).build();

  _$BuiltVideoDetail._(
      {this.id,
      this.postTitle,
      this.postSlug,
      this.postType,
      this.postReview,
      this.postStatus,
      this.postContent,
      this.newsType,
      this.volume,
      this.userId,
      this.categoryId,
      this.visitedCount,
      this.editorPick,
      this.completedAt,
      this.showOnSlider,
      this.youtubeId,
      this.publishedDate,
      this.deletedAt,
      this.createdAt,
      this.authorId,
      this.featureImagePath,
      this.thumbImagePath,
      this.hasMedia,
      this.media,
      this.user,
      this.tags,
      this.author})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltVideoDetail', 'id');
    }
  }

  @override
  BuiltVideoDetail rebuild(void Function(BuiltVideoDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltVideoDetailBuilder toBuilder() =>
      new BuiltVideoDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltVideoDetail &&
        id == other.id &&
        postTitle == other.postTitle &&
        postSlug == other.postSlug &&
        postType == other.postType &&
        postReview == other.postReview &&
        postStatus == other.postStatus &&
        postContent == other.postContent &&
        newsType == other.newsType &&
        volume == other.volume &&
        userId == other.userId &&
        categoryId == other.categoryId &&
        visitedCount == other.visitedCount &&
        editorPick == other.editorPick &&
        completedAt == other.completedAt &&
        showOnSlider == other.showOnSlider &&
        youtubeId == other.youtubeId &&
        publishedDate == other.publishedDate &&
        deletedAt == other.deletedAt &&
        createdAt == other.createdAt &&
        authorId == other.authorId &&
        featureImagePath == other.featureImagePath &&
        thumbImagePath == other.thumbImagePath &&
        hasMedia == other.hasMedia &&
        media == other.media &&
        user == other.user &&
        tags == other.tags &&
        author == other.author;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), postTitle.hashCode), postSlug.hashCode), postType.hashCode), postReview.hashCode), postStatus.hashCode), postContent.hashCode), newsType.hashCode),
                                                                                volume.hashCode),
                                                                            userId.hashCode),
                                                                        categoryId.hashCode),
                                                                    visitedCount.hashCode),
                                                                editorPick.hashCode),
                                                            completedAt.hashCode),
                                                        showOnSlider.hashCode),
                                                    youtubeId.hashCode),
                                                publishedDate.hashCode),
                                            deletedAt.hashCode),
                                        createdAt.hashCode),
                                    authorId.hashCode),
                                featureImagePath.hashCode),
                            thumbImagePath.hashCode),
                        hasMedia.hashCode),
                    media.hashCode),
                user.hashCode),
            tags.hashCode),
        author.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltVideoDetail')
          ..add('id', id)
          ..add('postTitle', postTitle)
          ..add('postSlug', postSlug)
          ..add('postType', postType)
          ..add('postReview', postReview)
          ..add('postStatus', postStatus)
          ..add('postContent', postContent)
          ..add('newsType', newsType)
          ..add('volume', volume)
          ..add('userId', userId)
          ..add('categoryId', categoryId)
          ..add('visitedCount', visitedCount)
          ..add('editorPick', editorPick)
          ..add('completedAt', completedAt)
          ..add('showOnSlider', showOnSlider)
          ..add('youtubeId', youtubeId)
          ..add('publishedDate', publishedDate)
          ..add('deletedAt', deletedAt)
          ..add('createdAt', createdAt)
          ..add('authorId', authorId)
          ..add('featureImagePath', featureImagePath)
          ..add('thumbImagePath', thumbImagePath)
          ..add('hasMedia', hasMedia)
          ..add('media', media)
          ..add('user', user)
          ..add('tags', tags)
          ..add('author', author))
        .toString();
  }
}

class BuiltVideoDetailBuilder
    implements Builder<BuiltVideoDetail, BuiltVideoDetailBuilder> {
  _$BuiltVideoDetail _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _postTitle;
  String get postTitle => _$this._postTitle;
  set postTitle(String postTitle) => _$this._postTitle = postTitle;

  String _postSlug;
  String get postSlug => _$this._postSlug;
  set postSlug(String postSlug) => _$this._postSlug = postSlug;

  String _postType;
  String get postType => _$this._postType;
  set postType(String postType) => _$this._postType = postType;

  String _postReview;
  String get postReview => _$this._postReview;
  set postReview(String postReview) => _$this._postReview = postReview;

  int _postStatus;
  int get postStatus => _$this._postStatus;
  set postStatus(int postStatus) => _$this._postStatus = postStatus;

  String _postContent;
  String get postContent => _$this._postContent;
  set postContent(String postContent) => _$this._postContent = postContent;

  String _newsType;
  String get newsType => _$this._newsType;
  set newsType(String newsType) => _$this._newsType = newsType;

  String _volume;
  String get volume => _$this._volume;
  set volume(String volume) => _$this._volume = volume;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  int _visitedCount;
  int get visitedCount => _$this._visitedCount;
  set visitedCount(int visitedCount) => _$this._visitedCount = visitedCount;

  int _editorPick;
  int get editorPick => _$this._editorPick;
  set editorPick(int editorPick) => _$this._editorPick = editorPick;

  String _completedAt;
  String get completedAt => _$this._completedAt;
  set completedAt(String completedAt) => _$this._completedAt = completedAt;

  int _showOnSlider;
  int get showOnSlider => _$this._showOnSlider;
  set showOnSlider(int showOnSlider) => _$this._showOnSlider = showOnSlider;

  String _youtubeId;
  String get youtubeId => _$this._youtubeId;
  set youtubeId(String youtubeId) => _$this._youtubeId = youtubeId;

  String _publishedDate;
  String get publishedDate => _$this._publishedDate;
  set publishedDate(String publishedDate) =>
      _$this._publishedDate = publishedDate;

  String _deletedAt;
  String get deletedAt => _$this._deletedAt;
  set deletedAt(String deletedAt) => _$this._deletedAt = deletedAt;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  int _authorId;
  int get authorId => _$this._authorId;
  set authorId(int authorId) => _$this._authorId = authorId;

  String _featureImagePath;
  String get featureImagePath => _$this._featureImagePath;
  set featureImagePath(String featureImagePath) =>
      _$this._featureImagePath = featureImagePath;

  String _thumbImagePath;
  String get thumbImagePath => _$this._thumbImagePath;
  set thumbImagePath(String thumbImagePath) =>
      _$this._thumbImagePath = thumbImagePath;

  bool _hasMedia;
  bool get hasMedia => _$this._hasMedia;
  set hasMedia(bool hasMedia) => _$this._hasMedia = hasMedia;

  ListBuilder<BuiltMedia> _media;
  ListBuilder<BuiltMedia> get media =>
      _$this._media ??= new ListBuilder<BuiltMedia>();
  set media(ListBuilder<BuiltMedia> media) => _$this._media = media;

  BuiltVideoUserBuilder _user;
  BuiltVideoUserBuilder get user =>
      _$this._user ??= new BuiltVideoUserBuilder();
  set user(BuiltVideoUserBuilder user) => _$this._user = user;

  ListBuilder<BuiltVideoTag> _tags;
  ListBuilder<BuiltVideoTag> get tags =>
      _$this._tags ??= new ListBuilder<BuiltVideoTag>();
  set tags(ListBuilder<BuiltVideoTag> tags) => _$this._tags = tags;

  BuiltVideoAuthorBuilder _author;
  BuiltVideoAuthorBuilder get author =>
      _$this._author ??= new BuiltVideoAuthorBuilder();
  set author(BuiltVideoAuthorBuilder author) => _$this._author = author;

  BuiltVideoDetailBuilder();

  BuiltVideoDetailBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _postTitle = _$v.postTitle;
      _postSlug = _$v.postSlug;
      _postType = _$v.postType;
      _postReview = _$v.postReview;
      _postStatus = _$v.postStatus;
      _postContent = _$v.postContent;
      _newsType = _$v.newsType;
      _volume = _$v.volume;
      _userId = _$v.userId;
      _categoryId = _$v.categoryId;
      _visitedCount = _$v.visitedCount;
      _editorPick = _$v.editorPick;
      _completedAt = _$v.completedAt;
      _showOnSlider = _$v.showOnSlider;
      _youtubeId = _$v.youtubeId;
      _publishedDate = _$v.publishedDate;
      _deletedAt = _$v.deletedAt;
      _createdAt = _$v.createdAt;
      _authorId = _$v.authorId;
      _featureImagePath = _$v.featureImagePath;
      _thumbImagePath = _$v.thumbImagePath;
      _hasMedia = _$v.hasMedia;
      _media = _$v.media?.toBuilder();
      _user = _$v.user?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _author = _$v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltVideoDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltVideoDetail;
  }

  @override
  void update(void Function(BuiltVideoDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltVideoDetail build() {
    _$BuiltVideoDetail _$result;
    try {
      _$result = _$v ??
          new _$BuiltVideoDetail._(
              id: id,
              postTitle: postTitle,
              postSlug: postSlug,
              postType: postType,
              postReview: postReview,
              postStatus: postStatus,
              postContent: postContent,
              newsType: newsType,
              volume: volume,
              userId: userId,
              categoryId: categoryId,
              visitedCount: visitedCount,
              editorPick: editorPick,
              completedAt: completedAt,
              showOnSlider: showOnSlider,
              youtubeId: youtubeId,
              publishedDate: publishedDate,
              deletedAt: deletedAt,
              createdAt: createdAt,
              authorId: authorId,
              featureImagePath: featureImagePath,
              thumbImagePath: thumbImagePath,
              hasMedia: hasMedia,
              media: _media?.build(),
              user: _user?.build(),
              tags: _tags?.build(),
              author: _author?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltVideoDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
