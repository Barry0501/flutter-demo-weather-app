part of 'weather_bloc.dart';

sealed class WeatherEvent {}

class FetchWeatherBySearchEvent extends WeatherEvent {
  final String textSearch;

  FetchWeatherBySearchEvent({required this.textSearch});
}
