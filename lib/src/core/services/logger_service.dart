import 'dart:developer';

import 'package:injectable/injectable.dart';

@injectable
class LoggerService {
  static void print(String? message) {
    _print('$message');
  }

  void d(String? message) {
    _print('[$_tagDefault]: $message');
  }
}

void _print(String? message) {
  log('[$_tagDefault] $message');
}

const _tagDefault = 'SCALE_UP';
