part of 'home_bloc.dart';

sealed class HomeState {
  final List<Weather> weathers;

  HomeState(this.weathers);
}

final class HomeInitial extends HomeState {
  HomeInitial(super.weathers);
}

final class AddSearchHistorySuccess extends HomeState {
  final int timespan;

  AddSearchHistorySuccess(super.weathers, this.timespan);
}
