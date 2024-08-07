import 'package:digital_onboarding/core/exceptions/activation_exception.dart';
import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:digital_onboarding/domain/entities/service_provider.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/usecases/get_service_providers_usecase.dart';
import 'package:digital_onboarding/domain/usecases/get_user_brief_info_usecase.dart';
import 'package:digital_onboarding/domain/usecases/submit_port_in_activation_usecase.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class PortInDetailsPageVM extends ChangeNotifier {
  final GetServiceProvidersUseCase _getServiceProvidersUseCase;
  final GetUserBriefInfoUseCase _getUserBriefInfoUseCase;
  final SubmitPortInActivationUseCase _submitPortInActivationUseCase;

  PortInDetailsPageVM({
    required GetServiceProvidersUseCase getServiceProvidersUseCase,
    required GetUserBriefInfoUseCase getUserBriefInfoUseCase,
    required SubmitPortInActivationUseCase submitPortInActivationUseCase,
  })  : _getServiceProvidersUseCase = getServiceProvidersUseCase,
        _getUserBriefInfoUseCase = getUserBriefInfoUseCase,
        _submitPortInActivationUseCase = submitPortInActivationUseCase;

  final formKey = GlobalKey<FormState>();
  final TextEditingController mobileNoCtrl = TextEditingController();

  ServiceProvider? selectedProvider;
  List<Plan>? availablePlans;
  Plan? selectedPlan;

  Future<({String name, RegistrationType registrationType})> get userBrief async =>
      await _getUserBriefInfoUseCase.call();

  Future<List<ServiceProvider>> getServiceProviders() async {
    return await _getServiceProvidersUseCase.call();
  }

  void onSelectProvider(ServiceProvider? provider) {
    selectedProvider = provider;
    availablePlans = provider?.plans;
    notifyListeners();
  }

  void onSelectPlan(Plan plan) {
    selectedPlan = plan;
  }

  TaskEither<Failure, void> submitPortInActivation() {
    return TaskEither.tryCatch(
      () => _submitPortInActivationUseCase.call(mobileNoCtrl.text, selectedPlan?.id ?? ""),
      (ex, __) => switch (ex) {
        OutstandingBillException() => Failure(
            title: 'Activation Failed',
            message: ex.message ?? "Please pay your outstanding bill before continue registration.",
            icon: Icons.error_outline_sharp,
          ),
        _ => Failure.unknown(),
      },
    );
  }
}
