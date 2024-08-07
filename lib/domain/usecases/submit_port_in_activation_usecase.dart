import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class SubmitPortInActivationUseCase {
  final RegisterRepository _repository;

  SubmitPortInActivationUseCase(this._repository);

  Future<void> call(String portInMobileNumber, String providerId) async {
    await _repository.submitPortInActivation(portInMobileNumber, providerId);
  }
}
