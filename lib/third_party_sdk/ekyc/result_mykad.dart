import 'package:json_annotation/json_annotation.dart';

part 'result_mykad.g.dart';

@JsonSerializable(explicitToJson: true)
final class MyKadResult {
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

  MyKadResult({
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

  factory MyKadResult.fromJson(Map<String, dynamic> json) => _$MyKadResultFromJson(json);

  Map<String, dynamic> toJson() => _$MyKadResultToJson(this);
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
  final String? type;
  final bool? idFraudDetected;
  final bool? isValid;
  final String? icNumber;
  final String? name;
  final BirthDate? birthDate;
  final String? birthDateISO;
  final String? street;
  final String? city;
  final String? state;
  final String? zipCode;
  final String? fullAddress;
  final String? religion;
  final String? gender;
  final String? mykadCardLogoText;
  final IdFrontLandmarks? landmarks;
  final IdFrontOcrScores? ocrScores;
  final IdFrontBlurs? blurs;
  final IdFrontGlares? glares;

  IdFrontData({
    required this.documentImageBase64,
    required this.faceImageBase64,
    required this.type,
    required this.idFraudDetected,
    required this.isValid,
    required this.icNumber,
    required this.name,
    required this.birthDate,
    required this.birthDateISO,
    required this.street,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.fullAddress,
    required this.religion,
    required this.gender,
    required this.mykadCardLogoText,
    required this.landmarks,
    required this.ocrScores,
    required this.blurs,
    required this.glares,
  });

  factory IdFrontData.fromJson(Map<String, dynamic> json) => _$IdFrontDataFromJson(json);

  Map<String, dynamic> toJson() => _$IdFrontDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BirthDate {
  final int? day;
  final int? month;
  final int? year;
  final String? originalString;
  final String? formatedString;

  BirthDate({
    required this.day,
    required this.month,
    required this.year,
    required this.originalString,
    required this.formatedString,
  });

  factory BirthDate.fromJson(Map<String, dynamic> json) => _$BirthDateFromJson(json);

  Map<String, dynamic> toJson() => _$BirthDateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdFrontLandmarks {
  final double? kadPengenalanMalaysiaLandmark;
  final double? securityChip;
  final double? mscLogo;
  final double? ghostImage;
  final double? gender;
  final double? religion;
  final double? citizen;
  final double? name;
  final double? malaysiaFlag;
  final double? address;
  final double? hibiscusLogo;
  final double? facialImage;
  final double? mykadLogo;
  final double? mykadNumber;

  IdFrontLandmarks({
    required this.kadPengenalanMalaysiaLandmark,
    required this.securityChip,
    required this.mscLogo,
    required this.ghostImage,
    required this.gender,
    required this.religion,
    required this.citizen,
    required this.name,
    required this.malaysiaFlag,
    required this.address,
    required this.hibiscusLogo,
    required this.facialImage,
    required this.mykadLogo,
    required this.mykadNumber,
  });

  factory IdFrontLandmarks.fromJson(Map<String, dynamic> json) => _$IdFrontLandmarksFromJson(json);

  Map<String, dynamic> toJson() => _$IdFrontLandmarksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdFrontOcrScores {
  final double? icNumber;
  final double? name;
  final double? address;
  final double? religion;
  final double? gender;

  IdFrontOcrScores({
    required this.icNumber,
    required this.name,
    required this.address,
    required this.religion,
    required this.gender,
  });

  factory IdFrontOcrScores.fromJson(Map<String, dynamic> json) => _$IdFrontOcrScoresFromJson(json);

  Map<String, dynamic> toJson() => _$IdFrontOcrScoresToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdFrontBlurs {
  final bool? name;
  final bool? address;
  final bool? myKadNumber;
  final bool? gender;

  IdFrontBlurs({
    required this.name,
    required this.address,
    required this.myKadNumber,
    required this.gender,
  });

  factory IdFrontBlurs.fromJson(Map<String, dynamic> json) => _$IdFrontBlursFromJson(json);

  Map<String, dynamic> toJson() => _$IdFrontBlursToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdFrontGlares {
  final bool? icNumber;
  final bool? name;
  final bool? address;
  final bool? religion;
  final bool? gender;
  final bool? bottomRight;

  IdFrontGlares({
    required this.icNumber,
    required this.name,
    required this.address,
    required this.religion,
    required this.gender,
    required this.bottomRight,
  });

  factory IdFrontGlares.fromJson(Map<String, dynamic> json) => _$IdFrontGlaresFromJson(json);

  Map<String, dynamic> toJson() => _$IdFrontGlaresToJson(this);
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
  final String? type;
  final bool? idFraudDetected;
  final bool? isValid;
  final String? icNumber;
  final IdBackLandmarks? landmarks;
  final IdBackOcrScores? ocrScores;
  final IdBackBlurs? blurs;
  final IdBackGlares? glares;

  IdBackData({
    required this.documentImageBase64,
    required this.type,
    required this.idFraudDetected,
    required this.isValid,
    required this.icNumber,
    required this.landmarks,
    required this.ocrScores,
    required this.blurs,
    required this.glares,
  });

  factory IdBackData.fromJson(Map<String, dynamic> json) => _$IdBackDataFromJson(json);

  Map<String, dynamic> toJson() => _$IdBackDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdBackLandmarks {
  final double? coatOfArmLandmark;
  final double? klccTower;
  final double? signature;
  final double? kingCrown;
  final double? ketuaPengarahPendaftaranNegara;
  final double? myKadNumber;
  final double? tngLogo;
  final double? atmLogo;
  final double? chipLogo;
  final double? serialNum;
  final double? malaysiaLogo;

  IdBackLandmarks({
    required this.coatOfArmLandmark,
    required this.klccTower,
    required this.signature,
    required this.kingCrown,
    required this.ketuaPengarahPendaftaranNegara,
    required this.myKadNumber,
    required this.tngLogo,
    required this.atmLogo,
    required this.chipLogo,
    required this.serialNum,
    required this.malaysiaLogo,
  });

  factory IdBackLandmarks.fromJson(Map<String, dynamic> json) => _$IdBackLandmarksFromJson(json);

  Map<String, dynamic> toJson() => _$IdBackLandmarksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdBackOcrScores {
  final double? icNumber;

  IdBackOcrScores({
    required this.icNumber,
  });

  factory IdBackOcrScores.fromJson(Map<String, dynamic> json) => _$IdBackOcrScoresFromJson(json);

  Map<String, dynamic> toJson() => _$IdBackOcrScoresToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdBackBlurs {
  final bool? myKadNumber;

  IdBackBlurs({
    required this.myKadNumber,
  });

  factory IdBackBlurs.fromJson(Map<String, dynamic> json) => _$IdBackBlursFromJson(json);

  Map<String, dynamic> toJson() => _$IdBackBlursToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IdBackGlares {
  final bool? icNumber;

  IdBackGlares({
    required this.icNumber,
  });

  factory IdBackGlares.fromJson(Map<String, dynamic> json) => _$IdBackGlaresFromJson(json);

  Map<String, dynamic> toJson() => _$IdBackGlaresToJson(this);
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
  final double? mykadVsFaceConfidence;

  LivenessData({
    required this.faceImageBase64,
    required this.livenessDetected,
    required this.faceIsMatch,
    required this.confidence,
    required this.liveness,
    required this.mykadVsFaceConfidence,
  });

  factory LivenessData.fromJson(Map<String, dynamic> json) => _$LivenessDataFromJson(json);

  Map<String, dynamic> toJson() => _$LivenessDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Liveness {
  final bool? livenessDetected;

  Liveness({required this.livenessDetected});

  factory Liveness.fromJson(Map<String, dynamic> json) => _$LivenessFromJson(json);

  Map<String, dynamic> toJson() => _$LivenessToJson(this);
}
