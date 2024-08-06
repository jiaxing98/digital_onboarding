class NewActivationRequest {
  final String transactionId;
  final String registrationType;
  final String idDocumentCode;
  final String identificationNo;
  final String gender;
  final String birthDate;
  final String street1;
  final String street2;
  final String postcode;
  final String city;
  final String stateCode;

  NewActivationRequest({
    required this.transactionId,
    required this.registrationType,
    required this.idDocumentCode,
    required this.identificationNo,
    required this.gender,
    required this.birthDate,
    required this.street1,
    required this.street2,
    required this.postcode,
    required this.city,
    required this.stateCode,
  });
}
