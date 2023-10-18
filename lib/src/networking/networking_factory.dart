import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkingFactory {
  static Dio createDio(String baseUrl, SharedPreferences sharedPreferences,
      [bool isDebug = false]) {
    final dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      // connectTimeout: 30000,
      // receiveTimeout: 6000,
    ));

    return dio;
  }
}
