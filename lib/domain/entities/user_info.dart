import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/agent.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';

enum RegistrationType { newRegistration, portIn }

class UserInfo {
  final String transactionId;
  final RegistrationType registrationType;
  final Agent agent;
  final IdDocument idDocument;
  final AddressInfo address;

  UserInfo({
    required this.transactionId,
    required this.registrationType,
    required this.agent,
    required this.idDocument,
    required this.address,
  });
}
