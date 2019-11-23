// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_book_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltBookList> _$builtBookListSerializer =
    new _$BuiltBookListSerializer();
Serializer<BuiltBook> _$builtBookSerializer = new _$BuiltBookSerializer();

class _$BuiltBookListSerializer implements StructuredSerializer<BuiltBookList> {
  @override
  final Iterable<Type> types = const [BuiltBookList, _$BuiltBookList];
  @override
  final String wireName = 'BuiltBookList';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltBookList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltBook)])),
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
  BuiltBookList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltBook)]))
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

class _$BuiltBookSerializer implements StructuredSerializer<BuiltBook> {
  @override
  final Iterable<Type> types = const [BuiltBook, _$BuiltBook];
  @override
  final String wireName = 'BuiltBook';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltBook object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
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
  BuiltBook deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBookBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$BuiltBookList extends BuiltBookList {
  @override
  final BuiltList<BuiltBook> data;
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

  factory _$BuiltBookList([void Function(BuiltBookListBuilder) updates]) =>
      (new BuiltBookListBuilder()..update(updates)).build();

  _$BuiltBookList._(
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
      throw new BuiltValueNullFieldError('BuiltBookList', 'data');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('BuiltBookList', 'total');
    }
  }

  @override
  BuiltBookList rebuild(void Function(BuiltBookListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookListBuilder toBuilder() => new BuiltBookListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBookList &&
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
    return (newBuiltValueToStringHelper('BuiltBookList')
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

class BuiltBookListBuilder
    implements Builder<BuiltBookList, BuiltBookListBuilder> {
  _$BuiltBookList _$v;

  ListBuilder<BuiltBook> _data;
  ListBuilder<BuiltBook> get data =>
      _$this._data ??= new ListBuilder<BuiltBook>();
  set data(ListBuilder<BuiltBook> data) => _$this._data = data;

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

  BuiltBookListBuilder();

  BuiltBookListBuilder get _$this {
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
  void replace(BuiltBookList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBookList;
  }

  @override
  void update(void Function(BuiltBookListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBookList build() {
    _$BuiltBookList _$result;
    try {
      _$result = _$v ??
          new _$BuiltBookList._(
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
            'BuiltBookList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltBook extends BuiltBook {
  @override
  final int id;
  @override
  final String title;
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

  factory _$BuiltBook([void Function(BuiltBookBuilder) updates]) =>
      (new BuiltBookBuilder()..update(updates)).build();

  _$BuiltBook._(
      {this.id,
      this.title,
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
      throw new BuiltValueNullFieldError('BuiltBook', 'id');
    }
  }

  @override
  BuiltBook rebuild(void Function(BuiltBookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBookBuilder toBuilder() => new BuiltBookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBook &&
        id == other.id &&
        title == other.title &&
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
                                                    $jc(
                                                        $jc($jc(0, id.hashCode),
                                                            title.hashCode),
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
    return (newBuiltValueToStringHelper('BuiltBook')
          ..add('id', id)
          ..add('title', title)
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

class BuiltBookBuilder implements Builder<BuiltBook, BuiltBookBuilder> {
  _$BuiltBook _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

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

  BuiltBookBuilder();

  BuiltBookBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
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
  void replace(BuiltBook other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBook;
  }

  @override
  void update(void Function(BuiltBookBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBook build() {
    _$BuiltBook _$result;
    try {
      _$result = _$v ??
          new _$BuiltBook._(
              id: id,
              title: title,
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
            'BuiltBook', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
