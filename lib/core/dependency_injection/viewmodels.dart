import 'package:digital_onboarding/core/dependency_injection/repositories.dart';
import 'package:digital_onboarding/domain/repositories/app_data_repository.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';
import 'package:digital_onboarding/domain/usecases/check_mnp_status_usecase.dart';
import 'package:digital_onboarding/domain/usecases/confirm_details_usecase.dart';
import 'package:digital_onboarding/domain/usecases/get_country_states_usecase.dart';
import 'package:digital_onboarding/domain/usecases/get_id_documents_usecase.dart';
import 'package:digital_onboarding/domain/usecases/get_registration_type_usecase.dart';
import 'package:digital_onboarding/domain/usecases/get_service_providers_usecase.dart';
import 'package:digital_onboarding/domain/usecases/get_user_brief_info_usecase.dart';
import 'package:digital_onboarding/domain/usecases/perform_ekyc_usecase.dart';
import 'package:digital_onboarding/domain/usecases/scan_sim_package_usecase.dart';
import 'package:digital_onboarding/domain/usecases/select_id_document_usecase.dart';
import 'package:digital_onboarding/domain/usecases/start_registration_usecase.dart';
import 'package:digital_onboarding/domain/usecases/submit_new_activation_usecase.dart';
import 'package:digital_onboarding/domain/usecases/submit_port_in_activation_usecase.dart';
import 'package:digital_onboarding/presentation/capture_id_guidelines_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/check_port_in_status_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/customer_details_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/landing_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/port_in_details_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/scan_sim_package_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/select_identification_page_viewmodel.dart';
import 'package:get_it/get_it.dart';

final GetIt viewModels = GetIt.asNewInstance();

void injectViewModels() {
  viewModels.registerFactory(
    () => LandingPageVM(
      startRegistrationUseCase: StartRegistrationUseCase(
        repositories.get<UserRepository>(),
      ),
    ),
  );

  viewModels.registerFactory(
    () => ScanSimPackagePageVM(
      scanSimPackageUseCase: ScanSimPackageUseCase(
        repositories.get<RegisterRepository>(),
      ),
    ),
  );

  viewModels.registerFactory(
    () => SelectIdentificationPageVM(
      selectIdDocumentUseCase: SelectIdDocumentUseCase(
        repositories.get<UserRepository>(),
      ),
      getIdDocumentsUseCase: GetIdDocumentsUseCase(
        repositories.get<AppDataRepository>(),
      ),
    ),
  );

  viewModels.registerFactory(
    () => CaptureIdGuidelinesPageVM(
      performEkycUseCase: PerformEkycUseCase(
        repositories.get<RegisterRepository>(),
      ),
    ),
  );

  viewModels.registerFactory(
    () => CustomerDetailsPageVM(
      getCountryStatesUseCase: GetCountryStatesUseCase(
        repositories.get<AppDataRepository>(),
      ),
      getRegistrationTypeUseCase: GetRegistrationTypeUseCase(
        repositories.get<UserRepository>(),
      ),
      submitNewActivationUseCase: SubmitNewActivationUseCase(
        repositories.get<RegisterRepository>(),
      ),
      confirmDetailsUseCase: ConfirmDetailsUseCase(
        repositories.get<UserRepository>(),
      ),
    ),
  );

  viewModels.registerFactory(
    () => PortInDetailsPageVM(
      getServiceProvidersUseCase: GetServiceProvidersUseCase(
        repositories.get<AppDataRepository>(),
      ),
      getUserBriefInfoUseCase: GetUserBriefInfoUseCase(
        repositories.get<UserRepository>(),
      ),
      submitPortInActivationUseCase: SubmitPortInActivationUseCase(
        repositories.get<RegisterRepository>(),
      ),
    ),
  );

  viewModels.registerFactory(
    () => CheckPortInStatusPageVM(
      checkMnpStatusUseCase: CheckMnpStatusUseCase(),
    ),
  );
}
