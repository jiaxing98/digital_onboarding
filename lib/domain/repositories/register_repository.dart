import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/port_in_details.dart';
import 'package:digital_onboarding/domain/entities/verify_package_tag_result.dart';

abstract class RegisterRepository {
  Future<void> startRegistration(bool isNew);
  Future<bool> createTransaction(String agentId);
  Future<VerifyPackageTagResult> verifyPackageTag(String packageTag);
  Future<bool> updateConfirmMobileTransaction();
  Future<bool> updateIdDocumentTransaction(IdDocument document);
  Future<void> updateEkycResultTransaction();
  Future<void> confirmDetail(AddressInfo address);
  Future<void> submitNewActivation(AddressInfo address);
  Future<void> submitPortInActivation(PortInDetails details);
}
