// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_random_quote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltRandomQuote> _$builtRandomQuoteSerializer =
    new _$BuiltRandomQuoteSerializer();
Serializer<BuiltQuote> _$builtQuoteSerializer = new _$BuiltQuoteSerializer();

class _$BuiltRandomQuoteSerializer
    implements StructuredSerializer<BuiltRandomQuote> {
  @override
  final Iterable<Type> types = const [BuiltRandomQuote, _$BuiltRandomQuote];
  @override
  final String wireName = 'BuiltRandomQuote';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltRandomQuote object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'quote',
      serializers.serialize(object.quote,
          specifiedType: const FullType(BuiltQuote)),
    ];

    return result;
  }

  @override
  BuiltRandomQuote deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltRandomQuoteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'quote':
          result.quote.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltQuote)) as BuiltQuote);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltQuoteSerializer implements StructuredSerializer<BuiltQuote> {
  @override
  final Iterable<Type> types = const [BuiltQuote, _$BuiltQuote];
  @override
  final String wireName = 'BuiltQuote';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltQuote object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.summery != null) {
      result
        ..add('summery')
        ..add(serializers.serialize(object.summery,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.authorName != null) {
      result
        ..add('quoteauthor_name')
        ..add(serializers.serialize(object.authorName,
            specifiedType: const FullType(String)));
    }
    if (object.categoryNameMM != null) {
      result
        ..add('quotecategory_name_mm')
        ..add(serializers.serialize(object.categoryNameMM,
            specifiedType: const FullType(String)));
    }
    if (object.categoryNameEN != null) {
      result
        ..add('quotecategory_name_en')
        ..add(serializers.serialize(object.categoryNameEN,
            specifiedType: const FullType(String)));
    }
    if (object.authorImage != null) {
      result
        ..add('quoteauthor_image')
        ..add(serializers.serialize(object.authorImage,
            specifiedType: const FullType(String)));
    }
    if (object.authorShareImage != null) {
      result
        ..add('quoteauthor_share_image')
        ..add(serializers.serialize(object.authorShareImage,
            specifiedType: const FullType(String)));
    }
    if (object.reference != null) {
      result
        ..add('reference')
        ..add(serializers.serialize(object.reference,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltQuote deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltQuoteBuilder();

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
        case 'summery':
          result.summery = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quoteauthor_name':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quotecategory_name_mm':
          result.categoryNameMM = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quotecategory_name_en':
          result.categoryNameEN = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quoteauthor_image':
          result.authorImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quoteauthor_share_image':
          result.authorShareImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reference':
          result.reference = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltRandomQuote extends BuiltRandomQuote {
  @override
  final BuiltQuote quote;

  factory _$BuiltRandomQuote(
          [void Function(BuiltRandomQuoteBuilder) updates]) =>
      (new BuiltRandomQuoteBuilder()..update(updates)).build();

  _$BuiltRandomQuote._({this.quote}) : super._() {
    if (quote == null) {
      throw new BuiltValueNullFieldError('BuiltRandomQuote', 'quote');
    }
  }

  @override
  BuiltRandomQuote rebuild(void Function(BuiltRandomQuoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltRandomQuoteBuilder toBuilder() =>
      new BuiltRandomQuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltRandomQuote && quote == other.quote;
  }

  @override
  int get hashCode {
    return $jf($jc(0, quote.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltRandomQuote')
          ..add('quote', quote))
        .toString();
  }
}

class BuiltRandomQuoteBuilder
    implements Builder<BuiltRandomQuote, BuiltRandomQuoteBuilder> {
  _$BuiltRandomQuote _$v;

  BuiltQuoteBuilder _quote;
  BuiltQuoteBuilder get quote => _$this._quote ??= new BuiltQuoteBuilder();
  set quote(BuiltQuoteBuilder quote) => _$this._quote = quote;

  BuiltRandomQuoteBuilder();

  BuiltRandomQuoteBuilder get _$this {
    if (_$v != null) {
      _quote = _$v.quote?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltRandomQuote other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltRandomQuote;
  }

  @override
  void update(void Function(BuiltRandomQuoteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltRandomQuote build() {
    _$BuiltRandomQuote _$result;
    try {
      _$result = _$v ?? new _$BuiltRandomQuote._(quote: quote.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'quote';
        quote.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltRandomQuote', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltQuote extends BuiltQuote {
  @override
  final int id;
  @override
  final String summery;
  @override
  final String content;
  @override
  final String authorName;
  @override
  final String categoryNameMM;
  @override
  final String categoryNameEN;
  @override
  final String authorImage;
  @override
  final String authorShareImage;
  @override
  final String reference;

  factory _$BuiltQuote([void Function(BuiltQuoteBuilder) updates]) =>
      (new BuiltQuoteBuilder()..update(updates)).build();

  _$BuiltQuote._(
      {this.id,
      this.summery,
      this.content,
      this.authorName,
      this.categoryNameMM,
      this.categoryNameEN,
      this.authorImage,
      this.authorShareImage,
      this.reference})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltQuote', 'id');
    }
  }

  @override
  BuiltQuote rebuild(void Function(BuiltQuoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltQuoteBuilder toBuilder() => new BuiltQuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltQuote &&
        id == other.id &&
        summery == other.summery &&
        content == other.content &&
        authorName == other.authorName &&
        categoryNameMM == other.categoryNameMM &&
        categoryNameEN == other.categoryNameEN &&
        authorImage == other.authorImage &&
        authorShareImage == other.authorShareImage &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), summery.hashCode),
                                content.hashCode),
                            authorName.hashCode),
                        categoryNameMM.hashCode),
                    categoryNameEN.hashCode),
                authorImage.hashCode),
            authorShareImage.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltQuote')
          ..add('id', id)
          ..add('summery', summery)
          ..add('content', content)
          ..add('authorName', authorName)
          ..add('categoryNameMM', categoryNameMM)
          ..add('categoryNameEN', categoryNameEN)
          ..add('authorImage', authorImage)
          ..add('authorShareImage', authorShareImage)
          ..add('reference', reference))
        .toString();
  }
}

class BuiltQuoteBuilder implements Builder<BuiltQuote, BuiltQuoteBuilder> {
  _$BuiltQuote _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _summery;
  String get summery => _$this._summery;
  set summery(String summery) => _$this._summery = summery;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  String _categoryNameMM;
  String get categoryNameMM => _$this._categoryNameMM;
  set categoryNameMM(String categoryNameMM) =>
      _$this._categoryNameMM = categoryNameMM;

  String _categoryNameEN;
  String get categoryNameEN => _$this._categoryNameEN;
  set categoryNameEN(String categoryNameEN) =>
      _$this._categoryNameEN = categoryNameEN;

  String _authorImage;
  String get authorImage => _$this._authorImage;
  set authorImage(String authorImage) => _$this._authorImage = authorImage;

  String _authorShareImage;
  String get authorShareImage => _$this._authorShareImage;
  set authorShareImage(String authorShareImage) =>
      _$this._authorShareImage = authorShareImage;

  String _reference;
  String get reference => _$this._reference;
  set reference(String reference) => _$this._reference = reference;

  BuiltQuoteBuilder();

  BuiltQuoteBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _summery = _$v.summery;
      _content = _$v.content;
      _authorName = _$v.authorName;
      _categoryNameMM = _$v.categoryNameMM;
      _categoryNameEN = _$v.categoryNameEN;
      _authorImage = _$v.authorImage;
      _authorShareImage = _$v.authorShareImage;
      _reference = _$v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltQuote other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltQuote;
  }

  @override
  void update(void Function(BuiltQuoteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltQuote build() {
    final _$result = _$v ??
        new _$BuiltQuote._(
            id: id,
            summery: summery,
            content: content,
            authorName: authorName,
            categoryNameMM: categoryNameMM,
            categoryNameEN: categoryNameEN,
            authorImage: authorImage,
            authorShareImage: authorShareImage,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
