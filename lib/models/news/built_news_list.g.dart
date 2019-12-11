// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_news_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltNewsList> _$builtNewsListSerializer =
    new _$BuiltNewsListSerializer();
Serializer<BuiltNews> _$builtNewsSerializer = new _$BuiltNewsSerializer();

class _$BuiltNewsListSerializer implements StructuredSerializer<BuiltNewsList> {
  @override
  final Iterable<Type> types = const [BuiltNewsList, _$BuiltNewsList];
  @override
  final String wireName = 'BuiltNewsList';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltNewsList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltNews)])),
    ];
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    if (object.perPage != null) {
      result
        ..add('per_page')
        ..add(serializers.serialize(object.perPage,
            specifiedType: const FullType(int)));
    }
    if (object.currentPage != null) {
      result
        ..add('current_page')
        ..add(serializers.serialize(object.currentPage,
            specifiedType: const FullType(int)));
    }
    if (object.lastPage != null) {
      result
        ..add('last_page')
        ..add(serializers.serialize(object.lastPage,
            specifiedType: const FullType(int)));
    }
    if (object.nextPageUrl != null) {
      result
        ..add('next_page_url')
        ..add(serializers.serialize(object.nextPageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.prevPageUrl != null) {
      result
        ..add('prev_page_url')
        ..add(serializers.serialize(object.prevPageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.from != null) {
      result
        ..add('from')
        ..add(serializers.serialize(object.from,
            specifiedType: const FullType(int)));
    }
    if (object.to != null) {
      result
        ..add('to')
        ..add(serializers.serialize(object.to,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltNewsList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltNewsListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltNews)]))
              as BuiltList<dynamic>);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'per_page':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'current_page':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_page':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'next_page_url':
          result.nextPageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prev_page_url':
          result.prevPageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltNewsSerializer implements StructuredSerializer<BuiltNews> {
  @override
  final Iterable<Type> types = const [BuiltNews, _$BuiltNews];
  @override
  final String wireName = 'BuiltNews';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltNews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'post_id',
      serializers.serialize(object.postId, specifiedType: const FullType(int)),
    ];
    if (object.postTitle != null) {
      result
        ..add('post_title')
        ..add(serializers.serialize(object.postTitle,
            specifiedType: const FullType(String)));
    }
    if (object.postContent != null) {
      result
        ..add('post_content')
        ..add(serializers.serialize(object.postContent,
            specifiedType: const FullType(String)));
    }
    if (object.authorName != null) {
      result
        ..add('author_name')
        ..add(serializers.serialize(object.authorName,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
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
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(String)));
    }
    if (object.media != null) {
      result
        ..add('media')
        ..add(serializers.serialize(object.media,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BuiltMedia)])));
    }
    return result;
  }

  @override
  BuiltNews deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltNewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'post_id':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'post_title':
          result.postTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_content':
          result.postContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_name':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltMedia)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltNewsList extends BuiltNewsList {
  @override
  final BuiltList<BuiltNews> data;
  @override
  final int total;
  @override
  final int perPage;
  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final String nextPageUrl;
  @override
  final String prevPageUrl;
  @override
  final int from;
  @override
  final int to;

  factory _$BuiltNewsList([void Function(BuiltNewsListBuilder) updates]) =>
      (new BuiltNewsListBuilder()..update(updates)).build();

  _$BuiltNewsList._(
      {this.data,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.nextPageUrl,
      this.prevPageUrl,
      this.from,
      this.to})
      : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('BuiltNewsList', 'data');
    }
  }

  @override
  BuiltNewsList rebuild(void Function(BuiltNewsListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltNewsListBuilder toBuilder() => new BuiltNewsListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltNewsList &&
        data == other.data &&
        total == other.total &&
        perPage == other.perPage &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage &&
        nextPageUrl == other.nextPageUrl &&
        prevPageUrl == other.prevPageUrl &&
        from == other.from &&
        to == other.to;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, data.hashCode), total.hashCode),
                                perPage.hashCode),
                            currentPage.hashCode),
                        lastPage.hashCode),
                    nextPageUrl.hashCode),
                prevPageUrl.hashCode),
            from.hashCode),
        to.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltNewsList')
          ..add('data', data)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('nextPageUrl', nextPageUrl)
          ..add('prevPageUrl', prevPageUrl)
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class BuiltNewsListBuilder
    implements Builder<BuiltNewsList, BuiltNewsListBuilder> {
  _$BuiltNewsList _$v;

  ListBuilder<BuiltNews> _data;
  ListBuilder<BuiltNews> get data =>
      _$this._data ??= new ListBuilder<BuiltNews>();
  set data(ListBuilder<BuiltNews> data) => _$this._data = data;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _perPage;
  int get perPage => _$this._perPage;
  set perPage(int perPage) => _$this._perPage = perPage;

  int _currentPage;
  int get currentPage => _$this._currentPage;
  set currentPage(int currentPage) => _$this._currentPage = currentPage;

  int _lastPage;
  int get lastPage => _$this._lastPage;
  set lastPage(int lastPage) => _$this._lastPage = lastPage;

  String _nextPageUrl;
  String get nextPageUrl => _$this._nextPageUrl;
  set nextPageUrl(String nextPageUrl) => _$this._nextPageUrl = nextPageUrl;

  String _prevPageUrl;
  String get prevPageUrl => _$this._prevPageUrl;
  set prevPageUrl(String prevPageUrl) => _$this._prevPageUrl = prevPageUrl;

  int _from;
  int get from => _$this._from;
  set from(int from) => _$this._from = from;

  int _to;
  int get to => _$this._to;
  set to(int to) => _$this._to = to;

  BuiltNewsListBuilder();

  BuiltNewsListBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _total = _$v.total;
      _perPage = _$v.perPage;
      _currentPage = _$v.currentPage;
      _lastPage = _$v.lastPage;
      _nextPageUrl = _$v.nextPageUrl;
      _prevPageUrl = _$v.prevPageUrl;
      _from = _$v.from;
      _to = _$v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltNewsList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltNewsList;
  }

  @override
  void update(void Function(BuiltNewsListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltNewsList build() {
    _$BuiltNewsList _$result;
    try {
      _$result = _$v ??
          new _$BuiltNewsList._(
              data: data.build(),
              total: total,
              perPage: perPage,
              currentPage: currentPage,
              lastPage: lastPage,
              nextPageUrl: nextPageUrl,
              prevPageUrl: prevPageUrl,
              from: from,
              to: to);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltNewsList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltNews extends BuiltNews {
  @override
  final int postId;
  @override
  final String postTitle;
  @override
  final String postContent;
  @override
  final String authorName;
  @override
  final String date;
  @override
  final String image;
  @override
  final String featureImagePath;
  @override
  final String thumbImagePath;
  @override
  final bool hasMedia;
  @override
  final String user;
  @override
  final BuiltList<BuiltMedia> media;

  factory _$BuiltNews([void Function(BuiltNewsBuilder) updates]) =>
      (new BuiltNewsBuilder()..update(updates)).build();

  _$BuiltNews._(
      {this.postId,
      this.postTitle,
      this.postContent,
      this.authorName,
      this.date,
      this.image,
      this.featureImagePath,
      this.thumbImagePath,
      this.hasMedia,
      this.user,
      this.media})
      : super._() {
    if (postId == null) {
      throw new BuiltValueNullFieldError('BuiltNews', 'postId');
    }
  }

  @override
  BuiltNews rebuild(void Function(BuiltNewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltNewsBuilder toBuilder() => new BuiltNewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltNews &&
        postId == other.postId &&
        postTitle == other.postTitle &&
        postContent == other.postContent &&
        authorName == other.authorName &&
        date == other.date &&
        image == other.image &&
        featureImagePath == other.featureImagePath &&
        thumbImagePath == other.thumbImagePath &&
        hasMedia == other.hasMedia &&
        user == other.user &&
        media == other.media;
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
                                        $jc($jc(0, postId.hashCode),
                                            postTitle.hashCode),
                                        postContent.hashCode),
                                    authorName.hashCode),
                                date.hashCode),
                            image.hashCode),
                        featureImagePath.hashCode),
                    thumbImagePath.hashCode),
                hasMedia.hashCode),
            user.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltNews')
          ..add('postId', postId)
          ..add('postTitle', postTitle)
          ..add('postContent', postContent)
          ..add('authorName', authorName)
          ..add('date', date)
          ..add('image', image)
          ..add('featureImagePath', featureImagePath)
          ..add('thumbImagePath', thumbImagePath)
          ..add('hasMedia', hasMedia)
          ..add('user', user)
          ..add('media', media))
        .toString();
  }
}

