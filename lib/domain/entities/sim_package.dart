class SimPackage {
  final String packageId;
  final String programmeId;
  final String callerId;
  final String serialNo;
  final String packageTag;
  final DateTime expiryDate;

  SimPackage({
    required this.packageId,
    required this.programmeId,
    required this.callerId,
    required this.serialNo,
    required this.packageTag,
    required this.expiryDate,
  });
}
