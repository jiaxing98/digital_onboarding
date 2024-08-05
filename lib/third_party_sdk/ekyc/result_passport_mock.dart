import 'package:digital_onboarding/third_party_sdk/ekyc/result_passport.dart';
import 'package:uuid/uuid.dart';

final _sessionId = const Uuid().v1();

final resultPassportSuccess = PassportResult(
  passport: Passport(
    status: "status",
    code: "SUCCESS",
    subcode: 0,
    sessionId: _sessionId,
    data: PassportData(
      documentImageBase64: "",
      faceImageBase64: "",
      passportNumber: "A38186250",
      passportType: "P",
      optionalData: "851110566111",
      gender: "M",
      birthDate: Date(
        day: 10,
        month: 11,
        year: 1985,
        originalString: "851110",
        formatedString: "1985-11-10",
      ),
      expiryDate: Date(
        day: 10,
        month: 11,
        year: 1985,
        originalString: "851110",
        formatedString: "1985-11-10",
      ),
      dateOfBirth: "1985-11-10",
      dateOfIssue: "2021-12-9",
      dateOfExpiry: "2026-12-9",
      issuingCountry: "MYS",
      nationality: "MYS",
      name: "MOHAMMAD ALI",
      surname: "",
      givenName: "",
      mrzString:
          "P<MYSMOHAMMD<ALI<<<<<<<<<<<<<<<<<<<<<<<<<^A367728818MYS9308259M2012238930825015305<<36",
      validCheckDigits: true,
    ),
    meta: Meta(
      reqTs: DateTime.timestamp().millisecondsSinceEpoch,
      respTs: DateTime.timestamp().millisecondsSinceEpoch,
      reqId: const Uuid().v4(),
    ),
    hashData: const Uuid().v4(),
  ),
  livenessResult: LivenessResult(
    status: "success",
    code: "SUCCESS",
    subcode: 0,
    sessionId: _sessionId,
    data: LivenessData(
      livenessDetected: true,
      faceImageBase64: "",
      faceIsMatch: true,
      confidence: 78.1,
      liveness: Liveness(
        livenessDetected: true,
      ),
      passportVsFaceConfidence: 78.1,
    ),
    meta: Meta(
      reqTs: DateTime.timestamp().millisecondsSinceEpoch,
      respTs: DateTime.timestamp().millisecondsSinceEpoch,
      reqId: const Uuid().v4(),
    ),
    hashData: const Uuid().v4(),
    videoPath: "/storage/emulated/0/Android/data/usd.my.wisepass.demo/files/video.mp4",
  ),
  sessionId: _sessionId,
  livenessDetected: true,
  faceIsMatch: true,
  passportIsValid: true,
  ekycSuccess: true,
  isPending: false,
);
