// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_library_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltLibraryDetail> _$builtLibraryDetailSerializer =
    new _$BuiltLibraryDetailSerializer();

class _$BuiltLibraryDetailSerializer
    implements StructuredSerializer<BuiltLibraryDetail> {
  @override
  final Iterable<Type> types = const [BuiltLibraryDetail, _$BuiltLibraryDetail];
  @override
  final String wireName = 'BuiltLibraryDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltLibraryDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'library_id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.name != null) {
      result
        ..add('library_name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.establishedDate != null) {
      result
        ..add('established_date')
        ..add(serializers.serialize(object.establishedDate,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.facebook != null) {
      result
        ..add('facebook')
        ..add(serializers.serialize(object.facebook,
            specifiedType: const FullType(String)));
    }
    if (object.youtube != null) {
      result
        ..add('youtube')
        ..add(serializers.serialize(object.youtube,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(double)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(double)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.townshipName != null) {
      result
        ..add('township_name')
        ..add(serializers.serialize(object.townshipName,
            specifiedType: const FullType(String)));
    }
    if (object.statedVisionName != null) {
      result
        ..add('statedvision_name')
        ..add(serializers.serialize(object.statedVisionName,
            specifiedType: const FullType(String)));
    }
    if (object.villageTractName != null) {
      result
        ..add('villagetract_name')
        ..add(serializers.serialize(object.villageTractName,
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
  BuiltLibraryDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltLibraryDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'library_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'library_name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'established_date':
          result.establishedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'facebook':
          result.facebook = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'youtube':
          result.youtube = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'township_name':
          result.townshipName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statedvision_name':
          result.statedVisionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'villagetract_name':
          result.villageTractName = serializers.deserialize(value,
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

class _$BuiltLibraryDetail extends BuiltLibraryDetail {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String establishedDate;
  @override
  final String address;
  @override
  final String email;
  @override
  final String facebook;
  @override
  final String youtube;
  @override
  final String phone;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String image;
  @override
  final String townshipName;
  @override
  final String statedVisionName;
  @override
  final String villageTractName;
  @override
  final String featureImagePath;
  @override
  final String thumbImagePath;
  @override
  final BuiltList<BuiltMedia> media;

  factory _$BuiltLibraryDetail(
          [void Function(BuiltLibraryDetailBuilder) updates]) =>
      (new BuiltLibraryDetailBuilder()..update(updates)).build();

  _$BuiltLibraryDetail._(
      {this.id,
      this.name,
      this.description,
      this.establishedDate,
      this.address,
      this.email,
      this.facebook,
      this.youtube,
      this.phone,
      this.latitude,
      this.longitude,
      this.image,
      this.townshipName,
      this.statedVisionName,
      this.villageTractName,
      this.featureImagePath,
      this.thumbImagePath,
      this.media})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltLibraryDetail', 'id');
    }
  }

  @override
  BuiltLibraryDetail rebuild(
          void Function(BuiltLibraryDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltLibraryDetailBuilder toBuilder() =>
      new BuiltLibraryDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltLibraryDetail &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        establishedDate == other.establishedDate &&
        address == other.address &&
        email == other.email &&
        facebook == other.facebook &&
        youtube == other.youtube &&
        phone == other.phone &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        image == other.image &&
        townshipName == other.townshipName &&
        statedVisionName == other.statedVisionName &&
        villageTractName == other.villageTractName &&
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
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        name
                                                                            .hashCode),
                                                                    description
                                                                        .hashCode),
                                                                establishedDate
                                                                    .hashCode),
                                                            address.hashCode),
                                                        email.hashCode),
                                                    facebook.hashCode),
                                                youtube.hashCode),
                                            phone.hashCode),
                                        latitude.hashCode),
                                    longitude.hashCode),
                                image.hashCode),
                            townshipName.hashCode),
                        statedVisionName.hashCode),
                    villageTractName.hashCode),
                featureImagePath.hashCode),
            thumbImagePath.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltLibraryDetail')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('establishedDate', establishedDate)
          ..add('address', address)
          ..add('email', email)
          ..add('facebook', facebook)
          ..add('youtube', youtube)
          ..add('phone', phone)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('image', image)
          ..add('townshipName', townshipName)
          ..add('statedVisionName', statedVisionName)
          ..add('villageTractName', villageTractName)
          ..add('featureImagePath', featureImagePath)
          ..add('thumbImagePath', thumbImagePath)
          ..add('media', media))
        .toString();
  }
}

class BuiltLibraryDetailBuilder
    implements Builder<BuiltLibraryDetail, BuiltLibraryDetailBuilder> {
  _$BuiltLibraryDetail _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _establishedDate;
  String get establishedDate => _$this._establishedDate;
  set establishedDate(String establishedDate) =>
      _$this._establishedDate = establishedDate;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _facebook;
  String get facebook => _$this._facebook;
  set facebook(String facebook) => _$this._facebook = facebook;

  String _youtube;
  String get youtube => _$this._youtube;
  set youtube(String youtube) => _$this._youtube = youtube;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _townshipName;
  String get townshipName => _$this._townshipName;
  set townshipName(String townshipName) => _$this._townshipName = townshipName;

  String _statedVisionName;
  String get statedVisionName => _$this._statedVisionName;
  set statedVisionName(String statedVisionName) =>
      _$this._statedVisionName = statedVisionName;

  String _villageTractName;
  String get villageTractName => _$this._villageTractName;
  set villageTractName(String villageTractName) =>
      _$this._villageTractName = villageTractName;

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

  BuiltLibraryDetailBuilder();

  BuiltLibraryDetailBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _establishedDate = _$v.establishedDate;
      _address = _$v.address;
      _email = _$v.email;
      _facebook = _$v.facebook;
      _youtube = _$v.youtube;
      _phone = _$v.phone;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _image = _$v.image;
      _townshipName = _$v.townshipName;
      _statedVisionName = _$v.statedVisionName;
      _villageTractName = _$v.villageTractName;
      _featureImagePath = _$v.featureImagePath;
      _thumbImagePath = _$v.thumbImagePath;
      _media = _$v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltLibraryDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltLibraryDetail;
  }

  @override
  void update(void Function(BuiltLibraryDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltLibraryDetail build() {
    _$BuiltLibraryDetail _$result;
    try {
      _$result = _$v ??
          new _$BuiltLibraryDetail._(
              id: id,
              name: name,
              description: description,
              establishedDate: establishedDate,
              address: address,
              email: email,
              facebook: facebook,
              youtube: youtube,
              phone: phone,
              latitude: latitude,
              longitude: longitude,
              image: image,
              townshipName: townshipName,
              statedVisionName: statedVisionName,
              villageTractName: villageTractName,
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
            'BuiltLibraryDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
