import 'package:digital_onboarding/domain/repositories/user_repository.dart';

class GetScannedCallerIdUseCase {
  final UserRepository _repository;

  GetScannedCallerIdUseCase(this._repository);

  Future<String> call() async {
    return _repository.getCallerId();
  }
}
