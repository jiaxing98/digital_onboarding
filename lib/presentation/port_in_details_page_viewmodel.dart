// import 'package:flutter_one/dependency/utility_manager.dart';
// import 'package:flutter_one/state/viewmodel.dart';
// import 'package:redone_dob/core/exceptions/registration_exception.dart';
// import 'package:redone_dob/features/register/domain/entities/donor_type_entity.dart';
// import 'package:redone_dob/features/register/domain/usecases/submit_port_in_activation_usecase.dart';
//
// class PortInDetailsPageVM extends ViewModel {
//   final SubmitPortInActivationUseCase _submitPortInActivationUseCase;
//
//   Map<String, List<DonorTypeEntity>> donorType = {};
//   String portInMobileNumber = "";
//   String selectedProvider = "";
//   String selectedPlan = "";
//   String donorId = "";
//
//   PortInDetailsPageVM({
//     required SubmitPortInActivationUseCase submitPortInActivationUseCase,
//   }) : _submitPortInActivationUseCase = submitPortInActivationUseCase;
//
//   List<String> get donorKeys => donorType.keys.toList();
//
//   bool get isNextEnabled =>
//       portInMobileNumber.isNotEmpty &&
//       selectedProvider.isNotEmpty &&
//       selectedPlan.isNotEmpty;
//
//   // Future<void> getDonorType() async {
//   //   try {
//   //     isBusy(true);
//   //     donorType = await _selectionStore.getDonorTypeMapUseCase();
//   //     isBusy(false);
//   //     notifyListeners();
//   //   } catch (ex) {
//   //     isBusy(false);
//   //     utils.httpError.handleError(ex);
//   //   }
//   // }
//
//   void onSelectProvider(String? provider) {
//     selectedProvider = provider ?? "";
//     selectedPlan = '';
//     notifyListeners();
//   }
//
//   void onSelectPlan(String plan) {
//     selectedPlan = plan;
//     _getDonorId();
//     notifyListeners();
//   }
//
//   Future<void> submitPortInActivation({
//     required void Function() onSuccess,
//     required void Function(InvalidRequestException) onInvalidRequestException,
//     required void Function(RegistrationException) onRegistrationException,
//   }) async {
//     try {
//       if (donorId.isEmpty) {
//         throw const InvalidRequestException("Invalid Service Provider");
//       }
//
//       isBusy(true);
//       await _submitPortInActivationUseCase(
//         portInMobileNumber: portInMobileNumber,
//         donorId: donorId,
//       );
//       isBusy(false);
//
//       onSuccess();
//     } on InvalidRequestException catch (ex) {
//       isBusy(false);
//       onInvalidRequestException(ex);
//     } on RegistrationException catch (ex) {
//       isBusy(false);
//       onRegistrationException(ex);
//     } catch (ex) {
//       isBusy(false);
//       utils.httpError.handleError(ex);
//     }
//   }
//
//   void _getDonorId() {
//     final result = donorType[selectedProvider];
//     donorId =
//         result?.where((e) => e.planType == selectedPlan).first.donorId ?? "";
//   }
// }
