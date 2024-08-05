// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_mytentera.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyTenteraResult _$MyTenteraResultFromJson(Map<String, dynamic> json) =>
    MyTenteraResult(
      idFront: json['idFront'] == null
          ? null
          : IdFront.fromJson(json['idFront'] as Map<String, dynamic>),
      idBack: json['idBack'] == null
          ? null
          : IdBack.fromJson(json['idBack'] as Map<String, dynamic>),
      livenessResult: json['livenessResult'] == null
          ? null
          : LivenessResult.fromJson(
              json['livenessResult'] as Map<String, dynamic>),
      sessionId: json['sessionId'] as String?,
      livenessDetected: json['livenessDetected'] as bool?,
      faceIsMatch: json['faceIsMatch'] as bool?,
      idFrontIsValid: json['idFrontIsValid'] as bool?,
      idBackIsValid: json['idBackIsValid'] as bool?,
      ekycSuccess: json['ekycSuccess'] as bool?,
      isPending: json['isPending'] as bool?,
    );

Map<String, dynamic> _$MyTenteraResultToJson(MyTenteraResult instance) =>
    <String, dynamic>{
      'idFront': instance.idFront?.toJson(),
      'idBack': instance.idBack?.toJson(),
      'livenessResult': instance.livenessResult?.toJson(),
      'sessionId': instance.sessionId,
      'livenessDetected': instance.livenessDetected,
      'faceIsMatch': instance.faceIsMatch,
      'idFrontIsValid': instance.idFrontIsValid,
      'idBackIsValid': instance.idBackIsValid,
      'ekycSuccess': instance.ekycSuccess,
      'isPending': instance.isPending,
    };

IdFront _$IdFrontFromJson(Map<String, dynamic> json) => IdFront(
      status: json['status'] as String?,
      code: json['code'] as String?,
      subcode: (json['subcode'] as num?)?.toInt(),
      sessionId: json['sessionId'] as String?,
      data: json['data'] == null
          ? null
          : IdFrontData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      hashData: json['hashData'] as String?,
    );

Map<String, dynamic> _$IdFrontToJson(IdFront instance) => <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'subcode': instance.subcode,
      'sessionId': instance.sessionId,
      'data': instance.data?.toJson(),
      'meta': instance.meta?.toJson(),
      'hashData': instance.hashData,
    };

IdFrontData _$IdFrontDataFromJson(Map<String, dynamic> json) => IdFrontData(
      documentImageBase64: json['documentImageBase64'] as String?,
      faceImageBase64: json['faceImageBase64'] as String?,
      idNumber: json['idNumber'] as String?,
      address: json['address'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      religion: json['religion'] as String?,
      age: json['age'] as String?,
      issuer: json['issuer'] as String?,
      issuerName: json['issuerName'] as String?,
      civilStatus: json['civilStatus'] as String?,
      tenteraNumber: json['tenteraNumber'] as String?,
      valid: json['valid'] as bool?,
      isValid: json['isValid'] as bool?,
    );

Map<String, dynamic> _$IdFrontDataToJson(IdFrontData instance) =>
    <String, dynamic>{
      'documentImageBase64': instance.documentImageBase64,
      'faceImageBase64': instance.faceImageBase64,
      'idNumber': instance.idNumber,
      'address': instance.address,
      'dateOfBirth': instance.dateOfBirth,
      'name': instance.name,
      'gender': instance.gender,
      'religion': instance.religion,
      'age': instance.age,
      'issuer': instance.issuer,
      'issuerName': instance.issuerName,
      'civilStatus': instance.civilStatus,
      'tenteraNumber': instance.tenteraNumber,
      'valid': instance.valid,
      'isValid': instance.isValid,
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

IdBack _$IdBackFromJson(Map<String, dynamic> json) => IdBack(
      status: json['status'] as String?,
      code: json['code'] as String?,
      subcode: (json['subcode'] as num?)?.toInt(),
      sessionId: json['sessionId'] as String?,
      data: json['data'] == null
          ? null
          : IdBackData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      hashData: json['hashData'] as String?,
    );

Map<String, dynamic> _$IdBackToJson(IdBack instance) => <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'subcode': instance.subcode,
      'sessionId': instance.sessionId,
      'data': instance.data?.toJson(),
      'meta': instance.meta?.toJson(),
      'hashData': instance.hashData,
    };

IdBackData _$IdBackDataFromJson(Map<String, dynamic> json) => IdBackData(
      documentImageBase64: json['documentImageBase64'] as String?,
      valid: json['valid'] as bool?,
      isValid: json['isValid'] as bool?,
    );

Map<String, dynamic> _$IdBackDataToJson(IdBackData instance) =>
    <String, dynamic>{
      'documentImageBase64': instance.documentImageBase64,
      'valid': instance.valid,
      'isValid': instance.isValid,
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
      faceImageBase64: json['faceImageBase64'] as String?,
      livenessDetected: json['livenessDetected'] as bool?,
      faceIsMatch: json['faceIsMatch'] as bool?,
      confidence: (json['confidence'] as num?)?.toDouble(),
      liveness: json['liveness'] == null
          ? null
          : Liveness.fromJson(json['liveness'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LivenessDataToJson(LivenessData instance) =>
    <String, dynamic>{
      'faceImageBase64': instance.faceImageBase64,
      'livenessDetected': instance.livenessDetected,
      'faceIsMatch': instance.faceIsMatch,
      'confidence': instance.confidence,
      'liveness': instance.liveness?.toJson(),
    };

Liveness _$LivenessFromJson(Map<String, dynamic> json) => Liveness(
      livenessDetected: json['livenessDetected'] as bool?,
    );

Map<String, dynamic> _$LivenessToJson(Liveness instance) => <String, dynamic>{
      'livenessDetected': instance.livenessDetected,
    };
