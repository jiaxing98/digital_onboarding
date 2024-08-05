import 'package:digital_onboarding/third_party_sdk/ekyc/result_mykad.dart';
import 'package:digital_onboarding/third_party_sdk/ekyc/result_mykad_mock.dart';
import 'package:digital_onboarding/third_party_sdk/ekyc/result_mytentera.dart';
import 'package:digital_onboarding/third_party_sdk/ekyc/result_mytentera_mock.dart';
import 'package:digital_onboarding/third_party_sdk/ekyc/result_passport.dart';
import 'package:digital_onboarding/third_party_sdk/ekyc/result_passport_mock.dart';

abstract class EkycSdk {
  Future<MyKadResult> performMyKadEkyc();
  Future<MyTenteraResult> performMyTenteraEkyc();
  Future<PassportResult> performPassportEkyc();
}

class EkycSdkImpl extends EkycSdk {
  @override
  Future<MyKadResult> performMyKadEkyc() async {
    return resultMyKadSuccess;
  }

  @override
  Future<MyTenteraResult> performMyTenteraEkyc() async {
    return resultMyTenteraSuccess;
  }

  @override
  Future<PassportResult> performPassportEkyc() async {
    return resultPassportSuccess;
  }
}
