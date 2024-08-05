class EkycRawInfo {
  final String name;
  final String identificationNo;
  final String gender;
  final DateTime? birthDate;
  final String? fullAddress;

  const EkycRawInfo({
    required this.name,
    required this.identificationNo,
    required this.gender,
    required this.birthDate,
    required this.fullAddress,
  });
}
