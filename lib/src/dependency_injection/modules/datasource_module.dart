import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/configurations/configurations.dart';
import '../../networking/networking_factory.dart';

@module
abstract class DatasourceModule {
  @preResolve
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @prod
  Dio dioProd(SharedPreferences sharedPreferences) =>
      NetworkingFactory.createDio(
        Configurations.baseUrl,
        sharedPreferences,
      );
}
