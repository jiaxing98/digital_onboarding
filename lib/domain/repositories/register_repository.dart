import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';

abstract class RegisterRepository {
  Future<void> verifySimPackage(String qrCode);
  Future<EkycInfo> performEkyc();
  Future<void> submitNewActivation(AddressInfo addressInfo);
  Future<void> submitPortInActivation(String portInMobileNo, String providerId);
}
