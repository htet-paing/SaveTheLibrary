// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_library_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltLibraries> _$builtLibrariesSerializer =
    new _$BuiltLibrariesSerializer();
Serializer<BuiltLibraryList> _$builtLibraryListSerializer =
    new _$BuiltLibraryListSerializer();
Serializer<BuiltLibrary> _$builtLibrarySerializer =
    new _$BuiltLibrarySerializer();

class _$BuiltLibrariesSerializer
    implements StructuredSerializer<BuiltLibraries> {
  @override
  final Iterable<Type> types = const [BuiltLibraries, _$BuiltLibraries];
  @override
  final String wireName = 'BuiltLibraries';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltLibraries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'libraries',
      serializers.serialize(object.libraries,
          specifiedType: const FullType(BuiltLibraryList)),
    ];

    return result;
  }

  @override
  BuiltLibraries deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltLibrariesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'libraries':
          result.libraries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltLibraryList))
              as BuiltLibraryList);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltLibraryListSerializer
    implements StructuredSerializer<BuiltLibraryList> {
  @override
  final Iterable<Type> types = const [BuiltLibraryList, _$BuiltLibraryList];
  @override
  final String wireName = 'BuiltLibraryList';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltLibraryList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltLibrary)])),
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
  BuiltLibraryList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltLibraryListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltLibrary)]))
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

