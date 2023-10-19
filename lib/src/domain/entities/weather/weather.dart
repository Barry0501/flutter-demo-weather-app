import 'package:freezed_annotation/freezed_annotation.dart';

import '../forecast/forecast.dart';
import 'current_weather.dart';
import 'location.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  @JsonSerializable(explicitToJson: false)
  const factory Weather({
    Location? location,
    @JsonKey(name: 'current') CurrentWeather? currentWeather,
    Forecast? forecast,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
