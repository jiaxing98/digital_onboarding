import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class StartRegistrationUseCase {
  final RegisterRepository _repository;

  StartRegistrationUseCase(this._repository);

  Future<void> call(RegistrationType registrationType) async {
    _repository.startRegistrationTransaction(registrationType);
  }
}
