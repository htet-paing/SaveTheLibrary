import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:save_the_library/models/generics.dart';

part 'built_book_publisher_list.g.dart';

/// sample
///
/// [BuiltBookPublisherList] ( implements [GenericList] )
/// {
///   total: ...,
///   per_page: ...,
///   current_page: ...,
///   .
///   .
///   .
///   data: [
///     [BulitBookPublisher],
///     [BuiltBookPublisher],
///     [BuiltBookPublisher],...
///   ]
/// }

abstract class BuiltBookPublisherList
    implements
        GenericList,
        Built<BuiltBookPublisherList, BuiltBookPublisherListBuilder> {
  @override
  BuiltList<BuiltBookPublisher> get data;

  BuiltBookPublisherList._();
  factory BuiltBookPublisherList([updates(BuiltBookPublisherListBuilder b)]) =
      _$BuiltBookPublisherList;
  static Serializer<BuiltBookPublisherList> get serializer =>
      _$builtBookPublisherListSerializer;
}

abstract class BuiltBookPublisher
    implements Built<BuiltBookPublisher, BuiltBookPublisherBuilder> {
  int get id;

  @nullable
  String get name;

  @nullable
  String get address;

  @nullable
  @BuiltValueField(wireName: 'phone_no')
  String get phoneNo;

  @nullable
  @BuiltValueField(wireName: 'book_count')
  int get bookCount;

  BuiltBookPublisher._();

  factory BuiltBookPublisher([updates(BuiltBookPublisherBuilder b)]) =
      _$BuiltBookPublisher;

  static Serializer<BuiltBookPublisher> get serializer =>
      _$builtBookPublisherSerializer;
}
