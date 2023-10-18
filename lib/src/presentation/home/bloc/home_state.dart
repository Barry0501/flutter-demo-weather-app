part of 'home_bloc.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class FetchCurrentWeatherSuccess extends HomeState {
  final Weather weather;

  FetchCurrentWeatherSuccess(this.weather);
}

final class FetchSuggestionSuccess extends HomeState {
  final List<Location> locations;

  FetchSuggestionSuccess(this.locations);
}

final class FetchSuggestionFail extends HomeState {}
