import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class PerformEkycUseCase {
  final RegisterRepository _repository;

  PerformEkycUseCase(this._repository);

  Future<EkycInfo> call() async {
    return await _repository.performEkyc();
  }
}
