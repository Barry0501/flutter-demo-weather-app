import 'package:dio/dio.dart';

import 'api_exception.dart';

extension ResponseDioExt on Response {
  ApiException get apiException {
    return ApiException(
      message: data?['errorString'] ?? '',
      code: data?['code'] ?? '',
      errors: data?['statusCode'] ?? '',
    );
  }
}
