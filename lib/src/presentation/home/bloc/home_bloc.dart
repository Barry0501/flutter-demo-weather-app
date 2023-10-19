import 'dart:async';

import 'package:collection/collection.dart';
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
    final currentLists = currentState.weathers;
    final newWeather = event.weather;
    var newLists = currentLists;
    final newTimeSpan = DateTime.now().microsecondsSinceEpoch;

    if (currentLists.isEmpty) {
      emit(AddSearchHistorySuccess([newWeather], newTimeSpan));
    } else {
      final isExisted = currentLists
          .firstWhereOrNull((e) => e.location?.id == newWeather.location?.id);

      if (isExisted != null) {
        currentLists.remove(isExisted);
      }
      newLists = [...currentLists, newWeather];

      emit(AddSearchHistorySuccess(newLists, newTimeSpan));
    }
  }
}
