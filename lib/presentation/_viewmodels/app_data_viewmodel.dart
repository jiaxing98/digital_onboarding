import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/service_provider.dart';
import 'package:digital_onboarding/domain/entities/state.dart';
import 'package:digital_onboarding/domain/repositories/app_data_repository.dart';
import 'package:flutter/material.dart';

class AppDataVM extends ChangeNotifier {
  final AppDataRepository _appDataRepository;

  AppDataVM({
    required AppDataRepository appDataRepository,
  }) : _appDataRepository = appDataRepository;

  List<IdDocument>? idDocuments;
  Map<String, CountryState>? stateMap;
  Map<String, String>? countryMap;
  Map<String, ServiceProvider>? serviceProviderMap;

  Future<void> getAppData() async {
    try {
      final result = await Future.wait([
        _appDataRepository.getIdDocuments(),
        _appDataRepository.getStateMap(),
        _appDataRepository.getCountryMap(),
        _appDataRepository.getServiceProviderMap(),
      ]);

      idDocuments = result[0] as List<IdDocument>;
      stateMap = result[1] as Map<String, CountryState>;
      countryMap = result[2] as Map<String, String>;
      serviceProviderMap = result[3] as Map<String, ServiceProvider>;
    } catch (ex) {
      return;
    }
  }

  Future<List<IdDocument>?> getIdDocuments() async {
    idDocuments ??= await _appDataRepository.getIdDocuments();
    return idDocuments;
  }

  Future<Map<String, CountryState>?> getStateMap() async {
    stateMap ??= await _appDataRepository.getStateMap();
    return stateMap;
  }

  Future<Map<String, String>?> getCountryMap() async {
    countryMap ??= await _appDataRepository.getCountryMap();
    return countryMap;
  }

  Future<Map<String, ServiceProvider>?> getServiceProviderMap() async {
    serviceProviderMap ??= await _appDataRepository.getServiceProviderMap();
    return serviceProviderMap;
  }
}
