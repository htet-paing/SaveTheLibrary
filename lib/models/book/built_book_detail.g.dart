// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_book_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltBookDetail> _$builtBookDetailSerializer =
    new _$BuiltBookDetailSerializer();

class _$BuiltBookDetailSerializer
    implements StructuredSerializer<BuiltBookDetail> {
  @override
  final Iterable<Type> types = const [BuiltBookDetail, _$BuiltBookDetail];
  @override
  final String wireName = 'BuiltBookDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltBookDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'book_id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.bookName != null) {
      result
        ..add('book_name')
        ..add(serializers.serialize(object.bookName,
            specifiedType: const FullType(String)));
    }
    if (object.downloadLink != null) {
      result
        ..add('download_link')
        ..add(serializers.serialize(object.downloadLink,
            specifiedType: const FullType(String)));
    }
    if (object.subjects != null) {
      result
        ..add('subjects')
        ..add(serializers.serialize(object.subjects,
            specifiedType: const FullType(String)));
    }
    if (object.notes != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(object.notes,
            specifiedType: const FullType(String)));
    }
    if (object.bookAuthorName != null) {
      result
        ..add('bookauthor_name')
        ..add(serializers.serialize(object.bookAuthorName,
            specifiedType: const FullType(String)));
    }
    if (object.bookCategoryNameMM != null) {
      result
        ..add('bookcategory_name_mm')
        ..add(serializers.serialize(object.bookCategoryNameMM,
            specifiedType: const FullType(String)));
    }
    if (object.bookCategoryNameEN != null) {
      result
        ..add('bookcategory_name_en')
        ..add(serializers.serialize(object.bookCategoryNameEN,
            specifiedType: const FullType(String)));
    }
    if (object.bookPublisherName != null) {
      result
        ..add('bookpublisher_name')
        ..add(serializers.serialize(object.bookPublisherName,
            specifiedType: const FullType(String)));
    }
    if (object.bookPublisherAddress != null) {
      result
        ..add('bookpublisher_address')
        ..add(serializers.serialize(object.bookPublisherAddress,
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
  BuiltBookDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'book_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'book_name':
          result.bookName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'download_link':
          result.downloadLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subjects':
          result.subjects = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bookauthor_name':
          result.bookAuthorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bookcategory_name_mm':
          result.bookCategoryNameMM = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bookcategory_name_en':
          result.bookCategoryNameEN = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bookpublisher_name':
          result.bookPublisherName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bookpublisher_address':
          result.bookPublisherAddress = serializers.deserialize(value,
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

class _$BuiltBookDetail extends BuiltBookDetail {
  @override
  final int id;
  @override
  final String bookName;
  @override
  final String downloadLink;
  @override
  final String subjects;
  @override
  final String notes;
  @override
  final String bookAuthorName;
  @override
  final String bookCategoryNameMM;
  @override
  final String bookCategoryNameEN;
  @override
  final String bookPublisherName;
  @override
  final String bookPublisherAddress;
  @override
  final String image;
  @override
  final String featureImagePath;
  @override
  final String thumbImagePath;
  @override
  final BuiltList<BuiltMedia> media;

  factory _$BuiltBookDetail([void Function(BuiltBookDetailBuilder) updates]) =>
      (new BuiltBookDetailBuilder()..update(updates)).build();

  _$BuiltBookDetail._(
      {this.id,
      this.bookName,
      this.downloadLink,
      this.subjects,
      this.notes,
      this.bookAuthorName,
      this.bookCategoryNameMM,
      this.bookCategoryNameEN,
      this.bookPublisherName,
      this.bookPublisherAddress,
      this.image,
      this.featureImagePath,
      this.thumbImagePath,
      this.media})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltBookDetail', 'id');
    }
  }

  @override
  BuiltBookDetail rebuild(void Function(BuiltBookDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookDetailBuilder toBuilder() =>
      new BuiltBookDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookDetail &&
        id == other.id &&
        bookName == other.bookName &&
        downloadLink == other.downloadLink &&
        subjects == other.subjects &&
        notes == other.notes &&
        bookAuthorName == other.bookAuthorName &&
        bookCategoryNameMM == other.bookCategoryNameMM &&
        bookCategoryNameEN == other.bookCategoryNameEN &&
        bookPublisherName == other.bookPublisherName &&
        bookPublisherAddress == other.bookPublisherAddress &&
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
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        bookName.hashCode),
                                                    downloadLink.hashCode),
                                                subjects.hashCode),
                                            notes.hashCode),
                                        bookAuthorName.hashCode),
                                    bookCategoryNameMM.hashCode),
                                bookCategoryNameEN.hashCode),
                            bookPublisherName.hashCode),
                        bookPublisherAddress.hashCode),
                    image.hashCode),
                featureImagePath.hashCode),
            thumbImagePath.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltBookDetail')
          ..add('id', id)
          ..add('bookName', bookName)
          ..add('downloadLink', downloadLink)
          ..add('subjects', subjects)
          ..add('notes', notes)
          ..add('bookAuthorName', bookAuthorName)
          ..add('bookCategoryNameMM', bookCategoryNameMM)
          ..add('bookCategoryNameEN', bookCategoryNameEN)
          ..add('bookPublisherName', bookPublisherName)
          ..add('bookPublisherAddress', bookPublisherAddress)
          ..add('image', image)
          ..add('featureImagePath', featureImagePath)
          ..add('thumbImagePath', thumbImagePath)
          ..add('media', media))
        .toString();
  }
}

