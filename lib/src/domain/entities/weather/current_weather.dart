import 'package:freezed_annotation/freezed_annotation.dart';

import 'weather_condition.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  @JsonSerializable(explicitToJson: false)
  const factory CurrentWeather({
    @JsonKey(name: 'last_updated') String? lastUpdated,
    @JsonKey(name: 'temp_c') double? tempC,
    @JsonKey(name: 'temp_f') double? tempF,
    @JsonKey(name: 'is_day') int? isDay,
    @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
    num? humidity,
    num? uv,
    @JsonKey(name: 'wind_mph') num? windMph,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

extension CurrentWeatherExt on CurrentWeather {
  String get weatherConditionName {
    return weatherCondition?.text ?? '';
  }

  int? get weatherTempC {
    return tempC?.toInt();
  }
}
