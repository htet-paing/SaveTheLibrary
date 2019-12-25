// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_pdf_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltPdfList> _$builtPdfListSerializer =
    new _$BuiltPdfListSerializer();
Serializer<BuiltPdf> _$builtPdfSerializer = new _$BuiltPdfSerializer();

class _$BuiltPdfListSerializer implements StructuredSerializer<BuiltPdfList> {
  @override
  final Iterable<Type> types = const [BuiltPdfList, _$BuiltPdfList];
  @override
  final String wireName = 'BuiltPdfList';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltPdfList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltPdf)])),
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
  BuiltPdfList deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPdfListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltPdf)]))
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

class _$BuiltPdfSerializer implements StructuredSerializer<BuiltPdf> {
  @override
  final Iterable<Type> types = const [BuiltPdf, _$BuiltPdf];
  @override
  final String wireName = 'BuiltPdf';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltPdf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'pdf_id',
      serializers.serialize(object.pdfId, specifiedType: const FullType(int)),
    ];
    if (object.pdfTitle != null) {
      result
        ..add('pdf_title')
        ..add(serializers.serialize(object.pdfTitle,
            specifiedType: const FullType(String)));
    }
    if (object.downloadLink != null) {
      result
        ..add('download_link')
        ..add(serializers.serialize(object.downloadLink,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.categoryMM != null) {
      result
        ..add('category_mm')
        ..add(serializers.serialize(object.categoryMM,
            specifiedType: const FullType(String)));
    }
    if (object.categoryEN != null) {
      result
        ..add('category_en')
        ..add(serializers.serialize(object.categoryEN,
            specifiedType: const FullType(String)));
    }
    if (object.pdfSource != null) {
      result
        ..add('pdf_source')
        ..add(serializers.serialize(object.pdfSource,
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
            specifiedType: const FullType(BuiltList)));
    }
    return result;
  }

  @override
  BuiltPdf deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPdfBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'pdf_id':
          result.pdfId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pdf_title':
          result.pdfTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'download_link':
          result.downloadLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_mm':
          result.categoryMM = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_en':
          result.categoryEN = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pdf_source':
          result.pdfSource = serializers.deserialize(value,
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
          result.media = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList<dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltPdfList extends BuiltPdfList {
  @override
  final BuiltList<BuiltPdf> data;
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

  factory _$BuiltPdfList([void Function(BuiltPdfListBuilder) updates]) =>
      (new BuiltPdfListBuilder()..update(updates)).build();

  _$BuiltPdfList._(
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
      throw new BuiltValueNullFieldError('BuiltPdfList', 'data');
    }
  }

  @override
  BuiltPdfList rebuild(void Function(BuiltPdfListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPdfListBuilder toBuilder() => new BuiltPdfListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPdfList &&
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
    return (newBuiltValueToStringHelper('BuiltPdfList')
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

class BuiltPdfListBuilder
    implements Builder<BuiltPdfList, BuiltPdfListBuilder> {
  _$BuiltPdfList _$v;

  ListBuilder<BuiltPdf> _data;
  ListBuilder<BuiltPdf> get data =>
      _$this._data ??= new ListBuilder<BuiltPdf>();
  set data(ListBuilder<BuiltPdf> data) => _$this._data = data;

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

  BuiltPdfListBuilder();

  BuiltPdfListBuilder get _$this {
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
  void replace(BuiltPdfList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltPdfList;
  }

  @override
  void update(void Function(BuiltPdfListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPdfList build() {
    _$BuiltPdfList _$result;
    try {
      _$result = _$v ??
          new _$BuiltPdfList._(
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
            'BuiltPdfList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltPdf extends BuiltPdf {
  @override
  final int pdfId;
  @override
  final String pdfTitle;
  @override
  final String downloadLink;
  @override
  final String image;
  @override
  final String categoryMM;
  @override
  final String categoryEN;
  @override
  final String pdfSource;
  @override
  final String featureImagePath;
  @override
  final String thumbImagePath;
  @override
  final BuiltList media;

  factory _$BuiltPdf([void Function(BuiltPdfBuilder) updates]) =>
      (new BuiltPdfBuilder()..update(updates)).build();

  _$BuiltPdf._(
      {this.pdfId,
      this.pdfTitle,
      this.downloadLink,
      this.image,
      this.categoryMM,
      this.categoryEN,
      this.pdfSource,
      this.featureImagePath,
      this.thumbImagePath,
      this.media})
      : super._() {
    if (pdfId == null) {
      throw new BuiltValueNullFieldError('BuiltPdf', 'pdfId');
    }
  }

  @override
  BuiltPdf rebuild(void Function(BuiltPdfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPdfBuilder toBuilder() => new BuiltPdfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPdf &&
        pdfId == other.pdfId &&
        pdfTitle == other.pdfTitle &&
        downloadLink == other.downloadLink &&
        image == other.image &&
        categoryMM == other.categoryMM &&
        categoryEN == other.categoryEN &&
        pdfSource == other.pdfSource &&
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
                                    $jc($jc(0, pdfId.hashCode),
                                        pdfTitle.hashCode),
                                    downloadLink.hashCode),
                                image.hashCode),
                            categoryMM.hashCode),
                        categoryEN.hashCode),
                    pdfSource.hashCode),
                featureImagePath.hashCode),
            thumbImagePath.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltPdf')
          ..add('pdfId', pdfId)
          ..add('pdfTitle', pdfTitle)
          ..add('downloadLink', downloadLink)
          ..add('image', image)
          ..add('categoryMM', categoryMM)
          ..add('categoryEN', categoryEN)
          ..add('pdfSource', pdfSource)
          ..add('featureImagePath', featureImagePath)
          ..add('thumbImagePath', thumbImagePath)
          ..add('media', media))
        .toString();
  }
}

class BuiltPdfBuilder implements Builder<BuiltPdf, BuiltPdfBuilder> {
  _$BuiltPdf _$v;

  int _pdfId;
  int get pdfId => _$this._pdfId;
  set pdfId(int pdfId) => _$this._pdfId = pdfId;

  String _pdfTitle;
  String get pdfTitle => _$this._pdfTitle;
  set pdfTitle(String pdfTitle) => _$this._pdfTitle = pdfTitle;

  String _downloadLink;
  String get downloadLink => _$this._downloadLink;
  set downloadLink(String downloadLink) => _$this._downloadLink = downloadLink;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _categoryMM;
  String get categoryMM => _$this._categoryMM;
  set categoryMM(String categoryMM) => _$this._categoryMM = categoryMM;

  String _categoryEN;
  String get categoryEN => _$this._categoryEN;
  set categoryEN(String categoryEN) => _$this._categoryEN = categoryEN;

  String _pdfSource;
  String get pdfSource => _$this._pdfSource;
  set pdfSource(String pdfSource) => _$this._pdfSource = pdfSource;

  String _featureImagePath;
  String get featureImagePath => _$this._featureImagePath;
  set featureImagePath(String featureImagePath) =>
      _$this._featureImagePath = featureImagePath;

  String _thumbImagePath;
  String get thumbImagePath => _$this._thumbImagePath;
  set thumbImagePath(String thumbImagePath) =>
      _$this._thumbImagePath = thumbImagePath;

  BuiltList _media;
  BuiltList get media => _$this._media;
  set media(BuiltList media) => _$this._media = media;

  BuiltPdfBuilder();

  BuiltPdfBuilder get _$this {
    if (_$v != null) {
      _pdfId = _$v.pdfId;
      _pdfTitle = _$v.pdfTitle;
      _downloadLink = _$v.downloadLink;
      _image = _$v.image;
      _categoryMM = _$v.categoryMM;
      _categoryEN = _$v.categoryEN;
      _pdfSource = _$v.pdfSource;
      _featureImagePath = _$v.featureImagePath;
      _thumbImagePath = _$v.thumbImagePath;
      _media = _$v.media;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltPdf other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltPdf;
  }

  @override
  void update(void Function(BuiltPdfBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPdf build() {
    final _$result = _$v ??
        new _$BuiltPdf._(
            pdfId: pdfId,
            pdfTitle: pdfTitle,
            downloadLink: downloadLink,
            image: image,
            categoryMM: categoryMM,
            categoryEN: categoryEN,
            pdfSource: pdfSource,
            featureImagePath: featureImagePath,
            thumbImagePath: thumbImagePath,
            media: media);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
