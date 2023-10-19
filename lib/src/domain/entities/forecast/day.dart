import 'package:freezed_annotation/freezed_annotation.dart';

import '../weather/weather_condition.dart';

part 'day.freezed.dart';
part 'day.g.dart';

@freezed
class Day with _$Day {
  @JsonSerializable(explicitToJson: false)
  const factory Day({
    num? uv,
    num? humidity,
    @JsonKey(name: 'wind_mph') num? windMph,
    @JsonKey(name: 'maxwind_mph') num? maxwindMph,
    num? avghumidity,
    @JsonKey(name: 'avgtemp_c') double? avgtempC,
    @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}
