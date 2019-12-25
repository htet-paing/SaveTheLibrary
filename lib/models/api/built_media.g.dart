// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltMedia> _$builtMediaSerializer = new _$BuiltMediaSerializer();

class _$BuiltMediaSerializer implements StructuredSerializer<BuiltMedia> {
  @override
  final Iterable<Type> types = const [BuiltMedia, _$BuiltMedia];
  @override
  final String wireName = 'BuiltMedia';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltMedia object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'model_id',
      serializers.serialize(object.modelId, specifiedType: const FullType(int)),
      'model_type',
      serializers.serialize(object.modelType,
          specifiedType: const FullType(String)),
      'collection_name',
      serializers.serialize(object.collectionName,
          specifiedType: const FullType(String)),
      'file_name',
      serializers.serialize(object.fileName,
          specifiedType: const FullType(String)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.disk != null) {
      result
        ..add('disk')
        ..add(serializers.serialize(object.disk,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.manipulations != null) {
      result
        ..add('manipulations')
        ..add(serializers.serialize(object.manipulations,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.customProperties != null) {
      result
        ..add('custom_properties')
        ..add(serializers.serialize(object.customProperties,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.orderColumn != null) {
      result
        ..add('order_column')
        ..add(serializers.serialize(object.orderColumn,
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
  BuiltMedia deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltMediaBuilder();

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
        case 'model_id':
          result.modelId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'model_type':
          result.modelType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'collection_name':
          result.collectionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'file_name':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'disk':
          result.disk = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'manipulations':
          result.manipulations = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList<dynamic>;
          break;
        case 'custom_properties':
          result.customProperties = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList<dynamic>;
          break;
        case 'order_column':
          result.orderColumn = serializers.deserialize(value,
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

class _$BuiltMedia extends BuiltMedia {
  @override
  final int id;
  @override
  final int modelId;
  @override
  final String modelType;
  @override
  final String collectionName;
  @override
  final String name;
  @override
  final String fileName;
  @override
  final String disk;
  @override
  final int size;
  @override
  final BuiltList manipulations;
  @override
  final BuiltList customProperties;
  @override
  final int orderColumn;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$BuiltMedia([void Function(BuiltMediaBuilder) updates]) =>
      (new BuiltMediaBuilder()..update(updates)).build();

  _$BuiltMedia._(
      {this.id,
      this.modelId,
      this.modelType,
      this.collectionName,
      this.name,
      this.fileName,
      this.disk,
      this.size,
      this.manipulations,
      this.customProperties,
      this.orderColumn,
      this.createdAt,
      this.updatedAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltMedia', 'id');
    }
    if (modelId == null) {
      throw new BuiltValueNullFieldError('BuiltMedia', 'modelId');
    }
    if (modelType == null) {
      throw new BuiltValueNullFieldError('BuiltMedia', 'modelType');
    }
    if (collectionName == null) {
      throw new BuiltValueNullFieldError('BuiltMedia', 'collectionName');
    }
    if (fileName == null) {
      throw new BuiltValueNullFieldError('BuiltMedia', 'fileName');
    }
  }

  @override
  BuiltMedia rebuild(void Function(BuiltMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltMediaBuilder toBuilder() => new BuiltMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltMedia &&
        id == other.id &&
        modelId == other.modelId &&
        modelType == other.modelType &&
        collectionName == other.collectionName &&
        name == other.name &&
        fileName == other.fileName &&
        disk == other.disk &&
        size == other.size &&
        manipulations == other.manipulations &&
        customProperties == other.customProperties &&
        orderColumn == other.orderColumn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
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
                                                $jc($jc(0, id.hashCode),
                                                    modelId.hashCode),
                                                modelType.hashCode),
                                            collectionName.hashCode),
                                        name.hashCode),
                                    fileName.hashCode),
                                disk.hashCode),
                            size.hashCode),
                        manipulations.hashCode),
                    customProperties.hashCode),
                orderColumn.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltMedia')
          ..add('id', id)
          ..add('modelId', modelId)
          ..add('modelType', modelType)
          ..add('collectionName', collectionName)
          ..add('name', name)
          ..add('fileName', fileName)
          ..add('disk', disk)
          ..add('size', size)
          ..add('manipulations', manipulations)
          ..add('customProperties', customProperties)
          ..add('orderColumn', orderColumn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class BuiltMediaBuilder implements Builder<BuiltMedia, BuiltMediaBuilder> {
  _$BuiltMedia _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _modelId;
  int get modelId => _$this._modelId;
  set modelId(int modelId) => _$this._modelId = modelId;

  String _modelType;
  String get modelType => _$this._modelType;
  set modelType(String modelType) => _$this._modelType = modelType;

  String _collectionName;
  String get collectionName => _$this._collectionName;
  set collectionName(String collectionName) =>
      _$this._collectionName = collectionName;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _fileName;
  String get fileName => _$this._fileName;
  set fileName(String fileName) => _$this._fileName = fileName;

  String _disk;
  String get disk => _$this._disk;
  set disk(String disk) => _$this._disk = disk;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  BuiltList _manipulations;
  BuiltList get manipulations => _$this._manipulations;
  set manipulations(BuiltList manipulations) =>
      _$this._manipulations = manipulations;

  BuiltList _customProperties;
  BuiltList get customProperties => _$this._customProperties;
  set customProperties(BuiltList customProperties) =>
      _$this._customProperties = customProperties;

  int _orderColumn;
  int get orderColumn => _$this._orderColumn;
  set orderColumn(int orderColumn) => _$this._orderColumn = orderColumn;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  BuiltMediaBuilder();

  BuiltMediaBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _modelId = _$v.modelId;
      _modelType = _$v.modelType;
      _collectionName = _$v.collectionName;
      _name = _$v.name;
      _fileName = _$v.fileName;
      _disk = _$v.disk;
      _size = _$v.size;
      _manipulations = _$v.manipulations;
      _customProperties = _$v.customProperties;
      _orderColumn = _$v.orderColumn;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltMedia other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltMedia;
  }

  @override
  void update(void Function(BuiltMediaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltMedia build() {
    final _$result = _$v ??
        new _$BuiltMedia._(
            id: id,
            modelId: modelId,
            modelType: modelType,
            collectionName: collectionName,
            name: name,
            fileName: fileName,
            disk: disk,
            size: size,
            manipulations: manipulations,
            customProperties: customProperties,
            orderColumn: orderColumn,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
