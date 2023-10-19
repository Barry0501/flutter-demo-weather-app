// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../../app_delegate.dart' as _i3;
import '../core/services/logger_service.dart' as _i6;
import '../data/datasources/weather_api.dart' as _i11;
import '../data/repository/weather_repository.impl.dart' as _i13;
import '../domain/repository/weather_repository.dart' as _i12;
import '../domain/usecases/weather_usecase.dart' as _i14;
import '../presentation/home/bloc/home_bloc.dart' as _i4;
import '../presentation/home/home_routes.dart' as _i5;
import '../presentation/weather/bloc/weather_bloc.dart' as _i15;
import '../presentation/weather/weather_routes.dart' as _i9;
import '../routes.dart' as _i7;
import 'modules/datasource_module.dart' as _i16;

const String _prod = 'prod';

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final datasourceModule = _$DatasourceModule();
  gh.singleton<_i3.AppDelegate>(_i3.AppDelegate());
  gh.factory<_i4.HomeBloc>(() => _i4.HomeBloc());
  gh.factory<_i5.HomeRoutes>(() => _i5.HomeRoutes());
  gh.factory<_i6.LoggerService>(() => _i6.LoggerService());
  gh.singleton<_i7.Routes>(_i7.Routes());
  await gh.singletonAsync<_i8.SharedPreferences>(
    () => datasourceModule.prefs,
    preResolve: true,
  );
  gh.factory<_i9.WeatherRoutes>(() => _i9.WeatherRoutes());
  gh.factory<_i10.Dio>(
    () => datasourceModule.dioProd(gh<_i8.SharedPreferences>()),
    registerFor: {_prod},
  );
  gh.factory<_i11.WeatherApi>(() => _i11.WeatherApi(gh<_i10.Dio>()));
  gh.factory<_i12.WeatherRepository>(
      () => _i13.WeatherRepositoryImpl(gh<_i11.WeatherApi>()));
  gh.factory<_i14.WeatherUsecase>(
      () => _i14.WeatherUsecase(gh<_i12.WeatherRepository>()));
  gh.factory<_i15.WeatherBloc>(
      () => _i15.WeatherBloc(gh<_i14.WeatherUsecase>()));
  return getIt;
}

class _$DatasourceModule extends _i16.DatasourceModule {}
