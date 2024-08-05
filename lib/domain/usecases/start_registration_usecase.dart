import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';

class StartRegistrationUseCase {
  final UserRepository _repository;

  StartRegistrationUseCase(this._repository);

  Future<void> call(RegistrationType registrationType) async {
    _repository.selectRegistrationType(registrationType);
  }
}
