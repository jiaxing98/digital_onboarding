import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/port_in_details.dart';
import 'package:digital_onboarding/domain/entities/verify_package_tag_result.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  @override
  Future<void> confirmDetail(AddressInfo address) {
    // TODO: implement confirmDetail
    throw UnimplementedError();
  }

  @override
  Future<bool> createTransaction(String agentId) {
    // TODO: implement createTransaction
    throw UnimplementedError();
  }

  @override
  Future<void> startRegistration(bool isNew) {
    // TODO: implement startRegistration
    throw UnimplementedError();
  }

  @override
  Future<void> submitNewActivation(AddressInfo address) {
    // TODO: implement submitNewActivation
    throw UnimplementedError();
  }

  @override
  Future<void> submitPortInActivation(PortInDetails details) {
    // TODO: implement submitPortInActivation
    throw UnimplementedError();
  }

  @override
  Future<bool> updateConfirmMobileTransaction() async {
    return true;
  }

  @override
  Future<void> updateEkycResultTransaction() {
    // TODO: implement updateEkycResultTransaction
    throw UnimplementedError();
  }

  @override
  Future<bool> updateIdDocumentTransaction(IdDocument document) {
    // TODO: implement updateIdDocumentTransaction
    throw UnimplementedError();
  }

  @override
  Future<VerifyPackageTagResult> verifyPackageTag(String packageTag) {
    // TODO: implement verifyPackageTag
    throw UnimplementedError();
  }
}
