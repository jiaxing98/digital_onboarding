import 'package:digital_onboarding/domain/entities/verify_package_tag_exception.dart';

class VerifyPackageTagResult {
  final bool success;
  final VerifyPackageTagException? exception;

  VerifyPackageTagResult({
    required this.success,
    this.exception,
  });
}
