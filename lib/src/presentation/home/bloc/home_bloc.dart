import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/weather/weather.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial([])) {
    on<AddSearchHistoryResultEvent>(_mapAddSearchHistoryResultEvent);
  }

  FutureOr<void> _mapAddSearchHistoryResultEvent(
      AddSearchHistoryResultEvent event, Emitter<HomeState> emit) {
    final currentState = state;
    final newWeather = event.weather;
    emit(
      AddSearchHistorySuccess([...currentState.weathers, newWeather],
          DateTime.now().microsecondsSinceEpoch),
    );
  }
}
