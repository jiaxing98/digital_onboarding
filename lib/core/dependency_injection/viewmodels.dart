// part of '_dependency_injection.dart';
//
// void _injectViewModels() {
//   // ! check_port_in
//   viewModels.registerFactory(
//     () => CheckPortInStatusScreenVM(
//       checkMnpStatusUseCase: CheckMnpStatusUseCase(
//         repositories.get<MnpStatusRepository>(),
//       ),
//     ),
//   );
//
//   // ! register
//   //region CaptureIdGuidelinesViewVM
//   viewModels.registerFactory(
//     () => CaptureIdGuidelinesPageVM(
//       getUserIdTypeUseCase: GetSelectedIdTypeUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       saveEkycResultUseCase: SaveEkycResultUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       updateEkycResultUseCase: UpdateEkycResultUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       performMyKadEkycUsecase: PerformMyKadEkycUsecase(
//         repositories.get<WiseAiEkycRepository>(),
//       ),
//       performPassportEkycUsecase: PerformPassportEkycUsecase(
//         repositories.get<WiseAiEkycRepository>(),
//       ),
//       performMilitaryEkycUsecase: PerformMilitaryEkycUsecase(
//         repositories.get<WiseAiEkycRepository>(),
//       ),
//       performMyPrEkycUsecase: PerformMyPrEkycUsecase(
//         repositories.get<WiseAiEkycRepository>(),
//       ),
//       performMyKasEkycUsecase: PerformMyKasEkycUsecase(
//         repositories.get<WiseAiEkycRepository>(),
//       ),
//     ),
//   );
//   //endregion
//
//   //region ConfirmMobileNumberViewVM
//   viewModels.registerFactory(
//     () => ConfirmMobileNumberPageVM(
//       getScannedCallerIdUseCase: GetScannedCallerIdUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       updateConfirmMobileUseCase: UpdateConfirmMobileUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       verifyPackageTagUseCase: VerifyPackageTagUseCase(
//         repositories.get<DobRepository>(),
//       ),
//     ),
//   );
//   //endregion
//
//   //region CustomerDetailsViewVM
//   viewModels.registerFactory(
//     () => CustomerDetailsPageVM(
//       getUserFormUseCase: GetUserFormUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       updateUserFormUseCase: SaveAddressDetailsUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       getSelectionListUseCase: GetSelectionListUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       confirmDetailUseCase: ConfirmDetailUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       submitNewActivationUseCase: SubmitNewActivationUseCase(
//         repositories.get<DobRepository>(),
//       ),
//     ),
//   );
//   //endregion
//
//   //region EasyStepPageVM
//   viewModels.registerFactory(
//     () => EasyStepScreenVM(
//       getAuthenticateUseCase: GetAuthenticateUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       newRegistrationUseCase: NewRegistrationUseCase(
//         repositories.get<DobRepository>(),
//       ),
//       portInRegistrationUseCase: PortInRegistrationUseCase(
//         repositories.get<DobRepository>(),
//       ),
//     ),
//   );
//   //endregion
//
//   //region PortInDetailsViewVM
//   viewModels.registerFactory(
//     () => PortInDetailsPageVM(
//       submitPortInActivationUseCase: SubmitPortInActivationUseCase(
//         repositories.get<DobRepository>(),
//       ),
//     ),
//   );
//   //endregion
//
//   //region RegistrationPageVM
//   viewModels.registerFactory(
//     () => RegistrationScreenVM(
//         // getMNPUseCase: GetMNPUseCase(
//         //   repositories.get<DobRepository>(),
//         // ),
//         ),
//   );
//   //endregion
//
//   //region ScanAgentQrCodePageVM
//   viewModels.registerFactory(
//     () => ScanAgentQrCodeScreenVM(
//       createTransactionUseCase: CreateTransactionUseCase(
//         repositories.get<DobRepository>(),
//       ),
//     ),
//   );
//   //endregion
//
//   //region SelectIdentificationViewVM
//   viewModels.registerFactory(
//     () => SelectIdentificationPageVM(
//       updateIdTypeUseCase: UpdateIdTypeUseCase(
//         repositories.get<DobRepository>(),
//       ),
//     ),
//   );
//   //endregion
//
//   //region SimExampleViewVM
//   viewModels.registerFactory(
//     () => SimExamplePageVM(
//       verifyPackageTagUseCase: VerifyPackageTagUseCase(
//         repositories.get<DobRepository>(),
//       ),
//     ),
//   );
//   //endregion
// }
