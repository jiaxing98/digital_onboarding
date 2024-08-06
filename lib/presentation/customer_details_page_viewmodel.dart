import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/state.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/usecases/get_country_states_usecase.dart';
import 'package:digital_onboarding/domain/usecases/get_registration_type_usecase.dart';
import 'package:digital_onboarding/domain/usecases/submit_new_activation_usecase.dart';
import 'package:digital_onboarding/core/exceptions/activation_exception.dart';
import 'package:digital_onboarding/core/exceptions/app_exception.dart';
import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class CustomerDetailsPageVM extends ChangeNotifier {
  final GetCountryStatesUseCase _getCountryStatesUseCase;
  final GetRegistrationTypeUseCase _getRegistrationTypeUseCase;
  final SubmitNewActivationUseCase _submitNewActivationUseCase;

  CustomerDetailsPageVM({
    required GetCountryStatesUseCase getCountryStatesUseCase,
    required GetRegistrationTypeUseCase getRegistrationTypeUseCase,
    required SubmitNewActivationUseCase submitNewActivationUseCase,
  })  : _getCountryStatesUseCase = getCountryStatesUseCase,
        _getRegistrationTypeUseCase = getRegistrationTypeUseCase,
        _submitNewActivationUseCase = submitNewActivationUseCase;

  final formKey = GlobalKey<FormState>();
  final TextEditingController addressLine1Ctrl = TextEditingController();
  final TextEditingController addressLine2Ctrl = TextEditingController();
  final TextEditingController postcodeCtrl = TextEditingController();
  final TextEditingController cityCtrl = TextEditingController();

  List<CountryState> availableCountryStates = [];
  CountryState? selectedCountryState;

  Future<RegistrationType> get registrationType => _getRegistrationTypeUseCase.call();

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
          OutstandingBillException() => Failure(
              title: 'Activation Failed',
              message: ex.message,
              icon: Icons.error_outline_sharp,
            ),
          SimExceedException() => Failure(
              title: 'Activation Failed',
              message: ex.message,
              icon: Icons.error_outline,
            ),
          _ => Failure.unknown(),
        };
      },
    );
  }

  bool get _invalid {
    return addressLine1Ctrl.text.isEmpty ||
        addressLine2Ctrl.text.isEmpty ||
        postcodeCtrl.text.isEmpty ||
        cityCtrl.text.isEmpty ||
        selectedCountryState == null;
  }

  // void confirmDetails({
  //   required void Function() onSuccess,
  //   required void Function(InvalidRequestException) onInvalidRequestException,
  // }) async {
  //   try {
  //     isBusy(true);
  //     await _confirmDetailUseCase();
  //     isBusy(false);
  //
  //     onSuccess();
  //   } on InvalidRequestException catch (ex) {
  //     isBusy(false);
  //     onInvalidRequestException(ex);
  //   } catch (ex) {
  //     isBusy(false);
  //     utils.httpError.handleError(ex);
  //   }
  // }
}
