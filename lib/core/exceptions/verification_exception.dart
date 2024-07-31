abstract class VerificationException implements Exception {
  final String message;

  const VerificationException(this.message);
}

class IdVerificationException extends VerificationException {
  const IdVerificationException(super.message);
}

class FaceVerificationException extends VerificationException {
  final bool isMale;
  const FaceVerificationException(this.isMale, super.message);
}

class PassportMisuseException extends VerificationException {
  const PassportMisuseException(super.message);
}

class PassportExpiredException extends VerificationException {
  const PassportExpiredException(super.message);
}

class VerificationUnknownException extends VerificationException {
  const VerificationUnknownException(super.message);
}
