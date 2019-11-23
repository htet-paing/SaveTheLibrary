// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_division.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltDivisions> _$builtDivisionsSerializer =
    new _$BuiltDivisionsSerializer();
Serializer<BuiltDivision> _$builtDivisionSerializer =
    new _$BuiltDivisionSerializer();

class _$BuiltDivisionsSerializer
    implements StructuredSerializer<BuiltDivisions> {
  @override
  final Iterable<Type> types = const [BuiltDivisions, _$BuiltDivisions];
  @override
  final String wireName = 'BuiltDivisions';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltDivisions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'states',
      serializers.serialize(object.states,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltDivision)])),
    ];

    return result;
  }

  @override
  BuiltDivisions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltDivisionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'states':
          result.states.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltDivision)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltDivisionSerializer implements StructuredSerializer<BuiltDivision> {
  @override
  final Iterable<Type> types = const [BuiltDivision, _$BuiltDivision];
  @override
  final String wireName = 'BuiltDivision';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltDivision object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.stateDivisionCode != null) {
      result
        ..add('state_division_code')
        ..add(serializers.serialize(object.stateDivisionCode,
            specifiedType: const FullType(String)));
    }
    if (object.stateDivision != null) {
      result
        ..add('state_division')
        ..add(serializers.serialize(object.stateDivision,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltDivision deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltDivisionBuilder();

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
        case 'state_division_code':
          result.stateDivisionCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state_division':
          result.stateDivision = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltDivisions extends BuiltDivisions {
  @override
  final BuiltList<BuiltDivision> states;

  factory _$BuiltDivisions([void Function(BuiltDivisionsBuilder) updates]) =>
      (new BuiltDivisionsBuilder()..update(updates)).build();

  _$BuiltDivisions._({this.states}) : super._() {
    if (states == null) {
      throw new BuiltValueNullFieldError('BuiltDivisions', 'states');
    }
  }

  @override
  BuiltDivisions rebuild(void Function(BuiltDivisionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltDivisionsBuilder toBuilder() =>
      new BuiltDivisionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltDivisions && states == other.states;
  }

  @override
  int get hashCode {
    return $jf($jc(0, states.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltDivisions')
          ..add('states', states))
        .toString();
  }
}

class BuiltDivisionsBuilder
    implements Builder<BuiltDivisions, BuiltDivisionsBuilder> {
  _$BuiltDivisions _$v;

  ListBuilder<BuiltDivision> _states;
  ListBuilder<BuiltDivision> get states =>
      _$this._states ??= new ListBuilder<BuiltDivision>();
  set states(ListBuilder<BuiltDivision> states) => _$this._states = states;

  BuiltDivisionsBuilder();

  BuiltDivisionsBuilder get _$this {
    if (_$v != null) {
      _states = _$v.states?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltDivisions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltDivisions;
  }

  @override
  void update(void Function(BuiltDivisionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltDivisions build() {
    _$BuiltDivisions _$result;
    try {
      _$result = _$v ?? new _$BuiltDivisions._(states: states.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'states';
        states.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltDivisions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltDivision extends BuiltDivision {
  @override
  final int id;
  @override
  final String stateDivisionCode;
  @override
  final String stateDivision;

  factory _$BuiltDivision([void Function(BuiltDivisionBuilder) updates]) =>
      (new BuiltDivisionBuilder()..update(updates)).build();

  _$BuiltDivision._({this.id, this.stateDivisionCode, this.stateDivision})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltDivision', 'id');
    }
  }

  @override
  BuiltDivision rebuild(void Function(BuiltDivisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltDivisionBuilder toBuilder() => new BuiltDivisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltDivision &&
        id == other.id &&
        stateDivisionCode == other.stateDivisionCode &&
        stateDivision == other.stateDivision;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), stateDivisionCode.hashCode),
        stateDivision.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltDivision')
          ..add('id', id)
          ..add('stateDivisionCode', stateDivisionCode)
          ..add('stateDivision', stateDivision))
        .toString();
  }
}

class BuiltDivisionBuilder
    implements Builder<BuiltDivision, BuiltDivisionBuilder> {
  _$BuiltDivision _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _stateDivisionCode;
  String get stateDivisionCode => _$this._stateDivisionCode;
  set stateDivisionCode(String stateDivisionCode) =>
      _$this._stateDivisionCode = stateDivisionCode;

  String _stateDivision;
  String get stateDivision => _$this._stateDivision;
  set stateDivision(String stateDivision) =>
      _$this._stateDivision = stateDivision;

  BuiltDivisionBuilder();

  BuiltDivisionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _stateDivisionCode = _$v.stateDivisionCode;
      _stateDivision = _$v.stateDivision;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltDivision other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltDivision;
  }

  @override
  void update(void Function(BuiltDivisionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltDivision build() {
    final _$result = _$v ??
        new _$BuiltDivision._(
            id: id,
            stateDivisionCode: stateDivisionCode,
            stateDivision: stateDivision);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
