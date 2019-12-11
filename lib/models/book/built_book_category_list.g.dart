// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_book_category_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltBookCategoryList> _$builtBookCategoryListSerializer =
    new _$BuiltBookCategoryListSerializer();
Serializer<BuiltBookCategory> _$builtBookCategorySerializer =
    new _$BuiltBookCategorySerializer();

class _$BuiltBookCategoryListSerializer
    implements StructuredSerializer<BuiltBookCategoryList> {
  @override
  final Iterable<Type> types = const [
    BuiltBookCategoryList,
    _$BuiltBookCategoryList
  ];
  @override
  final String wireName = 'BuiltBookCategoryList';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltBookCategoryList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltBookCategory)])),
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
  BuiltBookCategoryList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookCategoryListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltBookCategory)]))
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

class _$BuiltBookCategorySerializer
    implements StructuredSerializer<BuiltBookCategory> {
  @override
  final Iterable<Type> types = const [BuiltBookCategory, _$BuiltBookCategory];
  @override
  final String wireName = 'BuiltBookCategory';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltBookCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.nameMM != null) {
      result
        ..add('name_mm')
        ..add(serializers.serialize(object.nameMM,
            specifiedType: const FullType(String)));
    }
    if (object.nameEN != null) {
      result
        ..add('name_en')
        ..add(serializers.serialize(object.nameEN,
            specifiedType: const FullType(String)));
    }
    if (object.bookCount != null) {
      result
        ..add('book_count')
        ..add(serializers.serialize(object.bookCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltBookCategory deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookCategoryBuilder();

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
        case 'name_mm':
          result.nameMM = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_en':
          result.nameEN = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'book_count':
          result.bookCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltBookCategoryList extends BuiltBookCategoryList {
  @override
  final BuiltList<BuiltBookCategory> data;
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

  factory _$BuiltBookCategoryList(
          [void Function(BuiltBookCategoryListBuilder) updates]) =>
      (new BuiltBookCategoryListBuilder()..update(updates)).build();

  _$BuiltBookCategoryList._(
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
      throw new BuiltValueNullFieldError('BuiltBookCategoryList', 'data');
    }
  }

  @override
  BuiltBookCategoryList rebuild(
          void Function(BuiltBookCategoryListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookCategoryListBuilder toBuilder() =>
      new BuiltBookCategoryListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookCategoryList &&
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
    return (newBuiltValueToStringHelper('BuiltBookCategoryList')
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

class BuiltBookCategoryListBuilder
    implements Builder<BuiltBookCategoryList, BuiltBookCategoryListBuilder> {
  _$BuiltBookCategoryList _$v;

  ListBuilder<BuiltBookCategory> _data;
  ListBuilder<BuiltBookCategory> get data =>
      _$this._data ??= new ListBuilder<BuiltBookCategory>();
  set data(ListBuilder<BuiltBookCategory> data) => _$this._data = data;

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

  BuiltBookCategoryListBuilder();

  BuiltBookCategoryListBuilder get _$this {
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
  void replace(BuiltBookCategoryList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookCategoryList;
  }

  @override
  void update(void Function(BuiltBookCategoryListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookCategoryList build() {
    _$BuiltBookCategoryList _$result;
    try {
      _$result = _$v ??
          new _$BuiltBookCategoryList._(
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
            'BuiltBookCategoryList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltBookCategory extends BuiltBookCategory {
  @override
  final int id;
  @override
  final String nameMM;
  @override
  final String nameEN;
  @override
  final int bookCount;

  factory _$BuiltBookCategory(
          [void Function(BuiltBookCategoryBuilder) updates]) =>
      (new BuiltBookCategoryBuilder()..update(updates)).build();

  _$BuiltBookCategory._({this.id, this.nameMM, this.nameEN, this.bookCount})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltBookCategory', 'id');
    }
  }

  @override
  BuiltBookCategory rebuild(void Function(BuiltBookCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookCategoryBuilder toBuilder() =>
      new BuiltBookCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookCategory &&
        id == other.id &&
        nameMM == other.nameMM &&
        nameEN == other.nameEN &&
        bookCount == other.bookCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), nameMM.hashCode), nameEN.hashCode),
        bookCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltBookCategory')
          ..add('id', id)
          ..add('nameMM', nameMM)
          ..add('nameEN', nameEN)
          ..add('bookCount', bookCount))
        .toString();
  }
}

class BuiltBookCategoryBuilder
    implements Builder<BuiltBookCategory, BuiltBookCategoryBuilder> {
  _$BuiltBookCategory _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nameMM;
  String get nameMM => _$this._nameMM;
  set nameMM(String nameMM) => _$this._nameMM = nameMM;

  String _nameEN;
  String get nameEN => _$this._nameEN;
  set nameEN(String nameEN) => _$this._nameEN = nameEN;

  int _bookCount;
  int get bookCount => _$this._bookCount;
  set bookCount(int bookCount) => _$this._bookCount = bookCount;

  BuiltBookCategoryBuilder();

  BuiltBookCategoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nameMM = _$v.nameMM;
      _nameEN = _$v.nameEN;
      _bookCount = _$v.bookCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltBookCategory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookCategory;
  }

  @override
  void update(void Function(BuiltBookCategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookCategory build() {
    final _$result = _$v ??
        new _$BuiltBookCategory._(
            id: id, nameMM: nameMM, nameEN: nameEN, bookCount: bookCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
