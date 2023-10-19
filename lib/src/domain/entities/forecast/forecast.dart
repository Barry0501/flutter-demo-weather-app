import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_day.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  @JsonSerializable(explicitToJson: false)
  const factory Forecast({
    List<ForecastDay>? forecastday,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
