// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_app_version.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAppVersion> _$builtAppVersionSerializer =
    new _$BuiltAppVersionSerializer();

class _$BuiltAppVersionSerializer
    implements StructuredSerializer<BuiltAppVersion> {
  @override
  final Iterable<Type> types = const [BuiltAppVersion, _$BuiltAppVersion];
  @override
  final String wireName = 'BuiltAppVersion';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAppVersion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'version',
      serializers.serialize(object.version, specifiedType: const FullType(int)),
      'current_version',
      serializers.serialize(object.currentVersion,
          specifiedType: const FullType(String)),
      'playstore_link',
      serializers.serialize(object.playstoreLink,
          specifiedType: const FullType(String)),
      'direct_link',
      serializers.serialize(object.directLink,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltAppVersion deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAppVersionBuilder();

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
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'current_version':
          result.currentVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'playstore_link':
          result.playstoreLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'direct_link':
          result.directLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAppVersion extends BuiltAppVersion {
  @override
  final int id;
  @override
  final int version;
  @override
  final String currentVersion;
  @override
  final String playstoreLink;
  @override
  final String directLink;

  factory _$BuiltAppVersion([void Function(BuiltAppVersionBuilder) updates]) =>
      (new BuiltAppVersionBuilder()..update(updates)).build();

  _$BuiltAppVersion._(
      {this.id,
      this.version,
      this.currentVersion,
      this.playstoreLink,
      this.directLink})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltAppVersion', 'id');
    }
    if (version == null) {
      throw new BuiltValueNullFieldError('BuiltAppVersion', 'version');
    }
    if (currentVersion == null) {
      throw new BuiltValueNullFieldError('BuiltAppVersion', 'currentVersion');
    }
    if (playstoreLink == null) {
      throw new BuiltValueNullFieldError('BuiltAppVersion', 'playstoreLink');
    }
    if (directLink == null) {
      throw new BuiltValueNullFieldError('BuiltAppVersion', 'directLink');
    }
  }

  @override
  BuiltAppVersion rebuild(void Function(BuiltAppVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAppVersionBuilder toBuilder() =>
      new BuiltAppVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAppVersion &&
        id == other.id &&
        version == other.version &&
        currentVersion == other.currentVersion &&
        playstoreLink == other.playstoreLink &&
        directLink == other.directLink;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), version.hashCode),
                currentVersion.hashCode),
            playstoreLink.hashCode),
        directLink.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAppVersion')
          ..add('id', id)
          ..add('version', version)
          ..add('currentVersion', currentVersion)
          ..add('playstoreLink', playstoreLink)
          ..add('directLink', directLink))
        .toString();
  }
}

class BuiltAppVersionBuilder
    implements Builder<BuiltAppVersion, BuiltAppVersionBuilder> {
  _$BuiltAppVersion _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _version;
  int get version => _$this._version;
  set version(int version) => _$this._version = version;

  String _currentVersion;
  String get currentVersion => _$this._currentVersion;
  set currentVersion(String currentVersion) =>
      _$this._currentVersion = currentVersion;

  String _playstoreLink;
  String get playstoreLink => _$this._playstoreLink;
  set playstoreLink(String playstoreLink) =>
      _$this._playstoreLink = playstoreLink;

  String _directLink;
  String get directLink => _$this._directLink;
  set directLink(String directLink) => _$this._directLink = directLink;

  BuiltAppVersionBuilder();

  BuiltAppVersionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _version = _$v.version;
      _currentVersion = _$v.currentVersion;
      _playstoreLink = _$v.playstoreLink;
      _directLink = _$v.directLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAppVersion other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAppVersion;
  }

  @override
  void update(void Function(BuiltAppVersionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAppVersion build() {
    final _$result = _$v ??
        new _$BuiltAppVersion._(
            id: id,
            version: version,
            currentVersion: currentVersion,
            playstoreLink: playstoreLink,
            directLink: directLink);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
