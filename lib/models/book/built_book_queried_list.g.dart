// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_book_queried_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltBookQueriedList> _$builtBookQueriedListSerializer =
    new _$BuiltBookQueriedListSerializer();
Serializer<BuiltBookQueried> _$builtBookQueriedSerializer =
    new _$BuiltBookQueriedSerializer();

class _$BuiltBookQueriedListSerializer
    implements StructuredSerializer<BuiltBookQueriedList> {
  @override
  final Iterable<Type> types = const [
    BuiltBookQueriedList,
    _$BuiltBookQueriedList
  ];
  @override
  final String wireName = 'BuiltBookQueriedList';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltBookQueriedList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltBookQueried)])),
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
  BuiltBookQueriedList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookQueriedListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltBookQueried)]))
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

class _$BuiltBookQueriedSerializer
    implements StructuredSerializer<BuiltBookQueried> {
  @override
  final Iterable<Type> types = const [BuiltBookQueried, _$BuiltBookQueried];
  @override
  final String wireName = 'BuiltBookQueried';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltBookQueried object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.bookAuthorName != null) {
      result
        ..add('bookauthor_name')
        ..add(serializers.serialize(object.bookAuthorName,
            specifiedType: const FullType(String)));
    }
    if (object.categoryMM != null) {
      result
        ..add('category_mm')
        ..add(serializers.serialize(object.categoryMM,
            specifiedType: const FullType(String)));
    }
    if (object.categoryEN != null) {
      result
        ..add('category_en')
        ..add(serializers.serialize(object.categoryEN,
            specifiedType: const FullType(String)));
    }
    if (object.bookPublisherName != null) {
      result
        ..add('bookpublisher_name')
        ..add(serializers.serialize(object.bookPublisherName,
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
  BuiltBookQueried deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookQueriedBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bookauthor_name':
          result.bookAuthorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_mm':
          result.categoryMM = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_en':
          result.categoryEN = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bookpublisher_name':
          result.bookPublisherName = serializers.deserialize(value,
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

class _$BuiltBookQueriedList extends BuiltBookQueriedList {
  @override
  final BuiltList<BuiltBookQueried> data;
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

  factory _$BuiltBookQueriedList(
          [void Function(BuiltBookQueriedListBuilder) updates]) =>
      (new BuiltBookQueriedListBuilder()..update(updates)).build();

  _$BuiltBookQueriedList._(
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
      throw new BuiltValueNullFieldError('BuiltBookQueriedList', 'data');
    }
  }

  @override
  BuiltBookQueriedList rebuild(
          void Function(BuiltBookQueriedListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookQueriedListBuilder toBuilder() =>
      new BuiltBookQueriedListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookQueriedList &&
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
    return (newBuiltValueToStringHelper('BuiltBookQueriedList')
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

class BuiltBookQueriedListBuilder
    implements Builder<BuiltBookQueriedList, BuiltBookQueriedListBuilder> {
  _$BuiltBookQueriedList _$v;

  ListBuilder<BuiltBookQueried> _data;
  ListBuilder<BuiltBookQueried> get data =>
      _$this._data ??= new ListBuilder<BuiltBookQueried>();
  set data(ListBuilder<BuiltBookQueried> data) => _$this._data = data;

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

  BuiltBookQueriedListBuilder();

  BuiltBookQueriedListBuilder get _$this {
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
  void replace(BuiltBookQueriedList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookQueriedList;
  }

  @override
  void update(void Function(BuiltBookQueriedListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookQueriedList build() {
    _$BuiltBookQueriedList _$result;
    try {
      _$result = _$v ??
          new _$BuiltBookQueriedList._(
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
            'BuiltBookQueriedList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltBookQueried extends BuiltBookQueried {
  @override
  final int id;
  @override
  final String title;
  @override
  final String bookAuthorName;
  @override
  final String categoryMM;
  @override
  final String categoryEN;
  @override
  final String bookPublisherName;
  @override
  final String image;
  @override
  final String featureImagePath;
  @override
  final String thumbImagePath;
  @override
  final BuiltList<BuiltMedia> media;

  factory _$BuiltBookQueried(
          [void Function(BuiltBookQueriedBuilder) updates]) =>
      (new BuiltBookQueriedBuilder()..update(updates)).build();

  _$BuiltBookQueried._(
      {this.id,
      this.title,
      this.bookAuthorName,
      this.categoryMM,
      this.categoryEN,
      this.bookPublisherName,
      this.image,
      this.featureImagePath,
      this.thumbImagePath,
      this.media})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltBookQueried', 'id');
    }
  }

  @override
  BuiltBookQueried rebuild(void Function(BuiltBookQueriedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookQueriedBuilder toBuilder() =>
      new BuiltBookQueriedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookQueried &&
        id == other.id &&
        title == other.title &&
        bookAuthorName == other.bookAuthorName &&
        categoryMM == other.categoryMM &&
        categoryEN == other.categoryEN &&
        bookPublisherName == other.bookPublisherName &&
        image == other.image &&
        featureImagePath == other.featureImagePath &&
        thumbImagePath == other.thumbImagePath &&
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
                                $jc($jc($jc(0, id.hashCode), title.hashCode),
                                    bookAuthorName.hashCode),
                                categoryMM.hashCode),
                            categoryEN.hashCode),
                        bookPublisherName.hashCode),
                    image.hashCode),
                featureImagePath.hashCode),
            thumbImagePath.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltBookQueried')
          ..add('id', id)
          ..add('title', title)
          ..add('bookAuthorName', bookAuthorName)
          ..add('categoryMM', categoryMM)
          ..add('categoryEN', categoryEN)
          ..add('bookPublisherName', bookPublisherName)
          ..add('image', image)
          ..add('featureImagePath', featureImagePath)
          ..add('thumbImagePath', thumbImagePath)
          ..add('media', media))
        .toString();
  }
}

class BuiltBookQueriedBuilder
    implements Builder<BuiltBookQueried, BuiltBookQueriedBuilder> {
  _$BuiltBookQueried _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _bookAuthorName;
  String get bookAuthorName => _$this._bookAuthorName;
  set bookAuthorName(String bookAuthorName) =>
      _$this._bookAuthorName = bookAuthorName;

  String _categoryMM;
  String get categoryMM => _$this._categoryMM;
  set categoryMM(String categoryMM) => _$this._categoryMM = categoryMM;

  String _categoryEN;
  String get categoryEN => _$this._categoryEN;
  set categoryEN(String categoryEN) => _$this._categoryEN = categoryEN;

  String _bookPublisherName;
  String get bookPublisherName => _$this._bookPublisherName;
  set bookPublisherName(String bookPublisherName) =>
      _$this._bookPublisherName = bookPublisherName;

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

  ListBuilder<BuiltMedia> _media;
  ListBuilder<BuiltMedia> get media =>
      _$this._media ??= new ListBuilder<BuiltMedia>();
  set media(ListBuilder<BuiltMedia> media) => _$this._media = media;

  BuiltBookQueriedBuilder();

  BuiltBookQueriedBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _bookAuthorName = _$v.bookAuthorName;
      _categoryMM = _$v.categoryMM;
      _categoryEN = _$v.categoryEN;
      _bookPublisherName = _$v.bookPublisherName;
      _image = _$v.image;
      _featureImagePath = _$v.featureImagePath;
      _thumbImagePath = _$v.thumbImagePath;
      _media = _$v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltBookQueried other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookQueried;
  }

  @override
  void update(void Function(BuiltBookQueriedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookQueried build() {
    _$BuiltBookQueried _$result;
    try {
      _$result = _$v ??
          new _$BuiltBookQueried._(
              id: id,
              title: title,
              bookAuthorName: bookAuthorName,
              categoryMM: categoryMM,
              categoryEN: categoryEN,
              bookPublisherName: bookPublisherName,
              image: image,
              featureImagePath: featureImagePath,
              thumbImagePath: thumbImagePath,
              media: _media?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltBookQueried', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
