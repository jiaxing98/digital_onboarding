import 'package:equatable/equatable.dart';

class PortInActivationRequest extends Equatable {
  final String transactionId;
  final String registrationType;
  final String packageTag;
  final String idDocumentCode;
  final String identificationNo;
  final String gender;
  final String birthDate;
  final String street1;
  final String street2;
  final String postcode;
  final String city;
  final String stateCode;
  final String portInMobileNo;
  final String serviceProviderId;

  const PortInActivationRequest({
    required this.transactionId,
    required this.registrationType,
    required this.packageTag,
    required this.idDocumentCode,
    required this.identificationNo,
    required this.gender,
    required this.birthDate,
    required this.street1,
    required this.street2,
    required this.postcode,
    required this.city,
    required this.stateCode,
    required this.portInMobileNo,
    required this.serviceProviderId,
  });

  @override
  List<Object?> get props => [
        transactionId,
        registrationType,
        packageTag,
        idDocumentCode,
        identificationNo,
        gender,
        birthDate,
        street1,
        street2,
        postcode,
        city,
        stateCode,
        portInMobileNo,
        serviceProviderId,
      ];

  @override
  bool? get stringify => true;
}
