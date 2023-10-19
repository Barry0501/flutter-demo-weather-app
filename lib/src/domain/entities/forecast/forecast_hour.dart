import 'package:freezed_annotation/freezed_annotation.dart';

import '../weather/weather_condition.dart';

part 'forecast_hour.freezed.dart';
part 'forecast_hour.g.dart';

@freezed
class ForecastHour with _$ForecastHour {
  @JsonSerializable(explicitToJson: false)
  const factory ForecastHour({
    String? time,
    @JsonKey(name: 'temp_c') double? tempC,
    @JsonKey(name: 'temp_f') double? tempF,
    @JsonKey(name: 'avgtemp_c') double? avgtempC,
    @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
    num? humidity,
    num? uv,
    num? windMph,
    num? avghumidity,
    num? maxwindMph,
  }) = _ForecastHour;

  factory ForecastHour.fromJson(Map<String, dynamic> json) =>
      _$ForecastHourFromJson(json);
}
