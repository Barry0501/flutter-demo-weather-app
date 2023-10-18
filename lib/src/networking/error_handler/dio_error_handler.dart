import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'errors_code_mapping.dart';

extension DioErrorExt on DioException {
  String toMessage(BuildContext context) {
    if (response?.statusCode == 502) {
      return 'Hệ thống đang bảo trì, Vui lòng thử lại sau.';
    }

    final errorCode = response?.data?['code'];

    if (errorCode is String) {
      var message = errorCode.toErrorMessage(context);

      if (kDebugMode) {
        message += ' ($errorCode)';
        print('--> [SCALE_UP]: $message');
      }

      return message;
    }
    return toString();
  }
}
