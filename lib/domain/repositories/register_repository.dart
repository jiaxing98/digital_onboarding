import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';

abstract class RegisterRepository {
  Future<void> startRegistration(RegistrationType registrationType);
  Future<String> verifySimPackage(String qrCode);
  Future<void> confirmMobileNumber(String callerId);
  Future<EkycInfo> performEkyc();
  Future<void> submitNewActivation(AddressInfo addressInfo);
  Future<void> confirmDetails(AddressInfo addressInfo);
  Future<void> submitPortInActivation(String portInMobileNo, String providerId);
}
