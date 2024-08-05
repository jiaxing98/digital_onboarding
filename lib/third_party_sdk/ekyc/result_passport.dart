import 'package:json_annotation/json_annotation.dart';

part 'result_passport.g.dart';

@JsonSerializable(explicitToJson: true)
final class PassportResult {
  final Passport? passport;
  final LivenessResult? livenessResult;
  final String? sessionId;
  final bool? livenessDetected;
  final bool? faceIsMatch;
  final bool? passportIsValid;
  final bool? ekycSuccess;
  final bool? isPending;

  PassportResult({
    required this.passport,
    required this.livenessResult,
    required this.sessionId,
    required this.livenessDetected,
    required this.faceIsMatch,
    required this.passportIsValid,
    required this.ekycSuccess,
    required this.isPending,
  });

  factory PassportResult.fromJson(Map<String, dynamic> json) => _$PassportResultFromJson(json);

  Map<String, dynamic> toJson() => _$PassportResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Passport {
  final String? status;
  final String? code;
  final int? subcode;
  final String? sessionId;
  final PassportData? data;
  final Meta? meta;
  final String? hashData;

  Passport({
    required this.status,
    required this.code,
    required this.subcode,
    required this.sessionId,
    required this.data,
    required this.meta,
    required this.hashData,
  });

  factory Passport.fromJson(Map<String, dynamic> json) => _$PassportFromJson(json);

  Map<String, dynamic> toJson() => _$PassportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PassportData {
  final String? documentImageBase64;
  final String? faceImageBase64;
  final String? passportNumber;
  final String? passportType;
  final String? optionalData;
  final String? gender;
  final Date? birthDate;
  final Date? expiryDate;
  final String? dateOfBirth;
  final String? dateOfIssue;
  final String? dateOfExpiry;
  final String? issuingCountry;
  final String? nationality;
  final String? name;
  final String? surname;
  final String? givenName;
  final String? mrzString;
  final bool? validCheckDigits;

  PassportData({
    required this.documentImageBase64,
    required this.faceImageBase64,
    required this.passportNumber,
    required this.passportType,
    required this.optionalData,
    required this.gender,
    required this.birthDate,
    required this.expiryDate,
    required this.dateOfBirth,
    required this.dateOfIssue,
    required this.dateOfExpiry,
    required this.issuingCountry,
    required this.nationality,
    required this.name,
    required this.surname,
    required this.givenName,
    required this.mrzString,
    required this.validCheckDigits,
  });

  factory PassportData.fromJson(Map<String, dynamic> json) => _$PassportDataFromJson(json);

  Map<String, dynamic> toJson() => _$PassportDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Date {
  final int? day;
  final int? month;
  final int? year;
  final String? originalString;
  final String? formatedString;

  Date({
    required this.day,
    required this.month,
    required this.year,
    required this.originalString,
    required this.formatedString,
  });

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  Map<String, dynamic> toJson() => _$DateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Meta {
  final int? reqTs;
  final int? respTs;
  final String? reqId;

  Meta({
    required this.reqTs,
    required this.respTs,
    required this.reqId,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LivenessResult {
  String? status;
  String? code;
  int? subcode;
  String? sessionId;
  LivenessData? data;
  Meta? meta;
  String? hashData;
  String? videoPath;

  LivenessResult({
    required this.status,
    required this.code,
    required this.subcode,
    required this.sessionId,
    required this.data,
    required this.meta,
    required this.hashData,
    required this.videoPath,
  });

  factory LivenessResult.fromJson(Map<String, dynamic> json) => _$LivenessResultFromJson(json);

  Map<String, dynamic> toJson() => _$LivenessResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LivenessData {
  final String? faceImageBase64;
  final bool? livenessDetected;
  final bool? faceIsMatch;
  final double? confidence;
  final Liveness? liveness;
  final double? passportVsFaceConfidence;

  LivenessData({
    required this.livenessDetected,
    required this.faceImageBase64,
    required this.faceIsMatch,
    required this.confidence,
    required this.liveness,
    required this.passportVsFaceConfidence,
  });

  factory LivenessData.fromJson(Map<String, dynamic> json) => _$LivenessDataFromJson(json);

  Map<String, dynamic> toJson() => _$LivenessDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Liveness {
  bool? livenessDetected;

  Liveness({
    required this.livenessDetected,
  });

  factory Liveness.fromJson(Map<String, dynamic> json) => _$LivenessFromJson(json);

  Map<String, dynamic> toJson() => _$LivenessToJson(this);
}
