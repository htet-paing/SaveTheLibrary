import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_video_user.g.dart';

abstract class BuiltVideoUser
    implements Built<BuiltVideoUser, BuiltVideoUserBuilder> {
  int get id;

  @nullable
  String get name;

  @nullable
  String get email;

  @nullable
  String get type;

  @nullable
  @BuiltValueField(wireName: 'super_admin')
  int get superadmin;

  @BuiltValueField(wireName: 'created_at')
  @nullable
  String get createdAt;

  @nullable
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  @nullable
  String get profile;

  BuiltVideoUser._();

  factory BuiltVideoUser([updates(BuiltVideoUserBuilder b)]) = _$BuiltVideoUser;

  static Serializer<BuiltVideoUser> get serializer =>
      _$builtVideoUserSerializer;
}
