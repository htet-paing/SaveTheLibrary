import 'package:chopper/chopper.dart';
import 'package:save_the_library/models/api/serializers.dart';
import 'package:built_collection/built_collection.dart';

class BuiltValueConverter extends JsonConverter {
  @override
  Request convertRequest(Request request) {
    return super.convertRequest(
      request.replace(
        body: serializers.serializeWith(
          serializers.serializerForType(request.body.runtimeType),
          request.body,
        ),
      ),
    );
  }

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(
    Response response,
  ) {
    /// [BodyType] is the expected type of your response
    /// ex: `String` or `CustomObject`
    ///
    /// In the case of [BodyType] is a `List` or `BuildList`
    /// [InnerType] will be the type of the generic
    /// ex: `convertResponse<List<CustomObject>, CustomObject>(response)`

    final Response dynamicResponse = super.convertResponse(response);
    final BodyType customBody =
        _convertToCustomObject<BodyType, InnerType>(dynamicResponse.body);

    return dynamicResponse.replace<BodyType>(body: customBody);
  }

  dynamic _convertToCustomObject<BodyType, InnerType>(dynamic element) {
    if (element is InnerType) return element;

    if (element is List)
      return _deserializeListOf<InnerType>(element);
    else
      return _deserialize<BodyType>(element);
  }

  BuiltList<InnerType> _deserializeListOf<InnerType>(
    List dynamicList,
  ) {
    return BuiltList<InnerType>(
      dynamicList.map((element) => _deserialize<InnerType>(element)),
    );
  }

  BodyType _deserialize<BodyType>(
    Map<String, dynamic> value,
  ) {
    return serializers.deserializeWith(
      serializers.serializerForType(BodyType),
      value,
    );
  }
}
