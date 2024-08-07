import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/port_in_details.dart';

abstract class RegisterRepository {
  Future<void> verifySimPackage(String qrCode);
  Future<EkycInfo> performEkyc();
  Future<void> submitNewActivation(AddressInfo addressInfo);
  Future<void> submitPortInActivation(PortInDetails details);
}
