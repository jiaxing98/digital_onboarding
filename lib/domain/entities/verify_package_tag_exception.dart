abstract class VerifyPackageTagException implements Exception {
  final String message;

  const VerifyPackageTagException(this.message);
}

class SimPendingException extends VerifyPackageTagException {
  const SimPendingException(super.message);
}

class SimExpiredException extends VerifyPackageTagException {
  const SimExpiredException(super.message);
}

class SimUnknownException extends VerifyPackageTagException {
  const SimUnknownException(super.message);
}

final class PackageTagExceptionCode {
  static const verifyPackageInvalidAgentId = 'invalid_agent_id';
  static const verifyPackageGeneralError = 'verify_package_general_error';
  static const verifyPackageTagExpire = 'verify_package_tag_expire';
  static const verifyPackageTagActivationSuccess = 'verify_package_tag_activation_success';
  static const verifyPackageTagActivationFailed = 'verify_package_tag_activation_failed';
}