class _$BuiltLibrarySerializer implements StructuredSerializer<BuiltLibrary> {
  @override
  final Iterable<Type> types = const [BuiltLibrary, _$BuiltLibrary];
  @override
  final String wireName = 'BuiltLibrary';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltLibrary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'libraries_id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.name != null) {
      result
        ..add('libraries_name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.townshipName != null) {
      result
        ..add('township_name')
        ..add(serializers.serialize(object.townshipName,
            specifiedType: const FullType(String)));
    }
    if (object.villageTractName != null) {
      result
        ..add('villagetract_name')
        ..add(serializers.serialize(object.villageTractName,
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
  BuiltLibrary deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltLibraryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'libraries_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'libraries_name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'township_name':
          result.townshipName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'villagetract_name':
          result.villageTractName = serializers.deserialize(value,
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

class _$BuiltLibraries extends BuiltLibraries {
  @override
  final BuiltLibraryList libraries;

  factory _$BuiltLibraries([void Function(BuiltLibrariesBuilder) updates]) =>
      (new BuiltLibrariesBuilder()..update(updates)).build();

  _$BuiltLibraries._({this.libraries}) : super._() {
    if (libraries == null) {
      throw new BuiltValueNullFieldError('BuiltLibraries', 'libraries');
    }
  }

  @override
  BuiltLibraries rebuild(void Function(BuiltLibrariesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltLibrariesBuilder toBuilder() =>
      new BuiltLibrariesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltLibraries && libraries == other.libraries;
  }

  @override
  int get hashCode {
    return $jf($jc(0, libraries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltLibraries')
          ..add('libraries', libraries))
        .toString();
  }
}

class BuiltLibrariesBuilder
    implements Builder<BuiltLibraries, BuiltLibrariesBuilder> {
  _$BuiltLibraries _$v;

  BuiltLibraryListBuilder _libraries;
  BuiltLibraryListBuilder get libraries =>
      _$this._libraries ??= new BuiltLibraryListBuilder();
  set libraries(BuiltLibraryListBuilder libraries) =>
      _$this._libraries = libraries;

  BuiltLibrariesBuilder();

  BuiltLibrariesBuilder get _$this {
    if (_$v != null) {
      _libraries = _$v.libraries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltLibraries other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltLibraries;
  }

  @override
  void update(void Function(BuiltLibrariesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltLibraries build() {
    _$BuiltLibraries _$result;
    try {
      _$result = _$v ?? new _$BuiltLibraries._(libraries: libraries.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'libraries';
        libraries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltLibraries', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltLibraryList extends BuiltLibraryList {
  @override
  final BuiltList<BuiltLibrary> data;
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

  factory _$BuiltLibraryList(
          [void Function(BuiltLibraryListBuilder) updates]) =>
      (new BuiltLibraryListBuilder()..update(updates)).build();

  _$BuiltLibraryList._(
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
      throw new BuiltValueNullFieldError('BuiltLibraryList', 'data');
    }
  }

  @override
  BuiltLibraryList rebuild(void Function(BuiltLibraryListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltLibraryListBuilder toBuilder() =>
      new BuiltLibraryListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltLibraryList &&
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
    return (newBuiltValueToStringHelper('BuiltLibraryList')
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

class BuiltLibraryListBuilder
    implements Builder<BuiltLibraryList, BuiltLibraryListBuilder> {
  _$BuiltLibraryList _$v;

  ListBuilder<BuiltLibrary> _data;
  ListBuilder<BuiltLibrary> get data =>
      _$this._data ??= new ListBuilder<BuiltLibrary>();
  set data(ListBuilder<BuiltLibrary> data) => _$this._data = data;

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

  BuiltLibraryListBuilder();

  BuiltLibraryListBuilder get _$this {
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
  void replace(BuiltLibraryList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltLibraryList;
  }

  @override
  void update(void Function(BuiltLibraryListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltLibraryList build() {
    _$BuiltLibraryList _$result;
    try {
      _$result = _$v ??
          new _$BuiltLibraryList._(
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
            'BuiltLibraryList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltLibrary extends BuiltLibrary {
  @override
  final int id;
  @override
  final String name;
  @override
  final String townshipName;
  @override
  final String villageTractName;
  @override
  final String image;
  @override
  final String featureImagePath;
  @override
  final String thumbImagePath;
  @override
  final BuiltList<BuiltMedia> media;

  factory _$BuiltLibrary([void Function(BuiltLibraryBuilder) updates]) =>
      (new BuiltLibraryBuilder()..update(updates)).build();

  _$BuiltLibrary._(
      {this.id,
      this.name,
      this.townshipName,
      this.villageTractName,
      this.image,
      this.featureImagePath,
      this.thumbImagePath,
      this.media})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltLibrary', 'id');
    }
  }

  @override
  BuiltLibrary rebuild(void Function(BuiltLibraryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltLibraryBuilder toBuilder() => new BuiltLibraryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltLibrary &&
        id == other.id &&
        name == other.name &&
        townshipName == other.townshipName &&
        villageTractName == other.villageTractName &&
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
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            townshipName.hashCode),
                        villageTractName.hashCode),
                    image.hashCode),
                featureImagePath.hashCode),
            thumbImagePath.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltLibrary')
          ..add('id', id)
          ..add('name', name)
          ..add('townshipName', townshipName)
          ..add('villageTractName', villageTractName)
          ..add('image', image)
          ..add('featureImagePath', featureImagePath)
          ..add('thumbImagePath', thumbImagePath)
          ..add('media', media))
        .toString();
  }
}

class BuiltLibraryBuilder
    implements Builder<BuiltLibrary, BuiltLibraryBuilder> {
  _$BuiltLibrary _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _townshipName;
  String get townshipName => _$this._townshipName;
  set townshipName(String townshipName) => _$this._townshipName = townshipName;

  String _villageTractName;
  String get villageTractName => _$this._villageTractName;
  set villageTractName(String villageTractName) =>
      _$this._villageTractName = villageTractName;

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

  BuiltLibraryBuilder();

  BuiltLibraryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _townshipName = _$v.townshipName;
      _villageTractName = _$v.villageTractName;
      _image = _$v.image;
      _featureImagePath = _$v.featureImagePath;
      _thumbImagePath = _$v.thumbImagePath;
      _media = _$v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltLibrary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltLibrary;
  }

  @override
  void update(void Function(BuiltLibraryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltLibrary build() {
    _$BuiltLibrary _$result;
    try {
      _$result = _$v ??
          new _$BuiltLibrary._(
              id: id,
              name: name,
              townshipName: townshipName,
              villageTractName: villageTractName,
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
            'BuiltLibrary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
