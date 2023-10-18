import 'default_env.dart';

class Configurations {
  static String _environment = DefaultConfig.environment;
  static String _baseUrl = DefaultConfig.baseUrl;
  static String _authenUrl = DefaultConfig.authenUrl;
  static bool _isProduction = DefaultConfig.isProduction;

  void setConfigurationValues(Map<String, dynamic> value) {
    _environment = value['environment'] ?? DefaultConfig.environment;
    _baseUrl = value['baseUrl'] ?? DefaultConfig.baseUrl;
    _isProduction = value['isProduction'] ?? DefaultConfig.isProduction;
    _authenUrl = value['authenUrl'] ?? DefaultConfig.authenUrl;
  }

  static String get environment => _environment;
  static String get baseUrl => _baseUrl;
  static String get authenUrl => _authenUrl;
  static bool get isProduction => _isProduction;
}
