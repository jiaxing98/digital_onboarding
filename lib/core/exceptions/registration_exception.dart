abstract class RegistrationException implements Exception {
  final String message;

  const RegistrationException(this.message);
}

class InvalidRequestException extends RegistrationException {
  const InvalidRequestException(super.message);
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

class RegistrationExceptionCode {
  static const simActivationExceedLimit =
      'submit_activation_more_than_max_allowed';
  static const underAge = 'submit_under_age_application';
}
