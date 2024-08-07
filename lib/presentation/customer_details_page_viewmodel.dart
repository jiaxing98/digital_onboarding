import 'package:digital_onboarding/core/exceptions/activation_exception.dart';
import 'package:digital_onboarding/core/exceptions/app_exception.dart';
import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/country_state.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/usecases/confirm_details_usecase.dart';
import 'package:digital_onboarding/domain/usecases/get_country_states_usecase.dart';
import 'package:digital_onboarding/domain/usecases/get_registration_type_usecase.dart';
import 'package:digital_onboarding/domain/usecases/submit_new_activation_usecase.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class CustomerDetailsPageVM extends ChangeNotifier {
  final GetCountryStatesUseCase _getCountryStatesUseCase;
  final GetRegistrationTypeUseCase _getRegistrationTypeUseCase;
  final SubmitNewActivationUseCase _submitNewActivationUseCase;
  final ConfirmDetailsUseCase _confirmDetailsUseCase;

  CustomerDetailsPageVM({
    required GetCountryStatesUseCase getCountryStatesUseCase,
    required GetRegistrationTypeUseCase getRegistrationTypeUseCase,
    required SubmitNewActivationUseCase submitNewActivationUseCase,
    required ConfirmDetailsUseCase confirmDetailsUseCase,
  })  : _getCountryStatesUseCase = getCountryStatesUseCase,
        _getRegistrationTypeUseCase = getRegistrationTypeUseCase,
        _submitNewActivationUseCase = submitNewActivationUseCase,
        _confirmDetailsUseCase = confirmDetailsUseCase;

  final formKey = GlobalKey<FormState>();
  final TextEditingController addressLine1Ctrl = TextEditingController();
  final TextEditingController addressLine2Ctrl = TextEditingController();
  final TextEditingController postcodeCtrl = TextEditingController();
  final TextEditingController cityCtrl = TextEditingController();

  List<CountryState> availableCountryStates = [];
  CountryState? selectedCountryState;

  Future<RegistrationType> get registrationType async => await _getRegistrationTypeUseCase.call();

  Future<void> loadAvailableCountryStates() async {
    availableCountryStates = await _getCountryStatesUseCase.call();
  }

  void preselectCountryState(CountryState? countryState) {
    selectedCountryState = countryState;
  }

  TaskEither<Failure, void> submitNewActivation() {
    return TaskEither.tryCatch(
      () async {
        if (_invalid) throw const MissingFieldsException();

        final addressInfo = AddressInfo(
          street1: addressLine1Ctrl.text,
          street2: addressLine2Ctrl.text,
          postcode: postcodeCtrl.text,
          city: cityCtrl.text,
          state: selectedCountryState!,
        );
        await _submitNewActivationUseCase(addressInfo);
      },
      (ex, __) {
        return switch (ex) {
          MissingFieldsException() => Failure(
              title: 'Missing Info',
              message: 'Please fill in all the fields.',
            ),
          SimExceedException() => Failure(
              title: 'Activation Failed',
              message: ex.message ?? "You cannot register more than 5 SIM package.",
              icon: Icons.error_outline,
            ),
          _ => Failure.unknown(),
        };
      },
    );
  }

  TaskEither<Failure, void> confirmDetails() {
    return TaskEither.tryCatch(() async {
      if (_invalid) throw const MissingFieldsException();

      final addressInfo = AddressInfo(
        street1: addressLine1Ctrl.text,
        street2: addressLine2Ctrl.text,
        postcode: postcodeCtrl.text,
        city: cityCtrl.text,
        state: selectedCountryState!,
      );
      await _confirmDetailsUseCase.call(addressInfo);
    }, (ex, __) {
      return switch (ex) {
        MissingFieldsException() => Failure(
            title: 'Missing Info',
            message: 'Please fill in all the fields.',
          ),
        _ => Failure.unknown(),
      };
    });
  }

  bool get _invalid {
    return addressLine1Ctrl.text.isEmpty ||
        addressLine2Ctrl.text.isEmpty ||
        postcodeCtrl.text.isEmpty ||
        cityCtrl.text.isEmpty ||
        selectedCountryState == null;
  }
}
