import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class ScanSimPackageUseCase {
  final RegisterRepository _repository;

  ScanSimPackageUseCase(this._repository);

  Future<void> call(String qrCode) async {
    await _repository.verifySimPackage(qrCode);
  }
}
