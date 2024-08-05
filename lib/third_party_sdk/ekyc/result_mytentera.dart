import 'package:json_annotation/json_annotation.dart';

part 'result_mytentera.g.dart';

@JsonSerializable(explicitToJson: true)
final class MyTenteraResult {
  final IdFront? idFront;
  final IdBack? idBack;
  final LivenessResult? livenessResult;
  final String? sessionId;
  final bool? livenessDetected;
  final bool? faceIsMatch;
  final bool? idFrontIsValid;
  final bool? idBackIsValid;
  final bool? ekycSuccess;
  final bool? isPending;

  MyTenteraResult({
    required this.idFront,
    required this.idBack,
    required this.livenessResult,
    required this.sessionId,
    required this.livenessDetected,
    required this.faceIsMatch,
    required this.idFrontIsValid,
    required this.idBackIsValid,
    required this.ekycSuccess,
    required this.isPending,
  });

  factory MyTenteraResult.fromJson(Map<String, dynamic> json) => _$MyTenteraResultFromJson(json);

  Map<String, dynamic> toJson() => _$MyTenteraResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdFront {
  final String? status;
  final String? code;
  final int? subcode;
  final String? sessionId;
  final IdFrontData? data;
  final Meta? meta;
  final String? hashData;

  IdFront({
    required this.status,
    required this.code,
    required this.subcode,
    required this.sessionId,
    required this.data,
    required this.meta,
    required this.hashData,
  });

  factory IdFront.fromJson(Map<String, dynamic> json) => _$IdFrontFromJson(json);

  Map<String, dynamic> toJson() => _$IdFrontToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdFrontData {
  final String? documentImageBase64;
  final String? faceImageBase64;
  final String? idNumber;
  final String? address;
  final String? dateOfBirth;
  final String? name;
  final String? gender;
  final String? religion;
  final String? age;
  final String? issuer;
  final String? issuerName;
  final String? civilStatus;
  final String? tenteraNumber;
  final bool? valid;
  final bool? isValid;

  IdFrontData({
    required this.documentImageBase64,
    required this.faceImageBase64,
    required this.idNumber,
    required this.address,
    required this.dateOfBirth,
    required this.name,
    required this.gender,
    required this.religion,
    required this.age,
    required this.issuer,
    required this.issuerName,
    required this.civilStatus,
    required this.tenteraNumber,
    required this.valid,
    required this.isValid,
  });

  factory IdFrontData.fromJson(Map<String, dynamic> json) => _$IdFrontDataFromJson(json);

  Map<String, dynamic> toJson() => _$IdFrontDataToJson(this);
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
class IdBack {
  final String? status;
  final String? code;
  final int? subcode;
  final String? sessionId;
  final IdBackData? data;
  final Meta? meta;
  final String? hashData;

  IdBack({
    required this.status,
    required this.code,
    required this.subcode,
    required this.sessionId,
    required this.data,
    required this.meta,
    required this.hashData,
  });

  factory IdBack.fromJson(Map<String, dynamic> json) => _$IdBackFromJson(json);

  Map<String, dynamic> toJson() => _$IdBackToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdBackData {
  final String? documentImageBase64;
  final bool? valid;
  final bool? isValid;

  IdBackData({
    required this.documentImageBase64,
    required this.valid,
    required this.isValid,
  });

  factory IdBackData.fromJson(Map<String, dynamic> json) => _$IdBackDataFromJson(json);

  Map<String, dynamic> toJson() => _$IdBackDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LivenessResult {
  final String? status;
  final String? code;
  final int? subcode;
  final String? sessionId;
  final LivenessData? data;
  final Meta? meta;
  final String? hashData;
  final String? videoPath;

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

  LivenessData({
    required this.faceImageBase64,
    required this.livenessDetected,
    required this.faceIsMatch,
    required this.confidence,
    required this.liveness,
  });

  factory LivenessData.fromJson(Map<String, dynamic> json) => _$LivenessDataFromJson(json);

  Map<String, dynamic> toJson() => _$LivenessDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Liveness {
  final bool? livenessDetected;

  Liveness({
    required this.livenessDetected,
  });

  factory Liveness.fromJson(Map<String, dynamic> json) => _$LivenessFromJson(json);

  Map<String, dynamic> toJson() => _$LivenessToJson(this);
}
