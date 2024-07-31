// import 'package:flutter_one/dependency/utility_manager.dart';
// import 'package:flutter_one/state/viewmodel.dart';
// import 'package:digital_onboarding/domain/entities/user_info.dart';
// import 'package:digital_onboarding/domain/entities/verify_package_tag_result.dart';
// import 'package:digital_onboarding/domain/usecases/get_registration_type_usecase.dart';
// import 'package:digital_onboarding/domain/usecases/get_scanned_caller_id_usecase.dart';
// import 'package:digital_onboarding/domain/usecases/update_confirm_mobile_usecase.dart';
// import 'package:digital_onboarding/domain/usecases/verify_package_tag_usecase.dart';
//
// class SimPackageVM extends ViewModel {
//   final GetRegistrationTypeUseCase _getRegistrationTypeUseCase;
//   final VerifyPackageTagUseCase _verifyPackageTagUseCase;
//   final GetScannedCallerIdUseCase _getScannedCallerIdUseCase;
//   final UpdateConfirmMobileUseCase _updateConfirmMobileUseCase;
//
//   SimPackageVM({
//     required GetRegistrationTypeUseCase getRegistrationTypeUseCase,
//     required VerifyPackageTagUseCase verifyPackageTagUseCase,
//     required GetScannedCallerIdUseCase getScannedCallerIdUseCase,
//     required UpdateConfirmMobileUseCase updateConfirmMobileUseCase,
//   })  : _getRegistrationTypeUseCase = getRegistrationTypeUseCase,
//         _verifyPackageTagUseCase = verifyPackageTagUseCase,
//         _getScannedCallerIdUseCase = getScannedCallerIdUseCase,
//         _updateConfirmMobileUseCase = updateConfirmMobileUseCase;
//
//   RegistrationType registrationType = RegistrationType.newRegistration;
//   String callerId = "";
//
//   Future<void> getRegistrationType() async {
//     registrationType = await _getRegistrationTypeUseCase();
//   }
//
//   Future<VerifyPackageTagResult?> verifyPackageTag(String barcode) async {
//     try {
//       isBusy(true);
//       final result = await _verifyPackageTagUseCase(packageTag: barcode);
//       isBusy(false);
//
//       return result;
//     } catch (ex) {
//       isBusy(false);
//       utils.httpError.handleError(ex);
//       return null;
//     }
//   }
//
//   Future<void> getScannedCallerId() async {
//     callerId = await _getScannedCallerIdUseCase();
//   }
//
//   Future<void> updateConfirmMobile() async {
//     try {
//       isBusy(true);
//       await _updateConfirmMobileUseCase();
//       isBusy(false);
//     } catch (ex) {
//       isBusy(false);
//       utils.httpError.handleError(ex);
//     }
//   }
// }
