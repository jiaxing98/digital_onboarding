import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class SubmitNewActivationUseCase {
  final RegisterRepository _repository;

  SubmitNewActivationUseCase(this._repository);

  Future<void> call(AddressInfo addressInfo) async {
    await _repository.submitNewActivation(addressInfo);
  }
}