class BuiltBookDetailBuilder
    implements Builder<BuiltBookDetail, BuiltBookDetailBuilder> {
  _$BuiltBookDetail _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _bookName;
  String get bookName => _$this._bookName;
  set bookName(String bookName) => _$this._bookName = bookName;

  String _downloadLink;
  String get downloadLink => _$this._downloadLink;
  set downloadLink(String downloadLink) => _$this._downloadLink = downloadLink;

  String _subjects;
  String get subjects => _$this._subjects;
  set subjects(String subjects) => _$this._subjects = subjects;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  String _bookAuthorName;
  String get bookAuthorName => _$this._bookAuthorName;
  set bookAuthorName(String bookAuthorName) =>
      _$this._bookAuthorName = bookAuthorName;

  String _bookCategoryNameMM;
  String get bookCategoryNameMM => _$this._bookCategoryNameMM;
  set bookCategoryNameMM(String bookCategoryNameMM) =>
      _$this._bookCategoryNameMM = bookCategoryNameMM;

  String _bookCategoryNameEN;
  String get bookCategoryNameEN => _$this._bookCategoryNameEN;
  set bookCategoryNameEN(String bookCategoryNameEN) =>
      _$this._bookCategoryNameEN = bookCategoryNameEN;

  String _bookPublisherName;
  String get bookPublisherName => _$this._bookPublisherName;
  set bookPublisherName(String bookPublisherName) =>
      _$this._bookPublisherName = bookPublisherName;

  String _bookPublisherAddress;
  String get bookPublisherAddress => _$this._bookPublisherAddress;
  set bookPublisherAddress(String bookPublisherAddress) =>
      _$this._bookPublisherAddress = bookPublisherAddress;

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

  BuiltBookDetailBuilder();

  BuiltBookDetailBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _bookName = _$v.bookName;
      _downloadLink = _$v.downloadLink;
      _subjects = _$v.subjects;
      _notes = _$v.notes;
      _bookAuthorName = _$v.bookAuthorName;
      _bookCategoryNameMM = _$v.bookCategoryNameMM;
      _bookCategoryNameEN = _$v.bookCategoryNameEN;
      _bookPublisherName = _$v.bookPublisherName;
      _bookPublisherAddress = _$v.bookPublisherAddress;
      _image = _$v.image;
      _featureImagePath = _$v.featureImagePath;
      _thumbImagePath = _$v.thumbImagePath;
      _media = _$v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltBookDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookDetail;
  }

  @override
  void update(void Function(BuiltBookDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookDetail build() {
    _$BuiltBookDetail _$result;
    try {
      _$result = _$v ??
          new _$BuiltBookDetail._(
              id: id,
              bookName: bookName,
              downloadLink: downloadLink,
              subjects: subjects,
              notes: notes,
              bookAuthorName: bookAuthorName,
              bookCategoryNameMM: bookCategoryNameMM,
              bookCategoryNameEN: bookCategoryNameEN,
              bookPublisherName: bookPublisherName,
              bookPublisherAddress: bookPublisherAddress,
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
            'BuiltBookDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
