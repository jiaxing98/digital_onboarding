import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:equatable/equatable.dart';

enum RegistrationType { newRegistration, portIn }

class UserInfo extends Equatable {
  final String transactionId;
  final RegistrationType registrationType;
  final IdDocument? idDocument;
  final AddressInfo? address;

  const UserInfo({
    required this.transactionId,
    required this.registrationType,
    required this.idDocument,
    required this.address,
  });

  @override
  List<Object?> get props => [
        transactionId,
        registrationType,
        idDocument,
        address,
      ];

  @override
  bool? get stringify => true;

  factory UserInfo.initialize({
    required String transactionId,
    required RegistrationType registrationType,
  }) {
    return UserInfo(
      transactionId: transactionId,
      registrationType: registrationType,
      idDocument: null,
      address: null,
    );
  }

  UserInfo copyWith({
    IdDocument? idDocument,
    AddressInfo? address,
  }) {
    return UserInfo(
      transactionId: transactionId,
      registrationType: registrationType,
      idDocument: idDocument ?? this.idDocument,
      address: address ?? this.address,
    );
  }
}
