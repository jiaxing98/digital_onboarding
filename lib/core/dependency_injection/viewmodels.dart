import 'package:digital_onboarding/core/dependency_injection/repositories.dart';
import 'package:digital_onboarding/domain/repositories/app_data_repository.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';
import 'package:digital_onboarding/domain/usecases/perform_ekyc_usecase.dart';
import 'package:digital_onboarding/domain/usecases/start_registration_usecase.dart';
import 'package:digital_onboarding/domain/usecases/update_id_type_usecase.dart';
import 'package:digital_onboarding/presentation/_viewmodels/app_data_viewmodel.dart';
import 'package:digital_onboarding/presentation/capture_id_guidelines_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/landing_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/select_identification_page_viewmodel.dart';
import 'package:get_it/get_it.dart';

final GetIt viewModels = GetIt.asNewInstance();

void injectViewModels() {
  viewModels.registerSingleton(
    AppDataVM(appDataRepository: repositories.get<AppDataRepository>()),
  );

  viewModels.registerFactory(
    () => LandingPageVM(
      startRegistrationUseCase: StartRegistrationUseCase(
        repositories.get<RegisterRepository>(),
      ),
    ),
  );

  viewModels.registerFactory(
    () => SelectIdentificationPageVM(
      updateIdDocumentUseCase: UpdateIdDocumentUseCase(
        repositories.get<RegisterRepository>(),
      ),
    ),
  );

  viewModels.registerFactory(
    () => CaptureIdGuidelinesPageVM(
      performEkycUseCase: PerformEkycUseCase(),
    ),
  );

  //
  // //region ConfirmMobileNumberViewVM
  // viewModels.registerFactory(
  //   () => ConfirmMobileNumberPageVM(
  //     getScannedCallerIdUseCase: GetScannedCallerIdUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //     updateConfirmMobileUseCase: UpdateConfirmMobileUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //     verifyPackageTagUseCase: VerifyPackageTagUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //   ),
  // );
  // //endregion
  //
  // //region CustomerDetailsViewVM
  // viewModels.registerFactory(
  //   () => CustomerDetailsPageVM(
  //     getUserFormUseCase: GetUserFormUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //     updateUserFormUseCase: SaveAddressDetailsUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //     getSelectionListUseCase: GetSelectionListUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //     confirmDetailUseCase: ConfirmDetailUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //     submitNewActivationUseCase: SubmitNewActivationUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //   ),
  // );
  // //endregion
  //
  // //region EasyStepPageVM
  // viewModels.registerFactory(
  //   () => EasyStepScreenVM(
  //     getAuthenticateUseCase: GetAuthenticateUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //     newRegistrationUseCase: NewRegistrationUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //     portInRegistrationUseCase: PortInRegistrationUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //   ),
  // );
  // //endregion
  //
  // //region PortInDetailsViewVM
  // viewModels.registerFactory(
  //   () => PortInDetailsPageVM(
  //     submitPortInActivationUseCase: SubmitPortInActivationUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //   ),
  // );
  // //endregion
  //
  // //region RegistrationPageVM
  // viewModels.registerFactory(
  //   () => RegistrationScreenVM(
  //       // getMNPUseCase: GetMNPUseCase(
  //       //   repositories.get<DobRepository>(),
  //       // ),
  //       ),
  // );
  // //endregion
  //
  // //region SelectIdentificationViewVM
  // viewModels.registerFactory(
  //   () => SelectIdentificationPageVM(
  //     updateIdTypeUseCase: UpdateIdTypeUseCase(
  //       repositories.get<DobRepository>(),
  //     ),
  //   ),
  // );
  // //endregion
}
