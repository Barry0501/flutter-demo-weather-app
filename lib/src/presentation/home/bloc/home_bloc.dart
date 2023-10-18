import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/weather/location.dart';
import '../../../domain/entities/weather/weather.dart';
import '../../../domain/usecases/weather_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WeatherUsecase _weatherUsecase;

  HomeBloc(this._weatherUsecase) : super(HomeInitial()) {
    on<FetchWeatherEvent>(_mapFetchSuggestionEvent);
  }

  FutureOr<void> _mapFetchSuggestionEvent(
      FetchWeatherEvent event, Emitter<HomeState> emit) async {
    try {
      final res =
          await _weatherUsecase.fetchWeatherFromLocation(event.location);
      emit(FetchCurrentWeatherSuccess(res));
    } catch (e) {
      emit(FetchSuggestionFail());
    }
  }
}
