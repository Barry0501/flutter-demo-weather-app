import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/weather/weather.dart';
import '../../../domain/usecases/weather_usecase.dart';

part 'weather_event.dart';
part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherUsecase _weatherUsecase;

  WeatherBloc(this._weatherUsecase) : super(WeatherInitial()) {
    on<FetchWeatherBySearchEvent>(_mapFetchWeatherBySearchEvent);
  }

  FutureOr<void> _mapFetchWeatherBySearchEvent(
      FetchWeatherBySearchEvent event, Emitter<WeatherState> emit) async {
    try {
      final res = await _weatherUsecase.fetchWeatherBySearch(event.textSearch);
      emit(FetchWeatherDetailSuccess(res));
    } catch (e) {
      emit(FetchWeatherDetailFail(e.toString()));
    }
  }
}
