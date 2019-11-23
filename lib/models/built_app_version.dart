import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_app_version.g.dart';

abstract class BuiltAppVersion
    implements Built<BuiltAppVersion, BuiltAppVersionBuilder> {
  int get id;

  int get version;

  @BuiltValueField(wireName: 'current_version')
  String get currentVersion;

  @BuiltValueField(wireName: 'playstore_link')
  String get playstoreLink;

  @BuiltValueField(wireName: 'direct_link')
  String get directLink;

  BuiltAppVersion._();
  factory BuiltAppVersion([updates(BuiltAppVersionBuilder b)]) =
      _$BuiltAppVersion;
  static Serializer<BuiltAppVersion> get serializer =>
      _$builtAppVersionSerializer;
}
