// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_video_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltVideoAuthor> _$builtVideoAuthorSerializer =
    new _$BuiltVideoAuthorSerializer();

class _$BuiltVideoAuthorSerializer
    implements StructuredSerializer<BuiltVideoAuthor> {
  @override
  final Iterable<Type> types = const [BuiltVideoAuthor, _$BuiltVideoAuthor];
  @override
  final String wireName = 'BuiltVideoAuthor';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltVideoAuthor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.biography != null) {
      result
        ..add('biography')
        ..add(serializers.serialize(object.biography,
            specifiedType: const FullType(String)));
    }
    if (object.authorName != null) {
      result
        ..add('author_name')
        ..add(serializers.serialize(object.authorName,
            specifiedType: const FullType(String)));
    }
    if (object.penName != null) {
      result
        ..add('pen_name')
        ..add(serializers.serialize(object.penName,
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
    if (object.featureImage != null) {
      result
        ..add('feature_image')
        ..add(serializers.serialize(object.featureImage,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BuiltMedia)])));
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
  BuiltVideoAuthor deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltVideoAuthorBuilder();

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
        case 'biography':
          result.biography = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_name':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pen_name':
          result.penName = serializers.deserialize(value,
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
        case 'feature_image_path':
          result.featureImagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumb_image_path':
          result.thumbImagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'feature_image':
          result.featureImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltMedia)]))
              as BuiltList<dynamic>);
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

class _$BuiltVideoAuthor extends BuiltVideoAuthor {
  @override
  final int id;
  @override
  final String biography;
  @override
  final String authorName;
  @override
  final String penName;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String featureImagePath;
  @override
  final String thumbImagePath;
  @override
  final BuiltList<BuiltMedia> featureImage;
  @override
  final BuiltList<BuiltMedia> media;

  factory _$BuiltVideoAuthor(
          [void Function(BuiltVideoAuthorBuilder) updates]) =>
      (new BuiltVideoAuthorBuilder()..update(updates)).build();

  _$BuiltVideoAuthor._(
      {this.id,
      this.biography,
      this.authorName,
      this.penName,
      this.createdAt,
      this.updatedAt,
      this.featureImagePath,
      this.thumbImagePath,
      this.featureImage,
      this.media})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltVideoAuthor', 'id');
    }
  }

  @override
  BuiltVideoAuthor rebuild(void Function(BuiltVideoAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltVideoAuthorBuilder toBuilder() =>
      new BuiltVideoAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltVideoAuthor &&
        id == other.id &&
        biography == other.biography &&
        authorName == other.authorName &&
        penName == other.penName &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        featureImagePath == other.featureImagePath &&
        thumbImagePath == other.thumbImagePath &&
        featureImage == other.featureImage &&
        media == other.media;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, id.hashCode),
                                        biography.hashCode),
                                    authorName.hashCode),
                                penName.hashCode),
                            createdAt.hashCode),
                        updatedAt.hashCode),
                    featureImagePath.hashCode),
                thumbImagePath.hashCode),
            featureImage.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltVideoAuthor')
          ..add('id', id)
          ..add('biography', biography)
          ..add('authorName', authorName)
          ..add('penName', penName)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('featureImagePath', featureImagePath)
          ..add('thumbImagePath', thumbImagePath)
          ..add('featureImage', featureImage)
          ..add('media', media))
        .toString();
  }
}

class BuiltVideoAuthorBuilder
    implements Builder<BuiltVideoAuthor, BuiltVideoAuthorBuilder> {
  _$BuiltVideoAuthor _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _biography;
  String get biography => _$this._biography;
  set biography(String biography) => _$this._biography = biography;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  String _penName;
  String get penName => _$this._penName;
  set penName(String penName) => _$this._penName = penName;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _featureImagePath;
  String get featureImagePath => _$this._featureImagePath;
  set featureImagePath(String featureImagePath) =>
      _$this._featureImagePath = featureImagePath;

  String _thumbImagePath;
  String get thumbImagePath => _$this._thumbImagePath;
  set thumbImagePath(String thumbImagePath) =>
      _$this._thumbImagePath = thumbImagePath;

  ListBuilder<BuiltMedia> _featureImage;
  ListBuilder<BuiltMedia> get featureImage =>
      _$this._featureImage ??= new ListBuilder<BuiltMedia>();
  set featureImage(ListBuilder<BuiltMedia> featureImage) =>
      _$this._featureImage = featureImage;

  ListBuilder<BuiltMedia> _media;
  ListBuilder<BuiltMedia> get media =>
      _$this._media ??= new ListBuilder<BuiltMedia>();
  set media(ListBuilder<BuiltMedia> media) => _$this._media = media;

  BuiltVideoAuthorBuilder();

  BuiltVideoAuthorBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _biography = _$v.biography;
      _authorName = _$v.authorName;
      _penName = _$v.penName;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _featureImagePath = _$v.featureImagePath;
      _thumbImagePath = _$v.thumbImagePath;
      _featureImage = _$v.featureImage?.toBuilder();
      _media = _$v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltVideoAuthor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltVideoAuthor;
  }

  @override
  void update(void Function(BuiltVideoAuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltVideoAuthor build() {
    _$BuiltVideoAuthor _$result;
    try {
      _$result = _$v ??
          new _$BuiltVideoAuthor._(
              id: id,
              biography: biography,
              authorName: authorName,
              penName: penName,
              createdAt: createdAt,
              updatedAt: updatedAt,
              featureImagePath: featureImagePath,
              thumbImagePath: thumbImagePath,
              featureImage: _featureImage?.build(),
              media: _media?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'featureImage';
        _featureImage?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltVideoAuthor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
