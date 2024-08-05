// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_passport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportResult _$PassportResultFromJson(Map<String, dynamic> json) =>
    PassportResult(
      passport: json['passport'] == null
          ? null
          : Passport.fromJson(json['passport'] as Map<String, dynamic>),
      livenessResult: json['livenessResult'] == null
          ? null
          : LivenessResult.fromJson(
              json['livenessResult'] as Map<String, dynamic>),
      sessionId: json['sessionId'] as String?,
      livenessDetected: json['livenessDetected'] as bool?,
      faceIsMatch: json['faceIsMatch'] as bool?,
      passportIsValid: json['passportIsValid'] as bool?,
      ekycSuccess: json['ekycSuccess'] as bool?,
      isPending: json['isPending'] as bool?,
    );

Map<String, dynamic> _$PassportResultToJson(PassportResult instance) =>
    <String, dynamic>{
      'passport': instance.passport?.toJson(),
      'livenessResult': instance.livenessResult?.toJson(),
      'sessionId': instance.sessionId,
      'livenessDetected': instance.livenessDetected,
      'faceIsMatch': instance.faceIsMatch,
      'passportIsValid': instance.passportIsValid,
      'ekycSuccess': instance.ekycSuccess,
      'isPending': instance.isPending,
    };

Passport _$PassportFromJson(Map<String, dynamic> json) => Passport(
      status: json['status'] as String?,
      code: json['code'] as String?,
      subcode: (json['subcode'] as num?)?.toInt(),
      sessionId: json['sessionId'] as String?,
      data: json['data'] == null
          ? null
          : PassportData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      hashData: json['hashData'] as String?,
    );

Map<String, dynamic> _$PassportToJson(Passport instance) => <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'subcode': instance.subcode,
      'sessionId': instance.sessionId,
      'data': instance.data?.toJson(),
      'meta': instance.meta?.toJson(),
      'hashData': instance.hashData,
    };

PassportData _$PassportDataFromJson(Map<String, dynamic> json) => PassportData(
      documentImageBase64: json['documentImageBase64'] as String?,
      faceImageBase64: json['faceImageBase64'] as String?,
      passportNumber: json['passportNumber'] as String?,
      passportType: json['passportType'] as String?,
      optionalData: json['optionalData'] as String?,
      gender: json['gender'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : Date.fromJson(json['birthDate'] as Map<String, dynamic>),
      expiryDate: json['expiryDate'] == null
          ? null
          : Date.fromJson(json['expiryDate'] as Map<String, dynamic>),
      dateOfBirth: json['dateOfBirth'] as String?,
      dateOfIssue: json['dateOfIssue'] as String?,
      dateOfExpiry: json['dateOfExpiry'] as String?,
      issuingCountry: json['issuingCountry'] as String?,
      nationality: json['nationality'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      givenName: json['givenName'] as String?,
      mrzString: json['mrzString'] as String?,
      validCheckDigits: json['validCheckDigits'] as bool?,
    );

Map<String, dynamic> _$PassportDataToJson(PassportData instance) =>
    <String, dynamic>{
      'documentImageBase64': instance.documentImageBase64,
      'faceImageBase64': instance.faceImageBase64,
      'passportNumber': instance.passportNumber,
      'passportType': instance.passportType,
      'optionalData': instance.optionalData,
      'gender': instance.gender,
      'birthDate': instance.birthDate?.toJson(),
      'expiryDate': instance.expiryDate?.toJson(),
      'dateOfBirth': instance.dateOfBirth,
      'dateOfIssue': instance.dateOfIssue,
      'dateOfExpiry': instance.dateOfExpiry,
      'issuingCountry': instance.issuingCountry,
      'nationality': instance.nationality,
      'name': instance.name,
      'surname': instance.surname,
      'givenName': instance.givenName,
      'mrzString': instance.mrzString,
      'validCheckDigits': instance.validCheckDigits,
    };

Date _$DateFromJson(Map<String, dynamic> json) => Date(
      day: (json['day'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      originalString: json['originalString'] as String?,
      formatedString: json['formatedString'] as String?,
    );

Map<String, dynamic> _$DateToJson(Date instance) => <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'originalString': instance.originalString,
      'formatedString': instance.formatedString,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      reqTs: (json['reqTs'] as num?)?.toInt(),
      respTs: (json['respTs'] as num?)?.toInt(),
      reqId: json['reqId'] as String?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'reqTs': instance.reqTs,
      'respTs': instance.respTs,
      'reqId': instance.reqId,
    };

LivenessResult _$LivenessResultFromJson(Map<String, dynamic> json) =>
    LivenessResult(
      status: json['status'] as String?,
      code: json['code'] as String?,
      subcode: (json['subcode'] as num?)?.toInt(),
      sessionId: json['sessionId'] as String?,
      data: json['data'] == null
          ? null
          : LivenessData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      hashData: json['hashData'] as String?,
      videoPath: json['videoPath'] as String?,
    );

Map<String, dynamic> _$LivenessResultToJson(LivenessResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'subcode': instance.subcode,
      'sessionId': instance.sessionId,
      'data': instance.data?.toJson(),
      'meta': instance.meta?.toJson(),
      'hashData': instance.hashData,
      'videoPath': instance.videoPath,
    };

LivenessData _$LivenessDataFromJson(Map<String, dynamic> json) => LivenessData(
      livenessDetected: json['livenessDetected'] as bool?,
      faceImageBase64: json['faceImageBase64'] as String?,
      faceIsMatch: json['faceIsMatch'] as bool?,
      confidence: (json['confidence'] as num?)?.toDouble(),
      liveness: json['liveness'] == null
          ? null
          : Liveness.fromJson(json['liveness'] as Map<String, dynamic>),
      passportVsFaceConfidence:
          (json['passportVsFaceConfidence'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LivenessDataToJson(LivenessData instance) =>
    <String, dynamic>{
      'faceImageBase64': instance.faceImageBase64,
      'livenessDetected': instance.livenessDetected,
      'faceIsMatch': instance.faceIsMatch,
      'confidence': instance.confidence,
      'liveness': instance.liveness?.toJson(),
      'passportVsFaceConfidence': instance.passportVsFaceConfidence,
    };

Liveness _$LivenessFromJson(Map<String, dynamic> json) => Liveness(
      livenessDetected: json['livenessDetected'] as bool?,
    );

Map<String, dynamic> _$LivenessToJson(Liveness instance) => <String, dynamic>{
      'livenessDetected': instance.livenessDetected,
    };
