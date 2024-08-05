abstract class RegistrationException implements Exception {
  final String message;

  const RegistrationException(this.message);
}

class UnderAgeException extends RegistrationException {
  const UnderAgeException(super.message);
}

class SimExceedException extends RegistrationException {
  const SimExceedException(super.message);
}

class RegistrationUnknownException extends RegistrationException {
  const RegistrationUnknownException(super.message);
}
