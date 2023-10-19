import 'package:dio/dio.dart';

const keyAuthentication = 'Authorization';
const keyApiKey = 'XApiKey';
const keyBear = 'Bearer';
const keySavedToken = '_keytoken';

class ApiTokenInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // [TODO]: Key need to add into env
    options.queryParameters.addAll({'key': '0504757547134b6192f104013231710'});
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }
}
