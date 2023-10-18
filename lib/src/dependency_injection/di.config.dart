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
import 'package:weather_app/src/dependency_injection/mobilehub_core_micro.module.dart'
    as _i3;

import '../../app_delegate.dart' as _i4;
import '../core/services/logger_service.dart' as _i5;
import '../routes.dart' as _i6;
import 'modules/datasource_module.dart' as _i9;

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
  await _i3.WeatherAppPackageModule().init(gh);
  final datasourceModule = _$DatasourceModule();
  gh.singleton<_i4.AppDelegate>(_i4.AppDelegate());
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
  return getIt;
}

class _$DatasourceModule extends _i9.DatasourceModule {}
