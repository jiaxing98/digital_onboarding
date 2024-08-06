import 'package:digital_onboarding/data/requests/new_activation_request.dart';

abstract class RegisterDataSource {
  Future<void> submitNewActivation(NewActivationRequest request);
  Future<void> submitPortInActivation();
}

class RegisterDataSourceImpl extends RegisterDataSource {
  @override
  Future<void> submitNewActivation(NewActivationRequest request) async {
    await Future.delayed(const Duration(seconds: 2));
    return;
  }

  @override
  Future<void> submitPortInActivation() async {
    await Future.delayed(const Duration(seconds: 2));
    return;
  }
}