class BuiltNewsBuilder implements Builder<BuiltNews, BuiltNewsBuilder> {
  _$BuiltNews _$v;

  int _postId;
  int get postId => _$this._postId;
  set postId(int postId) => _$this._postId = postId;

  String _postTitle;
  String get postTitle => _$this._postTitle;
  set postTitle(String postTitle) => _$this._postTitle = postTitle;

  String _postContent;
  String get postContent => _$this._postContent;
  set postContent(String postContent) => _$this._postContent = postContent;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

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

  String _user;
  String get user => _$this._user;
  set user(String user) => _$this._user = user;

  ListBuilder<BuiltMedia> _media;
  ListBuilder<BuiltMedia> get media =>
      _$this._media ??= new ListBuilder<BuiltMedia>();
  set media(ListBuilder<BuiltMedia> media) => _$this._media = media;

  BuiltNewsBuilder();

  BuiltNewsBuilder get _$this {
    if (_$v != null) {
      _postId = _$v.postId;
      _postTitle = _$v.postTitle;
      _postContent = _$v.postContent;
      _authorName = _$v.authorName;
      _date = _$v.date;
      _image = _$v.image;
      _featureImagePath = _$v.featureImagePath;
      _thumbImagePath = _$v.thumbImagePath;
      _hasMedia = _$v.hasMedia;
      _user = _$v.user;
      _media = _$v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltNews other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltNews;
  }

  @override
  void update(void Function(BuiltNewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltNews build() {
    _$BuiltNews _$result;
    try {
      _$result = _$v ??
          new _$BuiltNews._(
              postId: postId,
              postTitle: postTitle,
              postContent: postContent,
              authorName: authorName,
              date: date,
              image: image,
              featureImagePath: featureImagePath,
              thumbImagePath: thumbImagePath,
              hasMedia: hasMedia,
              user: user,
              media: _media?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltNews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
