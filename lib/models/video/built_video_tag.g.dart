// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_video_tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltVideoTag> _$builtVideoTagSerializer =
    new _$BuiltVideoTagSerializer();
Serializer<BuiltPivot> _$builtPivotSerializer = new _$BuiltPivotSerializer();

class _$BuiltVideoTagSerializer implements StructuredSerializer<BuiltVideoTag> {
  @override
  final Iterable<Type> types = const [BuiltVideoTag, _$BuiltVideoTag];
  @override
  final String wireName = 'BuiltVideoTag';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltVideoTag object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.tagName != null) {
      result
        ..add('tag_name')
        ..add(serializers.serialize(object.tagName,
            specifiedType: const FullType(String)));
    }
    if (object.tagDescription != null) {
      result
        ..add('tag_description')
        ..add(serializers.serialize(object.tagDescription,
            specifiedType: const FullType(String)));
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
    if (object.pivot != null) {
      result
        ..add('pivot')
        ..add(serializers.serialize(object.pivot,
            specifiedType: const FullType(BuiltPivot)));
    }
    return result;
  }

  @override
  BuiltVideoTag deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltVideoTagBuilder();

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
        case 'tag_name':
          result.tagName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tag_description':
          result.tagDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pivot':
          result.pivot.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltPivot)) as BuiltPivot);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltPivotSerializer implements StructuredSerializer<BuiltPivot> {
  @override
  final Iterable<Type> types = const [BuiltPivot, _$BuiltPivot];
  @override
  final String wireName = 'BuiltPivot';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltPivot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'post_id',
      serializers.serialize(object.postId, specifiedType: const FullType(int)),
    ];
    if (object.tagId != null) {
      result
        ..add('tag_id')
        ..add(serializers.serialize(object.tagId,
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
    return result;
  }

  @override
  BuiltPivot deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPivotBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'post_id':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tag_id':
          result.tagId = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$BuiltVideoTag extends BuiltVideoTag {
  @override
  final int id;
  @override
  final String tagName;
  @override
  final String tagDescription;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final BuiltPivot pivot;

  factory _$BuiltVideoTag([void Function(BuiltVideoTagBuilder) updates]) =>
      (new BuiltVideoTagBuilder()..update(updates)).build();

  _$BuiltVideoTag._(
      {this.id,
      this.tagName,
      this.tagDescription,
      this.createdAt,
      this.updatedAt,
      this.pivot})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltVideoTag', 'id');
    }
  }

  @override
  BuiltVideoTag rebuild(void Function(BuiltVideoTagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltVideoTagBuilder toBuilder() => new BuiltVideoTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltVideoTag &&
        id == other.id &&
        tagName == other.tagName &&
        tagDescription == other.tagDescription &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        pivot == other.pivot;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), tagName.hashCode),
                    tagDescription.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        pivot.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltVideoTag')
          ..add('id', id)
          ..add('tagName', tagName)
          ..add('tagDescription', tagDescription)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('pivot', pivot))
        .toString();
  }
}

class BuiltVideoTagBuilder
    implements Builder<BuiltVideoTag, BuiltVideoTagBuilder> {
  _$BuiltVideoTag _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _tagName;
  String get tagName => _$this._tagName;
  set tagName(String tagName) => _$this._tagName = tagName;

  String _tagDescription;
  String get tagDescription => _$this._tagDescription;
  set tagDescription(String tagDescription) =>
      _$this._tagDescription = tagDescription;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  BuiltPivotBuilder _pivot;
  BuiltPivotBuilder get pivot => _$this._pivot ??= new BuiltPivotBuilder();
  set pivot(BuiltPivotBuilder pivot) => _$this._pivot = pivot;

  BuiltVideoTagBuilder();

  BuiltVideoTagBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _tagName = _$v.tagName;
      _tagDescription = _$v.tagDescription;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _pivot = _$v.pivot?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltVideoTag other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltVideoTag;
  }

  @override
  void update(void Function(BuiltVideoTagBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltVideoTag build() {
    _$BuiltVideoTag _$result;
    try {
      _$result = _$v ??
          new _$BuiltVideoTag._(
              id: id,
              tagName: tagName,
              tagDescription: tagDescription,
              createdAt: createdAt,
              updatedAt: updatedAt,
              pivot: _pivot?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pivot';
        _pivot?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltVideoTag', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltPivot extends BuiltPivot {
  @override
  final int postId;
  @override
  final int tagId;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$BuiltPivot([void Function(BuiltPivotBuilder) updates]) =>
      (new BuiltPivotBuilder()..update(updates)).build();

  _$BuiltPivot._({this.postId, this.tagId, this.createdAt, this.updatedAt})
      : super._() {
    if (postId == null) {
      throw new BuiltValueNullFieldError('BuiltPivot', 'postId');
    }
  }

  @override
  BuiltPivot rebuild(void Function(BuiltPivotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPivotBuilder toBuilder() => new BuiltPivotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPivot &&
        postId == other.postId &&
        tagId == other.tagId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, postId.hashCode), tagId.hashCode), createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltPivot')
          ..add('postId', postId)
          ..add('tagId', tagId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class BuiltPivotBuilder implements Builder<BuiltPivot, BuiltPivotBuilder> {
  _$BuiltPivot _$v;

  int _postId;
  int get postId => _$this._postId;
  set postId(int postId) => _$this._postId = postId;

  int _tagId;
  int get tagId => _$this._tagId;
  set tagId(int tagId) => _$this._tagId = tagId;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  BuiltPivotBuilder();

  BuiltPivotBuilder get _$this {
    if (_$v != null) {
      _postId = _$v.postId;
      _tagId = _$v.tagId;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltPivot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltPivot;
  }

  @override
  void update(void Function(BuiltPivotBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPivot build() {
    final _$result = _$v ??
        new _$BuiltPivot._(
            postId: postId,
            tagId: tagId,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
