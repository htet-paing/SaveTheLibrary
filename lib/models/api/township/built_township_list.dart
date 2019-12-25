import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/api/generics.dart';

part 'built_township_list.g.dart';

/// sample
///
/// [BuiltTownships]
/// {
///   townships: [BuiltTownshipList] ( implements [GenericList] )
///   {
///     total: ...,
///     per_page: ...,
///     current_page: ...,
///     .
///     .
///     .
///     data: [
///       [BulitTownship],
///       [BuiltTownship],
///       [BuiltTownship],
///       .
///       .
///       .
///     ]
///   }
/// }

abstract class BuiltTownships
    implements Built<BuiltTownships, BuiltTownshipsBuilder> {
  BuiltTownshipList get townships;

  BuiltTownships._();

  factory BuiltTownships([updates(BuiltTownshipsBuilder b)]) = _$BuiltTownships;

  static Serializer<BuiltTownships> get serializer =>
      _$builtTownshipsSerializer;
}

abstract class BuiltTownshipList
    implements GenericList, Built<BuiltTownshipList, BuiltTownshipListBuilder> {
  @override
  BuiltList<BuiltTownship> get data;

  BuiltTownshipList._();

  factory BuiltTownshipList([updates(BuiltTownshipListBuilder b)]) =
      _$BuiltTownshipList;

  static Serializer<BuiltTownshipList> get serializer =>
      _$builtTownshipListSerializer;
}

abstract class BuiltTownship
    implements Built<BuiltTownship, BuiltTownshipBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'state_division_id')
  int get stateDivisionId;

  @nullable
  @BuiltValueField(wireName: 'township_name')
  String get townshipName;

  @nullable
  @BuiltValueField(wireName: 'library_count')
  int get libraryCount;

  BuiltTownship._();

  factory BuiltTownship([updates(BuiltTownshipBuilder b)]) = _$BuiltTownship;

  static Serializer<BuiltTownship> get serializer => _$builtTownshipSerializer;
}
