class ApiException implements Exception {
  final String message;
  final String? code;
  final dynamic errors;

  ApiException({
    required this.message,
    this.code,
    this.errors,
  });
}
