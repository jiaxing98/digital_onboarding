abstract class EkycException implements Exception {
  final String? message;

  const EkycException(this.message);
}

class InvalidDocumentException extends EkycException {
  const InvalidDocumentException([super.message]);
}

class FaceVerificationException extends EkycException {
  final bool isMale;
  const FaceVerificationException(this.isMale, super.message);
}

class PassportMisuseException extends EkycException {
  const PassportMisuseException([super.message]);
}

class PassportExpiredException extends EkycException {
  const PassportExpiredException([super.message]);
}

class EkycUnknownException extends EkycException {
  const EkycUnknownException(super.message);
}
