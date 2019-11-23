// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_pdf_category_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltPdfCategoryList> _$builtPdfCategoryListSerializer =
    new _$BuiltPdfCategoryListSerializer();
Serializer<BuiltPdfCategory> _$builtPdfCategorySerializer =
    new _$BuiltPdfCategorySerializer();

class _$BuiltPdfCategoryListSerializer
    implements StructuredSerializer<BuiltPdfCategoryList> {
  @override
  final Iterable<Type> types = const [
    BuiltPdfCategoryList,
    _$BuiltPdfCategoryList
  ];
  @override
  final String wireName = 'BuiltPdfCategoryList';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltPdfCategoryList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltPdfCategory)])),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
    ];
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
  BuiltPdfCategoryList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPdfCategoryListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltPdfCategory)]))
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

class _$BuiltPdfCategorySerializer
    implements StructuredSerializer<BuiltPdfCategory> {
  @override
  final Iterable<Type> types = const [BuiltPdfCategory, _$BuiltPdfCategory];
  @override
  final String wireName = 'BuiltPdfCategory';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltPdfCategory object,
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
    if (object.pdfCount != null) {
      result
        ..add('pdf_count')
        ..add(serializers.serialize(object.pdfCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltPdfCategory deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPdfCategoryBuilder();

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
        case 'pdf_count':
          result.pdfCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltPdfCategoryList extends BuiltPdfCategoryList {
  @override
  final BuiltList<BuiltPdfCategory> data;
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

  factory _$BuiltPdfCategoryList(
          [void Function(BuiltPdfCategoryListBuilder) updates]) =>
      (new BuiltPdfCategoryListBuilder()..update(updates)).build();

  _$BuiltPdfCategoryList._(
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
      throw new BuiltValueNullFieldError('BuiltPdfCategoryList', 'data');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('BuiltPdfCategoryList', 'total');
    }
  }

  @override
  BuiltPdfCategoryList rebuild(
          void Function(BuiltPdfCategoryListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPdfCategoryListBuilder toBuilder() =>
      new BuiltPdfCategoryListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPdfCategoryList &&
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
    return (newBuiltValueToStringHelper('BuiltPdfCategoryList')
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

class BuiltPdfCategoryListBuilder
    implements Builder<BuiltPdfCategoryList, BuiltPdfCategoryListBuilder> {
  _$BuiltPdfCategoryList _$v;

  ListBuilder<BuiltPdfCategory> _data;
  ListBuilder<BuiltPdfCategory> get data =>
      _$this._data ??= new ListBuilder<BuiltPdfCategory>();
  set data(ListBuilder<BuiltPdfCategory> data) => _$this._data = data;

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

  BuiltPdfCategoryListBuilder();

  BuiltPdfCategoryListBuilder get _$this {
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
  void replace(BuiltPdfCategoryList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltPdfCategoryList;
  }

  @override
  void update(void Function(BuiltPdfCategoryListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPdfCategoryList build() {
    _$BuiltPdfCategoryList _$result;
    try {
      _$result = _$v ??
          new _$BuiltPdfCategoryList._(
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
            'BuiltPdfCategoryList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltPdfCategory extends BuiltPdfCategory {
  @override
  final int id;
  @override
  final String nameMM;
  @override
  final String nameEN;
  @override
  final int pdfCount;

  factory _$BuiltPdfCategory(
          [void Function(BuiltPdfCategoryBuilder) updates]) =>
      (new BuiltPdfCategoryBuilder()..update(updates)).build();

  _$BuiltPdfCategory._({this.id, this.nameMM, this.nameEN, this.pdfCount})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltPdfCategory', 'id');
    }
  }

  @override
  BuiltPdfCategory rebuild(void Function(BuiltPdfCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPdfCategoryBuilder toBuilder() =>
      new BuiltPdfCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPdfCategory &&
        id == other.id &&
        nameMM == other.nameMM &&
        nameEN == other.nameEN &&
        pdfCount == other.pdfCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), nameMM.hashCode), nameEN.hashCode),
        pdfCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltPdfCategory')
          ..add('id', id)
          ..add('nameMM', nameMM)
          ..add('nameEN', nameEN)
          ..add('pdfCount', pdfCount))
        .toString();
  }
}

class BuiltPdfCategoryBuilder
    implements Builder<BuiltPdfCategory, BuiltPdfCategoryBuilder> {
  _$BuiltPdfCategory _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nameMM;
  String get nameMM => _$this._nameMM;
  set nameMM(String nameMM) => _$this._nameMM = nameMM;

  String _nameEN;
  String get nameEN => _$this._nameEN;
  set nameEN(String nameEN) => _$this._nameEN = nameEN;

  int _pdfCount;
  int get pdfCount => _$this._pdfCount;
  set pdfCount(int pdfCount) => _$this._pdfCount = pdfCount;

  BuiltPdfCategoryBuilder();

  BuiltPdfCategoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nameMM = _$v.nameMM;
      _nameEN = _$v.nameEN;
      _pdfCount = _$v.pdfCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltPdfCategory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltPdfCategory;
  }

  @override
  void update(void Function(BuiltPdfCategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPdfCategory build() {
    final _$result = _$v ??
        new _$BuiltPdfCategory._(
            id: id, nameMM: nameMM, nameEN: nameEN, pdfCount: pdfCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
