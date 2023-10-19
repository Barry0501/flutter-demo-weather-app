part of 'weather_bloc.dart';

sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class FetchWeatherDetailSuccess extends WeatherState {
  final Weather weather;

  FetchWeatherDetailSuccess(this.weather);
}

final class FetchWeatherDetailFail extends WeatherState {
  final String errMsg;

  FetchWeatherDetailFail(this.errMsg);
}
