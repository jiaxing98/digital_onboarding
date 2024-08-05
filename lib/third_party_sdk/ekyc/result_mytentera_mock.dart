import 'package:digital_onboarding/third_party_sdk/ekyc/result_mytentera.dart';
import 'package:uuid/uuid.dart';

final _sessionId = const Uuid().v1();

final resultMyTenteraSuccess = MyTenteraResult(
  idFront: IdFront(
    status: "success",
    code: "SUCCESS",
    subcode: 0,
    sessionId: _sessionId,
    data: IdFrontData(
      documentImageBase64: "",
      faceImageBase64: "",
      idNumber: "000123-14-1233",
      address: "NO 1234\nTAMAN HAPPY\n68000 AMPANG\nSELANGOR",
      dateOfBirth: "2000-01-23",
      name: "MOHAMMAD ALI",
      gender: "M",
      religion: "ISLAM",
      age: "24",
      issuer: "MYS",
      issuerName: "MALAYSIA",
      civilStatus: "MALAYSIAN",
      tenteraNumber: "000123-14-1233",
      valid: true,
      isValid: true,
    ),
    meta: Meta(
      reqTs: DateTime.timestamp().millisecondsSinceEpoch,
      respTs: DateTime.timestamp().millisecondsSinceEpoch,
      reqId: const Uuid().v4(),
    ),
    hashData: const Uuid().v4(),
  ),
  idBack: IdBack(
    status: "success",
    code: "SUCCESS",
    subcode: 0,
    sessionId: _sessionId,
    data: IdBackData(
      documentImageBase64: "",
      valid: true,
      isValid: true,
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
      faceImageBase64: "",
      livenessDetected: true,
      faceIsMatch: true,
      confidence: 88.91,
      liveness: Liveness(
        livenessDetected: true,
      ),
    ),
    meta: Meta(
      reqTs: DateTime.timestamp().millisecondsSinceEpoch,
      respTs: DateTime.timestamp().millisecondsSinceEpoch,
      reqId: const Uuid().v4(),
    ),
    hashData: const Uuid().v4(),
    videoPath: "/storage/emulated/0/Android/data/usd.my.wisepass.ekyc.demo/files/video.mp4",
  ),
  sessionId: _sessionId,
  livenessDetected: true,
  faceIsMatch: true,
  idFrontIsValid: true,
  idBackIsValid: true,
  ekycSuccess: true,
  isPending: false,
);
