import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  @JsonKey(includeIfNull: false)
  final T? _data;

  ApiResponse({T? data}) : _data = data;

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromT) {
    final newJson = {'data': json};
    final response = _$ApiResponseFromJson(newJson, fromT);

    return response;
  }

  T get data => _getData();

  T _getData() {
    return _data as T;
  }
}

T? nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);
