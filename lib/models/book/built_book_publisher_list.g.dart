// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_book_publisher_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltBookPublisherList> _$builtBookPublisherListSerializer =
    new _$BuiltBookPublisherListSerializer();
Serializer<BuiltBookPublisher> _$builtBookPublisherSerializer =
    new _$BuiltBookPublisherSerializer();

class _$BuiltBookPublisherListSerializer
    implements StructuredSerializer<BuiltBookPublisherList> {
  @override
  final Iterable<Type> types = const [
    BuiltBookPublisherList,
    _$BuiltBookPublisherList
  ];
  @override
  final String wireName = 'BuiltBookPublisherList';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltBookPublisherList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltBookPublisher)])),
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
  BuiltBookPublisherList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookPublisherListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltBookPublisher)]))
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

class _$BuiltBookPublisherSerializer
    implements StructuredSerializer<BuiltBookPublisher> {
  @override
  final Iterable<Type> types = const [BuiltBookPublisher, _$BuiltBookPublisher];
  @override
  final String wireName = 'BuiltBookPublisher';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltBookPublisher object,
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
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNo != null) {
      result
        ..add('phone_no')
        ..add(serializers.serialize(object.phoneNo,
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
  BuiltBookPublisher deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookPublisherBuilder();

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
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_no':
          result.phoneNo = serializers.deserialize(value,
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

class _$BuiltBookPublisherList extends BuiltBookPublisherList {
  @override
  final BuiltList<BuiltBookPublisher> data;
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

  factory _$BuiltBookPublisherList(
          [void Function(BuiltBookPublisherListBuilder) updates]) =>
      (new BuiltBookPublisherListBuilder()..update(updates)).build();

  _$BuiltBookPublisherList._(
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
      throw new BuiltValueNullFieldError('BuiltBookPublisherList', 'data');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('BuiltBookPublisherList', 'total');
    }
  }

  @override
  BuiltBookPublisherList rebuild(
          void Function(BuiltBookPublisherListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookPublisherListBuilder toBuilder() =>
      new BuiltBookPublisherListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookPublisherList &&
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
    return (newBuiltValueToStringHelper('BuiltBookPublisherList')
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

class BuiltBookPublisherListBuilder
    implements Builder<BuiltBookPublisherList, BuiltBookPublisherListBuilder> {
  _$BuiltBookPublisherList _$v;

  ListBuilder<BuiltBookPublisher> _data;
  ListBuilder<BuiltBookPublisher> get data =>
      _$this._data ??= new ListBuilder<BuiltBookPublisher>();
  set data(ListBuilder<BuiltBookPublisher> data) => _$this._data = data;

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

  BuiltBookPublisherListBuilder();

  BuiltBookPublisherListBuilder get _$this {
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
  void replace(BuiltBookPublisherList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookPublisherList;
  }

  @override
  void update(void Function(BuiltBookPublisherListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookPublisherList build() {
    _$BuiltBookPublisherList _$result;
    try {
      _$result = _$v ??
          new _$BuiltBookPublisherList._(
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
            'BuiltBookPublisherList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltBookPublisher extends BuiltBookPublisher {
  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phoneNo;
  @override
  final int bookCount;

  factory _$BuiltBookPublisher(
          [void Function(BuiltBookPublisherBuilder) updates]) =>
      (new BuiltBookPublisherBuilder()..update(updates)).build();

  _$BuiltBookPublisher._(
      {this.id, this.name, this.address, this.phoneNo, this.bookCount})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltBookPublisher', 'id');
    }
  }

  @override
  BuiltBookPublisher rebuild(
          void Function(BuiltBookPublisherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookPublisherBuilder toBuilder() =>
      new BuiltBookPublisherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookPublisher &&
        id == other.id &&
        name == other.name &&
        address == other.address &&
        phoneNo == other.phoneNo &&
        bookCount == other.bookCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), address.hashCode),
            phoneNo.hashCode),
        bookCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltBookPublisher')
          ..add('id', id)
          ..add('name', name)
          ..add('address', address)
          ..add('phoneNo', phoneNo)
          ..add('bookCount', bookCount))
        .toString();
  }
}

class BuiltBookPublisherBuilder
    implements Builder<BuiltBookPublisher, BuiltBookPublisherBuilder> {
  _$BuiltBookPublisher _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _phoneNo;
  String get phoneNo => _$this._phoneNo;
  set phoneNo(String phoneNo) => _$this._phoneNo = phoneNo;

  int _bookCount;
  int get bookCount => _$this._bookCount;
  set bookCount(int bookCount) => _$this._bookCount = bookCount;

  BuiltBookPublisherBuilder();

  BuiltBookPublisherBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _address = _$v.address;
      _phoneNo = _$v.phoneNo;
      _bookCount = _$v.bookCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltBookPublisher other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookPublisher;
  }

  @override
  void update(void Function(BuiltBookPublisherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookPublisher build() {
    final _$result = _$v ??
        new _$BuiltBookPublisher._(
            id: id,
            name: name,
            address: address,
            phoneNo: phoneNo,
            bookCount: bookCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
