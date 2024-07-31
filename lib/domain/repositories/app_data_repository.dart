import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/service_provider.dart';
import 'package:digital_onboarding/domain/entities/state.dart';

abstract class AppDataRepository {
  Future<List<IdDocument>> getIdDocuments();
  Future<Map<String, CountryState>> getStateMap();
  Future<Map<String, String>> getCountryMap();
  Future<Map<String, ServiceProvider>> getServiceProviderMap();
}
