import 'package:digital_onboarding/domain/entities/country_state.dart';
import 'package:digital_onboarding/domain/repositories/app_data_repository.dart';

class GetCountryStatesUseCase {
  final AppDataRepository _repository;

  GetCountryStatesUseCase(this._repository);

  Future<List<CountryState>> call() async {
    return await _repository.getCountryStates();
  }
}
