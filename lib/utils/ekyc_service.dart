import 'package:digital_onboarding/core/exceptions/ekyc_exception.dart';
import 'package:digital_onboarding/domain/entities/ekyc_raw_info.dart';
import 'package:digital_onboarding/third_party_sdk/ekyc/ekyc_sdk.dart';
import 'package:digital_onboarding/third_party_sdk/ekyc/result_mykad.dart';
import 'package:digital_onboarding/third_party_sdk/ekyc/result_mytentera.dart';
import 'package:digital_onboarding/third_party_sdk/ekyc/result_passport.dart';

class EkycService {
  final EkycSdk _sdk = EkycSdkImpl();

  Future<EkycRawInfo> performMyKadEkyc() async {
    final result = await _sdk.performMyKadEkyc();
    _checkIfMyKadValid(result);

    return EkycRawInfo(
      name: result.idFront?.data?.name ?? "",
      identificationNo: result.idFront?.data?.icNumber ?? "",
      gender: result.idFront?.data?.gender ?? "",
      birthDate: DateTime.tryParse(result.idFront?.data?.birthDateISO ?? ""),
      fullAddress: result.idFront?.data?.fullAddress ?? "",
    );
  }

  Future<EkycRawInfo> performMyTenteraEkyc() async {
    final result = await _sdk.performMyTenteraEkyc();
    _checkIfMyTenteraValid(result);

    return EkycRawInfo(
      name: result.idFront?.data?.name ?? "",
      identificationNo: result.idFront?.data?.idNumber ?? "",
      gender: result.idFront?.data?.gender ?? "",
      birthDate: DateTime.tryParse(result.idFront?.data?.dateOfBirth ?? ""),
      fullAddress: result.idFront?.data?.address ?? "",
    );
  }

  Future<EkycRawInfo> performPassportEkyc() async {
    final result = await _sdk.performPassportEkyc();
    _checkIfPassportValid(result);

    return EkycRawInfo(
      name: result.passport?.data?.name ?? "",
      identificationNo: result.passport?.data?.passportNumber ?? "",
      gender: result.passport?.data?.gender ?? "",
      birthDate: DateTime.tryParse(result.passport?.data?.dateOfBirth ?? ""),
      fullAddress: "",
    );
  }

  void _checkIfMyKadValid(MyKadResult result) {
    if (result.ekycSuccess == null || !(result.ekycSuccess!)) {
      throw const InvalidDocumentException();
    }
  }

  void _checkIfMyTenteraValid(MyTenteraResult result) {
    if (result.ekycSuccess == null || !(result.ekycSuccess!)) {
      throw const InvalidDocumentException();
    }
  }

  void _checkIfPassportValid(PassportResult result) {
    if (result.ekycSuccess == null || !(result.ekycSuccess!)) {
      throw const InvalidDocumentException();
    }

    if (result.passport?.data?.nationality?.toLowerCase() == 'malaysian') {
      throw const PassportMisuseException();
    }

    final expired = DateTime.tryParse(result.passport?.data?.dateOfExpiry ?? "");
    if (expired == null || DateTime.now().isAfter(expired)) {
      throw const PassportExpiredException();
    }
  }
}
