import 'package:digital_onboarding/data/data_sources/app_data_data_source.dart';
import 'package:digital_onboarding/domain/entities/country_state.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/service_provider.dart';
import 'package:digital_onboarding/domain/repositories/app_data_repository.dart';

class AppDataRepositoryImpl extends AppDataRepository {
  final AppDataDataSource _dataSource;

  AppDataRepositoryImpl(this._dataSource);

  @override
  Future<Map<String, String>> getCountryMap() async {
    return await _dataSource.getCountryMap();
  }

  @override
  Future<List<CountryState>> getCountryStates() async {
    return await _dataSource.getCountryStates();
  }

  @override
  Future<List<IdDocument>> getIdDocuments() async {
    return await _dataSource.getIdDocuments();
  }

  @override
  Future<List<ServiceProvider>> getServiceProviders() async {
    return await _dataSource.getServiceProviders();
  }

  @override
  Future<Map<String, CountryState>> getStateMap() async {
    return await _dataSource.getStateMap();
  }
}
