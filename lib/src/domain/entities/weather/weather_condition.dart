import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_condition.freezed.dart';
part 'weather_condition.g.dart';

@freezed
class WeatherCondition with _$WeatherCondition {
  @JsonSerializable(explicitToJson: false)
  const factory WeatherCondition({
    String? text,
    String? icon,
    double? code,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);
}
