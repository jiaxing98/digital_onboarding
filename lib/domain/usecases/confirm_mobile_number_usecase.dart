import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class ConfirmMobileNumberUseCase {
  final RegisterRepository _repository;

  ConfirmMobileNumberUseCase(this._repository);

  Future<void> call(String callerId) async {
    return await _repository.confirmMobileNumber(callerId);
  }
}
