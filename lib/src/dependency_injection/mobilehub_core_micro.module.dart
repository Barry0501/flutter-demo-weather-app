//@GeneratedMicroModule;WeatherAppPackageModule;package:weather_app/src/dependency_injection/mobilehub_core_micro.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i7;
import 'package:injectable/injectable.dart' as _i1;
import 'package:shared_preferences/shared_preferences.dart' as _i6;
import 'package:weather_app/app_delegate.dart' as _i3;
import 'package:weather_app/src/core/services/logger_service.dart' as _i4;
import 'package:weather_app/src/dependency_injection/modules/datasource_module.dart'
    as _i8;
import 'package:weather_app/src/routes.dart' as _i5;

const String _prod = 'prod';

class WeatherAppPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    final datasourceModule = _$DatasourceModule();
    gh.singleton<_i3.AppDelegate>(_i3.AppDelegate());
    gh.factory<_i4.LoggerService>(() => _i4.LoggerService());
    gh.singleton<_i5.Routes>(_i5.Routes());
    await gh.singletonAsync<_i6.SharedPreferences>(
      () => datasourceModule.prefs,
      preResolve: true,
    );
    gh.factory<_i7.Dio>(
      () => datasourceModule.dioProd(gh<_i6.SharedPreferences>()),
      registerFor: {_prod},
    );
  }
}

class _$DatasourceModule extends _i8.DatasourceModule {}
