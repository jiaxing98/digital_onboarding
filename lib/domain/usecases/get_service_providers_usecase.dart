import 'package:digital_onboarding/domain/entities/service_provider.dart';
import 'package:digital_onboarding/domain/repositories/app_data_repository.dart';

class GetServiceProvidersUseCase {
  final AppDataRepository _repository;

  GetServiceProvidersUseCase(this._repository);

  Future<List<ServiceProvider>> call() async {
    return await _repository.getServiceProviders();
  }
}
