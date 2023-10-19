part of 'home_bloc.dart';

sealed class HomeEvent {}

final class AddSearchHistoryResultEvent extends HomeEvent {
  final Weather weather;

  AddSearchHistoryResultEvent(this.weather);
}
