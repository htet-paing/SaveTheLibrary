import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'built_division.g.dart';

/// sample
///
/// [BuiltDivisions]
/// {
///   states: [
///     [BulitDivision],
///     [BuiltDivision],
///     [BuiltDivision],...
///   ]
/// }

abstract class BuiltDivisions
    implements Built<BuiltDivisions, BuiltDivisionsBuilder> {
  BuiltList<BuiltDivision> get states;

  BuiltDivisions._();

  factory BuiltDivisions([updates(BuiltDivisionsBuilder b)]) = _$BuiltDivisions;

  static Serializer<BuiltDivisions> get serializer =>
      _$builtDivisionsSerializer;
}

abstract class BuiltDivision
    implements Built<BuiltDivision, BuiltDivisionBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'state_division_code')
  String get stateDivisionCode;

  @nullable
  @BuiltValueField(wireName: 'state_division')
  String get stateDivision;

  BuiltDivision._();

  factory BuiltDivision([updates(BuiltDivisionBuilder b)]) = _$BuiltDivision;

  static Serializer<BuiltDivision> get serializer => _$builtDivisionSerializer;
}
