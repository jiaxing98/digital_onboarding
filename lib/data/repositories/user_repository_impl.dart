import 'package:digital_onboarding/core/extensions/nullable_string.dart';
import 'package:digital_onboarding/data/data_sources/app_data_data_source.dart';
import 'package:digital_onboarding/data/data_sources/user_data_source.dart';
import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_raw_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final AppDataDataSource _appDS;
  final UserDataSource _userDS;

  UserRepositoryImpl(
    this._appDS,
    this._userDS,
  );

  @override
  Future<IdDocument> getIdDocument() async {
    return await _userDS.getIdDocument();
  }

  @override
  Future<RegistrationType> getRegistrationType() async {
    return await _userDS.getRegistrationType();
  }

  @override
  Future<EkycInfo> processedAndSaveEkycInfo(EkycRawInfo rawInfo) async {
    final processed = EkycInfo(
      name: rawInfo.name,
      identificationNo: rawInfo.identificationNo,
      gender: _parseGender(rawInfo.gender),
      birthDate: rawInfo.birthDate,
      addressInfo: await _parseAddress(rawInfo.fullAddress),
    );
    await _userDS.saveEkycInfo(processed);
    return processed;
  }

  @override
  Future<void> selectIdDocument(IdDocument document) async {
    await _userDS.saveIdDocument(document);
  }

  @override
  Future<void> selectRegistrationType(RegistrationType registrationType) async {
    await _userDS.saveRegistrationType(registrationType);
  }

  @override
  Future<void> updateAddressInfo(AddressInfo address) async {
    await _userDS.updateAddressInfo(address);
  }

  Gender _parseGender(String genderStr) {
    return switch (genderStr.toLowerCase()) {
      'm' || 'l' => Gender.male,
      'f' || 'p' => Gender.female,
      _ => Gender.none
    };
  }

  Future<AddressInfo?> _parseAddress(String? fullAddress) async {
    if (fullAddress.isNullOrEmpty) return null;

    final address = fullAddress!.split('\n');
    final stateStr = address[address.length - 1];

    final availableCountryStates = await _appDS.getCountryStates();
    final matches = availableCountryStates.where((e) => e.keywords.contains(stateStr)).toList();

    return AddressInfo(
      street1: address[0],
      street2: address[1],
      postcode: address[address.length - 2].replaceAll(RegExp(r'\D'), ''),
      city: address[address.length - 2].replaceAll(RegExp(r'\d+\s'), ''),
      state: matches.isNotEmpty ? matches.first : null,
    );
  }

  @override
  Future<UserInfo> getUserInfo() async {
    return await _userDS.getUserInfo();
  }
}
