// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_news_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltNewsDetail> _$builtNewsDetailSerializer =
    new _$BuiltNewsDetailSerializer();

class _$BuiltNewsDetailSerializer
    implements StructuredSerializer<BuiltNewsDetail> {
  @override
  final Iterable<Type> types = const [BuiltNewsDetail, _$BuiltNewsDetail];
  @override
  final String wireName = 'BuiltNewsDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltNewsDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'post_id',
      serializers.serialize(object.postId, specifiedType: const FullType(int)),
    ];
    if (object.postTitle != null) {
      result
        ..add('post_title')
        ..add(serializers.serialize(object.postTitle,
            specifiedType: const FullType(String)));
    }
    if (object.postContent != null) {
      result
        ..add('post_content')
        ..add(serializers.serialize(object.postContent,
            specifiedType: const FullType(String)));
    }
    if (object.authorName != null) {
      result
        ..add('author_name')
        ..add(serializers.serialize(object.authorName,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltNewsDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltNewsDetailBuilder();

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
        case 'post_title':
          result.postTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_content':
          result.postContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_name':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltNewsDetail extends BuiltNewsDetail {
  @override
  final int postId;
  @override
  final String postTitle;
  @override
  final String postContent;
  @override
  final String authorName;
  @override
  final String date;
  @override
  final String image;

  factory _$BuiltNewsDetail([void Function(BuiltNewsDetailBuilder) updates]) =>
      (new BuiltNewsDetailBuilder()..update(updates)).build();

  _$BuiltNewsDetail._(
      {this.postId,
      this.postTitle,
      this.postContent,
      this.authorName,
      this.date,
      this.image})
      : super._() {
    if (postId == null) {
      throw new BuiltValueNullFieldError('BuiltNewsDetail', 'postId');
    }
  }

  @override
  BuiltNewsDetail rebuild(void Function(BuiltNewsDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltNewsDetailBuilder toBuilder() =>
      new BuiltNewsDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltNewsDetail &&
        postId == other.postId &&
        postTitle == other.postTitle &&
        postContent == other.postContent &&
        authorName == other.authorName &&
        date == other.date &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, postId.hashCode), postTitle.hashCode),
                    postContent.hashCode),
                authorName.hashCode),
            date.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltNewsDetail')
          ..add('postId', postId)
          ..add('postTitle', postTitle)
          ..add('postContent', postContent)
          ..add('authorName', authorName)
          ..add('date', date)
          ..add('image', image))
        .toString();
  }
}

class BuiltNewsDetailBuilder
    implements Builder<BuiltNewsDetail, BuiltNewsDetailBuilder> {
  _$BuiltNewsDetail _$v;

  int _postId;
  int get postId => _$this._postId;
  set postId(int postId) => _$this._postId = postId;

  String _postTitle;
  String get postTitle => _$this._postTitle;
  set postTitle(String postTitle) => _$this._postTitle = postTitle;

  String _postContent;
  String get postContent => _$this._postContent;
  set postContent(String postContent) => _$this._postContent = postContent;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  BuiltNewsDetailBuilder();

  BuiltNewsDetailBuilder get _$this {
    if (_$v != null) {
      _postId = _$v.postId;
      _postTitle = _$v.postTitle;
      _postContent = _$v.postContent;
      _authorName = _$v.authorName;
      _date = _$v.date;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltNewsDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltNewsDetail;
  }

  @override
  void update(void Function(BuiltNewsDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltNewsDetail build() {
    final _$result = _$v ??
        new _$BuiltNewsDetail._(
            postId: postId,
            postTitle: postTitle,
            postContent: postContent,
            authorName: authorName,
            date: date,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
