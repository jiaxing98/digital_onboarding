import 'package:digital_onboarding/domain/entities/country_state.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/service_provider.dart';

abstract class AppDataRepository {
  Future<List<IdDocument>> getIdDocuments();
  Future<Map<String, CountryState>> getStateMap();
  Future<List<CountryState>> getCountryStates();
  Future<Map<String, String>> getCountryMap();
  Future<List<ServiceProvider>> getServiceProviders();
}
