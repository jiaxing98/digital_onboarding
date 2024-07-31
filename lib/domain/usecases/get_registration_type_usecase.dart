import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';

class GetRegistrationTypeUseCase {
  final UserRepository _repository;

  GetRegistrationTypeUseCase(this._repository);

  Future<RegistrationType> call() async {
    return await _repository.getRegistrationType();
  }
}
