// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_township_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltTownships> _$builtTownshipsSerializer =
    new _$BuiltTownshipsSerializer();
Serializer<BuiltTownshipList> _$builtTownshipListSerializer =
    new _$BuiltTownshipListSerializer();
Serializer<BuiltTownship> _$builtTownshipSerializer =
    new _$BuiltTownshipSerializer();

class _$BuiltTownshipsSerializer
    implements StructuredSerializer<BuiltTownships> {
  @override
  final Iterable<Type> types = const [BuiltTownships, _$BuiltTownships];
  @override
  final String wireName = 'BuiltTownships';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltTownships object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'townships',
      serializers.serialize(object.townships,
          specifiedType: const FullType(BuiltTownshipList)),
    ];

    return result;
  }

  @override
  BuiltTownships deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltTownshipsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'townships':
          result.townships.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltTownshipList))
              as BuiltTownshipList);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltTownshipListSerializer
    implements StructuredSerializer<BuiltTownshipList> {
  @override
  final Iterable<Type> types = const [BuiltTownshipList, _$BuiltTownshipList];
  @override
  final String wireName = 'BuiltTownshipList';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltTownshipList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltTownship)])),
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
  BuiltTownshipList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltTownshipListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltTownship)]))
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

class _$BuiltTownshipSerializer implements StructuredSerializer<BuiltTownship> {
  @override
  final Iterable<Type> types = const [BuiltTownship, _$BuiltTownship];
  @override
  final String wireName = 'BuiltTownship';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltTownship object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.stateDivisionId != null) {
      result
        ..add('state_division_id')
        ..add(serializers.serialize(object.stateDivisionId,
            specifiedType: const FullType(int)));
    }
    if (object.townshipName != null) {
      result
        ..add('township_name')
        ..add(serializers.serialize(object.townshipName,
            specifiedType: const FullType(String)));
    }
    if (object.libraryCount != null) {
      result
        ..add('library_count')
        ..add(serializers.serialize(object.libraryCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltTownship deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltTownshipBuilder();

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
        case 'state_division_id':
          result.stateDivisionId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'township_name':
          result.townshipName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'library_count':
          result.libraryCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltTownships extends BuiltTownships {
  @override
  final BuiltTownshipList townships;

  factory _$BuiltTownships([void Function(BuiltTownshipsBuilder) updates]) =>
      (new BuiltTownshipsBuilder()..update(updates)).build();

  _$BuiltTownships._({this.townships}) : super._() {
    if (townships == null) {
      throw new BuiltValueNullFieldError('BuiltTownships', 'townships');
    }
  }

  @override
  BuiltTownships rebuild(void Function(BuiltTownshipsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltTownshipsBuilder toBuilder() =>
      new BuiltTownshipsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltTownships && townships == other.townships;
  }

  @override
  int get hashCode {
    return $jf($jc(0, townships.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltTownships')
          ..add('townships', townships))
        .toString();
  }
}

class BuiltTownshipsBuilder
    implements Builder<BuiltTownships, BuiltTownshipsBuilder> {
  _$BuiltTownships _$v;

  BuiltTownshipListBuilder _townships;
  BuiltTownshipListBuilder get townships =>
      _$this._townships ??= new BuiltTownshipListBuilder();
  set townships(BuiltTownshipListBuilder townships) =>
      _$this._townships = townships;

  BuiltTownshipsBuilder();

  BuiltTownshipsBuilder get _$this {
    if (_$v != null) {
      _townships = _$v.townships?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltTownships other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltTownships;
  }

  @override
  void update(void Function(BuiltTownshipsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltTownships build() {
    _$BuiltTownships _$result;
    try {
      _$result = _$v ?? new _$BuiltTownships._(townships: townships.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'townships';
        townships.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltTownships', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltTownshipList extends BuiltTownshipList {
  @override
  final BuiltList<BuiltTownship> data;
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

  factory _$BuiltTownshipList(
          [void Function(BuiltTownshipListBuilder) updates]) =>
      (new BuiltTownshipListBuilder()..update(updates)).build();

  _$BuiltTownshipList._(
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
      throw new BuiltValueNullFieldError('BuiltTownshipList', 'data');
    }
  }

  @override
  BuiltTownshipList rebuild(void Function(BuiltTownshipListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltTownshipListBuilder toBuilder() =>
      new BuiltTownshipListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltTownshipList &&
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
    return (newBuiltValueToStringHelper('BuiltTownshipList')
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

class BuiltTownshipListBuilder
    implements Builder<BuiltTownshipList, BuiltTownshipListBuilder> {
  _$BuiltTownshipList _$v;

  ListBuilder<BuiltTownship> _data;
  ListBuilder<BuiltTownship> get data =>
      _$this._data ??= new ListBuilder<BuiltTownship>();
  set data(ListBuilder<BuiltTownship> data) => _$this._data = data;

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

  BuiltTownshipListBuilder();

  BuiltTownshipListBuilder get _$this {
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
  void replace(BuiltTownshipList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltTownshipList;
  }

  @override
  void update(void Function(BuiltTownshipListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltTownshipList build() {
    _$BuiltTownshipList _$result;
    try {
      _$result = _$v ??
          new _$BuiltTownshipList._(
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
            'BuiltTownshipList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltTownship extends BuiltTownship {
  @override
  final int id;
  @override
  final int stateDivisionId;
  @override
  final String townshipName;
  @override
  final int libraryCount;

  factory _$BuiltTownship([void Function(BuiltTownshipBuilder) updates]) =>
      (new BuiltTownshipBuilder()..update(updates)).build();

  _$BuiltTownship._(
      {this.id, this.stateDivisionId, this.townshipName, this.libraryCount})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltTownship', 'id');
    }
  }

  @override
  BuiltTownship rebuild(void Function(BuiltTownshipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltTownshipBuilder toBuilder() => new BuiltTownshipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltTownship &&
        id == other.id &&
        stateDivisionId == other.stateDivisionId &&
        townshipName == other.townshipName &&
        libraryCount == other.libraryCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), stateDivisionId.hashCode),
            townshipName.hashCode),
        libraryCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltTownship')
          ..add('id', id)
          ..add('stateDivisionId', stateDivisionId)
          ..add('townshipName', townshipName)
          ..add('libraryCount', libraryCount))
        .toString();
  }
}

class BuiltTownshipBuilder
    implements Builder<BuiltTownship, BuiltTownshipBuilder> {
  _$BuiltTownship _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _stateDivisionId;
  int get stateDivisionId => _$this._stateDivisionId;
  set stateDivisionId(int stateDivisionId) =>
      _$this._stateDivisionId = stateDivisionId;

  String _townshipName;
  String get townshipName => _$this._townshipName;
  set townshipName(String townshipName) => _$this._townshipName = townshipName;

  int _libraryCount;
  int get libraryCount => _$this._libraryCount;
  set libraryCount(int libraryCount) => _$this._libraryCount = libraryCount;

  BuiltTownshipBuilder();

  BuiltTownshipBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _stateDivisionId = _$v.stateDivisionId;
      _townshipName = _$v.townshipName;
      _libraryCount = _$v.libraryCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltTownship other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltTownship;
  }

  @override
  void update(void Function(BuiltTownshipBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltTownship build() {
    final _$result = _$v ??
        new _$BuiltTownship._(
            id: id,
            stateDivisionId: stateDivisionId,
            townshipName: townshipName,
            libraryCount: libraryCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
