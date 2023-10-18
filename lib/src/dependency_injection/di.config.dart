// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../app_delegate.dart' as _i3;
import '../core/services/logger_service.dart' as _i5;
import '../data/datasources/weather_api.dart' as _i9;
import '../data/repository/weather_repository.impl.dart' as _i11;
import '../domain/repository/weather_repository.dart' as _i10;
import '../domain/usecases/weather_usecase.dart' as _i12;
import '../presentation/home/bloc/home_bloc.dart' as _i13;
import '../presentation/home/home_routes.dart' as _i4;
import '../routes.dart' as _i6;
import 'modules/datasource_module.dart' as _i14;

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
  gh.factory<_i4.HomeRoutes>(() => _i4.HomeRoutes());
  gh.factory<_i5.LoggerService>(() => _i5.LoggerService());
  gh.singleton<_i6.Routes>(_i6.Routes());
  await gh.singletonAsync<_i7.SharedPreferences>(
    () => datasourceModule.prefs,
    preResolve: true,
  );
  gh.factory<_i8.Dio>(
    () => datasourceModule.dioProd(gh<_i7.SharedPreferences>()),
    registerFor: {_prod},
  );
  gh.factory<_i9.WeatherApi>(() => _i9.WeatherApi(gh<_i8.Dio>()));
  gh.factory<_i10.WeatherRepository>(
      () => _i11.WeatherRepositoryImpl(gh<_i9.WeatherApi>()));
  gh.factory<_i12.WeatherUsecase>(
      () => _i12.WeatherUsecase(gh<_i10.WeatherRepository>()));
  gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc(gh<_i12.WeatherUsecase>()));
  return getIt;
}

class _$DatasourceModule extends _i14.DatasourceModule {}
