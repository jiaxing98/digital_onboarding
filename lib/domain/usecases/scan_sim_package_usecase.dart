import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class ScanSimPackageUseCase {
  final RegisterRepository _repository;

  ScanSimPackageUseCase(this._repository);

  Future<String> call(String qrCode) async {
    return await _repository.verifySimPackage(qrCode);
  }
}
