// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_book_author_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltBookAuthorList> _$builtBookAuthorListSerializer =
    new _$BuiltBookAuthorListSerializer();
Serializer<BuiltBookAuthor> _$builtBookAuthorSerializer =
    new _$BuiltBookAuthorSerializer();

class _$BuiltBookAuthorListSerializer
    implements StructuredSerializer<BuiltBookAuthorList> {
  @override
  final Iterable<Type> types = const [
    BuiltBookAuthorList,
    _$BuiltBookAuthorList
  ];
  @override
  final String wireName = 'BuiltBookAuthorList';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltBookAuthorList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltBookAuthor)])),
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
  BuiltBookAuthorList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookAuthorListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltBookAuthor)]))
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

class _$BuiltBookAuthorSerializer
    implements StructuredSerializer<BuiltBookAuthor> {
  @override
  final Iterable<Type> types = const [BuiltBookAuthor, _$BuiltBookAuthor];
  @override
  final String wireName = 'BuiltBookAuthor';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltBookAuthor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.bookCount != null) {
      result
        ..add('book_count')
        ..add(serializers.serialize(object.bookCount,
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
  BuiltBookAuthor deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookAuthorBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'book_count':
          result.bookCount = serializers.deserialize(value,
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

class _$BuiltBookAuthorList extends BuiltBookAuthorList {
  @override
  final BuiltList<BuiltBookAuthor> data;
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

  factory _$BuiltBookAuthorList(
          [void Function(BuiltBookAuthorListBuilder) updates]) =>
      (new BuiltBookAuthorListBuilder()..update(updates)).build();

  _$BuiltBookAuthorList._(
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
      throw new BuiltValueNullFieldError('BuiltBookAuthorList', 'data');
    }
  }

  @override
  BuiltBookAuthorList rebuild(
          void Function(BuiltBookAuthorListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookAuthorListBuilder toBuilder() =>
      new BuiltBookAuthorListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookAuthorList &&
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
    return (newBuiltValueToStringHelper('BuiltBookAuthorList')
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

class BuiltBookAuthorListBuilder
    implements Builder<BuiltBookAuthorList, BuiltBookAuthorListBuilder> {
  _$BuiltBookAuthorList _$v;

  ListBuilder<BuiltBookAuthor> _data;
  ListBuilder<BuiltBookAuthor> get data =>
      _$this._data ??= new ListBuilder<BuiltBookAuthor>();
  set data(ListBuilder<BuiltBookAuthor> data) => _$this._data = data;

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

  BuiltBookAuthorListBuilder();

  BuiltBookAuthorListBuilder get _$this {
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
  void replace(BuiltBookAuthorList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookAuthorList;
  }

  @override
  void update(void Function(BuiltBookAuthorListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookAuthorList build() {
    _$BuiltBookAuthorList _$result;
    try {
      _$result = _$v ??
          new _$BuiltBookAuthorList._(
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
            'BuiltBookAuthorList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltBookAuthor extends BuiltBookAuthor {
  @override
  final int id;
  @override
  final String name;
  @override
  final int bookCount;
  @override
  final String featureImagePath;
  @override
  final String thumbImagePath;
  @override
  final BuiltList<BuiltMedia> media;

  factory _$BuiltBookAuthor([void Function(BuiltBookAuthorBuilder) updates]) =>
      (new BuiltBookAuthorBuilder()..update(updates)).build();

  _$BuiltBookAuthor._(
      {this.id,
      this.name,
      this.bookCount,
      this.featureImagePath,
      this.thumbImagePath,
      this.media})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltBookAuthor', 'id');
    }
  }

  @override
  BuiltBookAuthor rebuild(void Function(BuiltBookAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookAuthorBuilder toBuilder() =>
      new BuiltBookAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookAuthor &&
        id == other.id &&
        name == other.name &&
        bookCount == other.bookCount &&
        featureImagePath == other.featureImagePath &&
        thumbImagePath == other.thumbImagePath &&
        media == other.media;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), name.hashCode),
                    bookCount.hashCode),
                featureImagePath.hashCode),
            thumbImagePath.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltBookAuthor')
          ..add('id', id)
          ..add('name', name)
          ..add('bookCount', bookCount)
          ..add('featureImagePath', featureImagePath)
          ..add('thumbImagePath', thumbImagePath)
          ..add('media', media))
        .toString();
  }
}

class BuiltBookAuthorBuilder
    implements Builder<BuiltBookAuthor, BuiltBookAuthorBuilder> {
  _$BuiltBookAuthor _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _bookCount;
  int get bookCount => _$this._bookCount;
  set bookCount(int bookCount) => _$this._bookCount = bookCount;

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

  BuiltBookAuthorBuilder();

  BuiltBookAuthorBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _bookCount = _$v.bookCount;
      _featureImagePath = _$v.featureImagePath;
      _thumbImagePath = _$v.thumbImagePath;
      _media = _$v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltBookAuthor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookAuthor;
  }

  @override
  void update(void Function(BuiltBookAuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookAuthor build() {
    _$BuiltBookAuthor _$result;
    try {
      _$result = _$v ??
          new _$BuiltBookAuthor._(
              id: id,
              name: name,
              bookCount: bookCount,
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
            'BuiltBookAuthor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
