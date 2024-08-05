import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:equatable/equatable.dart';

enum RegistrationType { newRegistration, portIn }

class UserInfo extends Equatable {
  final String transactionId;
  final RegistrationType registrationType;
  final IdDocument? idDocument;
  final EkycInfo? ekycInfo;

  const UserInfo({
    required this.transactionId,
    required this.registrationType,
    required this.idDocument,
    required this.ekycInfo,
  });

  @override
  List<Object?> get props => [
        transactionId,
        registrationType,
        idDocument,
        ekycInfo,
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
      ekycInfo: null,
    );
  }

  UserInfo copyWith({
    IdDocument? idDocument,
    EkycInfo? ekycInfo,
  }) {
    return UserInfo(
      transactionId: transactionId,
      registrationType: registrationType,
      idDocument: idDocument ?? this.idDocument,
      ekycInfo: ekycInfo ?? this.ekycInfo,
    );
  }
}
