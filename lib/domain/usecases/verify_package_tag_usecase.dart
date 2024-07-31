import 'package:digital_onboarding/domain/entities/verify_package_tag_result.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class VerifyPackageTagUseCase {
  final RegisterRepository _repository;

  VerifyPackageTagUseCase(this._repository);

  Future<VerifyPackageTagResult> call({required String packageTag}) async {
    return await _repository.verifyPackageTag(packageTag);
  }
}
