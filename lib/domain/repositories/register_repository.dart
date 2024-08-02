import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/port_in_details.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';

abstract class RegisterRepository {
  Future<void> startRegistrationTransaction(RegistrationType registrationType);
  Future<bool> updateIdDocumentTransaction(IdDocument document);
  Future<void> updateEkycResultTransaction();
  Future<void> confirmDetail(AddressInfo address);
  Future<void> submitNewActivation(AddressInfo address);
  Future<void> submitPortInActivation(PortInDetails details);
}
