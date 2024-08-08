abstract class AppException implements Exception {
  final String? message;

  const AppException(this.message);
}

class InvalidAppStateException extends AppException {
  const InvalidAppStateException([super.message]);
}

class MissingFieldsException extends AppException {
  const MissingFieldsException([super.message]);
}
