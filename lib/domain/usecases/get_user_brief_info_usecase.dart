import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';

class GetUserBriefInfoUseCase {
  final UserRepository _repository;

  GetUserBriefInfoUseCase(this._repository);

  Future<({String name, RegistrationType registrationType})> call() async {
    final userInfo = await _repository.getUserInfo();
    return (
      name: userInfo.ekycInfo?.name ?? "",
      registrationType: userInfo.registrationType,
    );
  }
}
