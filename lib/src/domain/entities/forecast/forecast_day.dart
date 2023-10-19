import 'package:freezed_annotation/freezed_annotation.dart';

import '../weather/weather_condition.dart';
import 'day.dart';
import 'forecast_hour.dart';

part 'forecast_day.freezed.dart';
part 'forecast_day.g.dart';

@freezed
class ForecastDay with _$ForecastDay {
  @JsonSerializable(explicitToJson: false)
  const factory ForecastDay({
    String? date,
    @JsonKey(name: 'hour') List<ForecastHour>? forecastHour,
    @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
    Day? day,
  }) = _ForecastDay;

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}
