part of 'home_bloc.dart';

sealed class HomeEvent {}

class FetchWeatherEvent extends HomeEvent {
  final String location;

  FetchWeatherEvent({required this.location});
}

class FetchSuggestionEvent extends HomeEvent {
  final String location;

  FetchSuggestionEvent({required this.location});
}
