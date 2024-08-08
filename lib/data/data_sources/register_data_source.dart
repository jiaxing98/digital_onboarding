import 'package:digital_onboarding/data/requests/new_activation_request.dart';
import 'package:digital_onboarding/data/requests/port_in_activation_request.dart';
import 'package:uuid/uuid.dart';

abstract class RegisterDataSource {
  Future<String> verifySimPackage(String qrCode);
  Future<void> confirmMobileNumber(String callerId);
  Future<void> submitNewActivation(NewActivationRequest request);
  Future<void> submitPortInActivation(PortInActivationRequest request);
}

class RegisterDataSourceImpl extends RegisterDataSource {
  @override
  Future<void> submitNewActivation(NewActivationRequest request) async {
    await Future.delayed(const Duration(seconds: 2));
    print(request.toString());
    return;
  }

  @override
  Future<void> submitPortInActivation(PortInActivationRequest request) async {
    await Future.delayed(const Duration(seconds: 2));
    print(request.toString());
    return;
  }

  @override
  Future<String> verifySimPackage(String qrCode) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Uuid().v1();
  }

  @override
  Future<void> confirmMobileNumber(String callerId) async {
    await Future.delayed(const Duration(seconds: 1));
    return;
  }
}
