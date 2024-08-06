abstract class ActivationException implements Exception {
  final String message;

  const ActivationException(this.message);
}

class OutstandingBillException extends ActivationException {
  const OutstandingBillException(super.message);
}

class SimExceedException extends ActivationException {
  const SimExceedException(super.message);
}
