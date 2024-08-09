import 'dart:math';

import 'package:digital_onboarding/core/extensions/datetime.dart';
import 'package:digital_onboarding/core/extensions/nullable_string.dart';
import 'package:digital_onboarding/data/data_sources/app_data_data_source.dart';
import 'package:digital_onboarding/data/data_sources/register_data_source.dart';
import 'package:digital_onboarding/data/data_sources/user_data_source.dart';
import 'package:digital_onboarding/data/requests/new_activation_request.dart';
import 'package:digital_onboarding/data/requests/port_in_activation_request.dart';
import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';
import 'package:digital_onboarding/utils/ekyc_service.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final AppDataDataSource _appDS;
  final RegisterDataSource _registerDS;
  final UserDataSource _userDS;
  final EkycService _service;

  RegisterRepositoryImpl(
    this._appDS,
    this._registerDS,
    this._userDS,
    this._service,
  );

  @override
  Future<void> confirmDetails(AddressInfo addressInfo) async {
    await _userDS.updateAddressInfo(addressInfo);
  }

  @override
  Future<void> confirmMobileNumber(String callerId) async {
    await _registerDS.confirmMobileNumber(callerId);
  }

  @override
  Future<EkycInfo> performEkyc() async {
    final document = await _userDS.getIdDocument();
    final rawInfo = await switch (document.type) {
      DocumentType.myKad => _service.performMyKadEkyc(),
      DocumentType.myTentera => _service.performMyTenteraEkyc(),
      DocumentType.passport => _service.performPassportEkyc(),
    };

    final ekycInfo = EkycInfo(
      name: rawInfo.name,
      identificationNo: rawInfo.identificationNo,
      gender: _parseGender(rawInfo.gender),
      birthDate: rawInfo.birthDate,
      addressInfo: await _parseAddress(rawInfo.fullAddress),
    );

    await _userDS.saveEkycInfo(ekycInfo);
    return ekycInfo;
  }

  @override
  Future<void> startRegistration(RegistrationType registrationType) async {
    await _userDS.saveRegistrationType(registrationType);
  }

  @override
  Future<void> submitNewActivation(AddressInfo addressInfo) async {
    final userInfo = await _userDS.getUserInfo();
    final packageTag = await _userDS.getScannedPackageTag();
    final request = NewActivationRequest(
      transactionId: userInfo.transactionId,
      registrationType: userInfo.registrationType.name,
      packageTag: packageTag,
      idDocumentCode: userInfo.idDocument?.code ?? "",
      identificationNo: userInfo.ekycInfo?.identificationNo ?? "",
      gender: userInfo.ekycInfo?.gender.name ?? "",
      birthDate: userInfo.ekycInfo?.birthDate?.format('yyyy-MM-dd') ?? "",
      street1: addressInfo.street1,
      street2: addressInfo.street2,
      postcode: addressInfo.postcode,
      city: addressInfo.city,
      stateCode: addressInfo.state?.code ?? "",
    );
    await _registerDS.submitNewActivation(request);
  }

  @override
  Future<void> submitPortInActivation(String portInMobileNo, String serviceProviderId) async {
    final userInfo = await _userDS.getUserInfo();
    final packageTag = await _userDS.getScannedPackageTag();
    final request = PortInActivationRequest(
      transactionId: userInfo.transactionId,
      registrationType: userInfo.registrationType.name,
      packageTag: packageTag,
      idDocumentCode: userInfo.idDocument?.code ?? "",
      identificationNo: userInfo.ekycInfo?.identificationNo ?? "",
      gender: userInfo.ekycInfo?.gender.name ?? "",
      birthDate: userInfo.ekycInfo?.birthDate?.format('yyyy-MM-dd') ?? "",
      street1: userInfo.ekycInfo?.addressInfo?.street1 ?? "",
      street2: userInfo.ekycInfo?.addressInfo?.street2 ?? "",
      postcode: userInfo.ekycInfo?.addressInfo?.postcode ?? "",
      city: userInfo.ekycInfo?.addressInfo?.city ?? "",
      stateCode: userInfo.ekycInfo?.addressInfo?.state?.code ?? "",
      portInMobileNo: portInMobileNo,
      serviceProviderId: serviceProviderId,
    );

    await _registerDS.submitPortInActivation(request);
  }

  @override
  Future<String> verifySimPackage(String qrCode) async {
    final packageTag = await _registerDS.verifySimPackage(qrCode);
    await _userDS.savePackageTagInfo(packageTag);

    String callerId = "011 ";
    for (var i = 0; i < 7; i++) {
      callerId = callerId + Random().nextInt(10).toString();
    }
    return callerId;
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
}
