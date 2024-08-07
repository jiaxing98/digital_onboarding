import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';

class ConfirmDetailsUseCase {
  final UserRepository _repository;

  ConfirmDetailsUseCase(this._repository);

  Future<void> call(AddressInfo addressInfo) async {
    await _repository.updateAddressInfo(addressInfo);
  }
}
