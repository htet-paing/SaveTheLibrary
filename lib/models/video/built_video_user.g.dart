// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_video_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltVideoUser> _$builtVideoUserSerializer =
    new _$BuiltVideoUserSerializer();

class _$BuiltVideoUserSerializer
    implements StructuredSerializer<BuiltVideoUser> {
  @override
  final Iterable<Type> types = const [BuiltVideoUser, _$BuiltVideoUser];
  @override
  final String wireName = 'BuiltVideoUser';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltVideoUser object,
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
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.superadmin != null) {
      result
        ..add('super_admin')
        ..add(serializers.serialize(object.superadmin,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.profile != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(object.profile,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltVideoUser deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltVideoUserBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'super_admin':
          result.superadmin = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile':
          result.profile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltVideoUser extends BuiltVideoUser {
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String type;
  @override
  final int superadmin;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String profile;

  factory _$BuiltVideoUser([void Function(BuiltVideoUserBuilder) updates]) =>
      (new BuiltVideoUserBuilder()..update(updates)).build();

  _$BuiltVideoUser._(
      {this.id,
      this.name,
      this.email,
      this.type,
      this.superadmin,
      this.createdAt,
      this.updatedAt,
      this.profile})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltVideoUser', 'id');
    }
  }

  @override
  BuiltVideoUser rebuild(void Function(BuiltVideoUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltVideoUserBuilder toBuilder() =>
      new BuiltVideoUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltVideoUser &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        type == other.type &&
        superadmin == other.superadmin &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            email.hashCode),
                        type.hashCode),
                    superadmin.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        profile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltVideoUser')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('type', type)
          ..add('superadmin', superadmin)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('profile', profile))
        .toString();
  }
}

class BuiltVideoUserBuilder
    implements Builder<BuiltVideoUser, BuiltVideoUserBuilder> {
  _$BuiltVideoUser _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _superadmin;
  int get superadmin => _$this._superadmin;
  set superadmin(int superadmin) => _$this._superadmin = superadmin;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _profile;
  String get profile => _$this._profile;
  set profile(String profile) => _$this._profile = profile;

  BuiltVideoUserBuilder();

  BuiltVideoUserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _email = _$v.email;
      _type = _$v.type;
      _superadmin = _$v.superadmin;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _profile = _$v.profile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltVideoUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltVideoUser;
  }

  @override
  void update(void Function(BuiltVideoUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltVideoUser build() {
    final _$result = _$v ??
        new _$BuiltVideoUser._(
            id: id,
            name: name,
            email: email,
            type: type,
            superadmin: superadmin,
            createdAt: createdAt,
            updatedAt: updatedAt,
            profile: profile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
