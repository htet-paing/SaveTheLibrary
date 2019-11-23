import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_random_quote.g.dart';

/// sample
///
/// [BuiltRandomQuote]
/// {
///   quote: [BuiltQuote]
/// }

abstract class BuiltRandomQuote
    implements Built<BuiltRandomQuote, BuiltRandomQuoteBuilder> {
  BuiltQuote get quote;

  BuiltRandomQuote._();

  factory BuiltRandomQuote([updates(BuiltRandomQuoteBuilder b)]) =
      _$BuiltRandomQuote;

  static Serializer<BuiltRandomQuote> get serializer =>
      _$builtRandomQuoteSerializer;
}

abstract class BuiltQuote implements Built<BuiltQuote, BuiltQuoteBuilder> {
  int get id;

  @nullable
  String get summery;

  @nullable
  String get content;

  @nullable
  @BuiltValueField(wireName: 'quoteauthor_name')
  String get authorName;

  @nullable
  @BuiltValueField(wireName: 'quotecategory_name_mm')
  String get categoryNameMM;

  @nullable
  @BuiltValueField(wireName: 'quotecategory_name_en')
  String get categoryNameEN;

  @nullable
  @BuiltValueField(wireName: 'quoteauthor_image')
  String get authorImage;

  @nullable
  @BuiltValueField(wireName: 'quoteauthor_share_image')
  String get authorShareImage;

  @nullable
  String get reference;

  BuiltQuote._();

  factory BuiltQuote([updates(BuiltQuoteBuilder b)]) = _$BuiltQuote;

  static Serializer<BuiltQuote> get serializer => _$builtQuoteSerializer;
}
