// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_mykad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyKadResult _$MyKadResultFromJson(Map<String, dynamic> json) => MyKadResult(
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

Map<String, dynamic> _$MyKadResultToJson(MyKadResult instance) =>
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
      type: json['type'] as String?,
      idFraudDetected: json['idFraudDetected'] as bool?,
      isValid: json['isValid'] as bool?,
      icNumber: json['icNumber'] as String?,
      name: json['name'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : BirthDate.fromJson(json['birthDate'] as Map<String, dynamic>),
      birthDateISO: json['birthDateISO'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      fullAddress: json['fullAddress'] as String?,
      religion: json['religion'] as String?,
      gender: json['gender'] as String?,
      mykadCardLogoText: json['mykadCardLogoText'] as String?,
      landmarks: json['landmarks'] == null
          ? null
          : IdFrontLandmarks.fromJson(
              json['landmarks'] as Map<String, dynamic>),
      ocrScores: json['ocrScores'] == null
          ? null
          : IdFrontOcrScores.fromJson(
              json['ocrScores'] as Map<String, dynamic>),
      blurs: json['blurs'] == null
          ? null
          : IdFrontBlurs.fromJson(json['blurs'] as Map<String, dynamic>),
      glares: json['glares'] == null
          ? null
          : IdFrontGlares.fromJson(json['glares'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IdFrontDataToJson(IdFrontData instance) =>
    <String, dynamic>{
      'documentImageBase64': instance.documentImageBase64,
      'faceImageBase64': instance.faceImageBase64,
      'type': instance.type,
      'idFraudDetected': instance.idFraudDetected,
      'isValid': instance.isValid,
      'icNumber': instance.icNumber,
      'name': instance.name,
      'birthDate': instance.birthDate?.toJson(),
      'birthDateISO': instance.birthDateISO,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'fullAddress': instance.fullAddress,
      'religion': instance.religion,
      'gender': instance.gender,
      'mykadCardLogoText': instance.mykadCardLogoText,
      'landmarks': instance.landmarks?.toJson(),
      'ocrScores': instance.ocrScores?.toJson(),
      'blurs': instance.blurs?.toJson(),
      'glares': instance.glares?.toJson(),
    };

BirthDate _$BirthDateFromJson(Map<String, dynamic> json) => BirthDate(
      day: (json['day'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      originalString: json['originalString'] as String?,
      formatedString: json['formatedString'] as String?,
    );

Map<String, dynamic> _$BirthDateToJson(BirthDate instance) => <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'originalString': instance.originalString,
      'formatedString': instance.formatedString,
    };

IdFrontLandmarks _$IdFrontLandmarksFromJson(Map<String, dynamic> json) =>
    IdFrontLandmarks(
      kadPengenalanMalaysiaLandmark:
          (json['kadPengenalanMalaysiaLandmark'] as num?)?.toDouble(),
      securityChip: (json['securityChip'] as num?)?.toDouble(),
      mscLogo: (json['mscLogo'] as num?)?.toDouble(),
      ghostImage: (json['ghostImage'] as num?)?.toDouble(),
      gender: (json['gender'] as num?)?.toDouble(),
      religion: (json['religion'] as num?)?.toDouble(),
      citizen: (json['citizen'] as num?)?.toDouble(),
      name: (json['name'] as num?)?.toDouble(),
      malaysiaFlag: (json['malaysiaFlag'] as num?)?.toDouble(),
      address: (json['address'] as num?)?.toDouble(),
      hibiscusLogo: (json['hibiscusLogo'] as num?)?.toDouble(),
      facialImage: (json['facialImage'] as num?)?.toDouble(),
      mykadLogo: (json['mykadLogo'] as num?)?.toDouble(),
      mykadNumber: (json['mykadNumber'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$IdFrontLandmarksToJson(IdFrontLandmarks instance) =>
    <String, dynamic>{
      'kadPengenalanMalaysiaLandmark': instance.kadPengenalanMalaysiaLandmark,
      'securityChip': instance.securityChip,
      'mscLogo': instance.mscLogo,
      'ghostImage': instance.ghostImage,
      'gender': instance.gender,
      'religion': instance.religion,
      'citizen': instance.citizen,
      'name': instance.name,
      'malaysiaFlag': instance.malaysiaFlag,
      'address': instance.address,
      'hibiscusLogo': instance.hibiscusLogo,
      'facialImage': instance.facialImage,
      'mykadLogo': instance.mykadLogo,
      'mykadNumber': instance.mykadNumber,
    };

IdFrontOcrScores _$IdFrontOcrScoresFromJson(Map<String, dynamic> json) =>
    IdFrontOcrScores(
      icNumber: (json['icNumber'] as num?)?.toDouble(),
      name: (json['name'] as num?)?.toDouble(),
      address: (json['address'] as num?)?.toDouble(),
      religion: (json['religion'] as num?)?.toDouble(),
      gender: (json['gender'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$IdFrontOcrScoresToJson(IdFrontOcrScores instance) =>
    <String, dynamic>{
      'icNumber': instance.icNumber,
      'name': instance.name,
      'address': instance.address,
      'religion': instance.religion,
      'gender': instance.gender,
    };

IdFrontBlurs _$IdFrontBlursFromJson(Map<String, dynamic> json) => IdFrontBlurs(
      name: json['name'] as bool?,
      address: json['address'] as bool?,
      myKadNumber: json['myKadNumber'] as bool?,
      gender: json['gender'] as bool?,
    );

Map<String, dynamic> _$IdFrontBlursToJson(IdFrontBlurs instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'myKadNumber': instance.myKadNumber,
      'gender': instance.gender,
    };

IdFrontGlares _$IdFrontGlaresFromJson(Map<String, dynamic> json) =>
    IdFrontGlares(
      icNumber: json['icNumber'] as bool?,
      name: json['name'] as bool?,
      address: json['address'] as bool?,
      religion: json['religion'] as bool?,
      gender: json['gender'] as bool?,
      bottomRight: json['bottomRight'] as bool?,
    );

Map<String, dynamic> _$IdFrontGlaresToJson(IdFrontGlares instance) =>
    <String, dynamic>{
      'icNumber': instance.icNumber,
      'name': instance.name,
      'address': instance.address,
      'religion': instance.religion,
      'gender': instance.gender,
      'bottomRight': instance.bottomRight,
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
      type: json['type'] as String?,
      idFraudDetected: json['idFraudDetected'] as bool?,
      isValid: json['isValid'] as bool?,
      icNumber: json['icNumber'] as String?,
      landmarks: json['landmarks'] == null
          ? null
          : IdBackLandmarks.fromJson(json['landmarks'] as Map<String, dynamic>),
      ocrScores: json['ocrScores'] == null
          ? null
          : IdBackOcrScores.fromJson(json['ocrScores'] as Map<String, dynamic>),
      blurs: json['blurs'] == null
          ? null
          : IdBackBlurs.fromJson(json['blurs'] as Map<String, dynamic>),
      glares: json['glares'] == null
          ? null
          : IdBackGlares.fromJson(json['glares'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IdBackDataToJson(IdBackData instance) =>
    <String, dynamic>{
      'documentImageBase64': instance.documentImageBase64,
      'type': instance.type,
      'idFraudDetected': instance.idFraudDetected,
      'isValid': instance.isValid,
      'icNumber': instance.icNumber,
      'landmarks': instance.landmarks?.toJson(),
      'ocrScores': instance.ocrScores?.toJson(),
      'blurs': instance.blurs?.toJson(),
      'glares': instance.glares?.toJson(),
    };

IdBackLandmarks _$IdBackLandmarksFromJson(Map<String, dynamic> json) =>
    IdBackLandmarks(
      coatOfArmLandmark: (json['coatOfArmLandmark'] as num?)?.toDouble(),
      klccTower: (json['klccTower'] as num?)?.toDouble(),
      signature: (json['signature'] as num?)?.toDouble(),
      kingCrown: (json['kingCrown'] as num?)?.toDouble(),
      ketuaPengarahPendaftaranNegara:
          (json['ketuaPengarahPendaftaranNegara'] as num?)?.toDouble(),
      myKadNumber: (json['myKadNumber'] as num?)?.toDouble(),
      tngLogo: (json['tngLogo'] as num?)?.toDouble(),
      atmLogo: (json['atmLogo'] as num?)?.toDouble(),
      chipLogo: (json['chipLogo'] as num?)?.toDouble(),
      serialNum: (json['serialNum'] as num?)?.toDouble(),
      malaysiaLogo: (json['malaysiaLogo'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$IdBackLandmarksToJson(IdBackLandmarks instance) =>
    <String, dynamic>{
      'coatOfArmLandmark': instance.coatOfArmLandmark,
      'klccTower': instance.klccTower,
      'signature': instance.signature,
      'kingCrown': instance.kingCrown,
      'ketuaPengarahPendaftaranNegara': instance.ketuaPengarahPendaftaranNegara,
      'myKadNumber': instance.myKadNumber,
      'tngLogo': instance.tngLogo,
      'atmLogo': instance.atmLogo,
      'chipLogo': instance.chipLogo,
      'serialNum': instance.serialNum,
      'malaysiaLogo': instance.malaysiaLogo,
    };

IdBackOcrScores _$IdBackOcrScoresFromJson(Map<String, dynamic> json) =>
    IdBackOcrScores(
      icNumber: (json['icNumber'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$IdBackOcrScoresToJson(IdBackOcrScores instance) =>
    <String, dynamic>{
      'icNumber': instance.icNumber,
    };

IdBackBlurs _$IdBackBlursFromJson(Map<String, dynamic> json) => IdBackBlurs(
      myKadNumber: json['myKadNumber'] as bool?,
    );

Map<String, dynamic> _$IdBackBlursToJson(IdBackBlurs instance) =>
    <String, dynamic>{
      'myKadNumber': instance.myKadNumber,
    };

IdBackGlares _$IdBackGlaresFromJson(Map<String, dynamic> json) => IdBackGlares(
      icNumber: json['icNumber'] as bool?,
    );

Map<String, dynamic> _$IdBackGlaresToJson(IdBackGlares instance) =>
    <String, dynamic>{
      'icNumber': instance.icNumber,
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
      mykadVsFaceConfidence:
          (json['mykadVsFaceConfidence'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LivenessDataToJson(LivenessData instance) =>
    <String, dynamic>{
      'faceImageBase64': instance.faceImageBase64,
      'livenessDetected': instance.livenessDetected,
      'faceIsMatch': instance.faceIsMatch,
      'confidence': instance.confidence,
      'liveness': instance.liveness?.toJson(),
      'mykadVsFaceConfidence': instance.mykadVsFaceConfidence,
    };

Liveness _$LivenessFromJson(Map<String, dynamic> json) => Liveness(
      livenessDetected: json['livenessDetected'] as bool?,
    );

Map<String, dynamic> _$LivenessToJson(Liveness instance) => <String, dynamic>{
      'livenessDetected': instance.livenessDetected,
    };
