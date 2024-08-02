// import 'package:flutter_one/dependency/utility_manager.dart';
// import 'package:get_it/get_it.dart';
// import 'package:digital_onboarding/core/helpers/image_compress_helper.dart';
// import 'package:digital_onboarding/core/interceptors/authenticate_interceptor.dart';
// import 'package:digital_onboarding/features/check_port_in/data/data_sources/mnp_status_data_source.dart';
// import 'package:digital_onboarding/features/check_port_in/data/repositories/mnp_status_repository_impl.dart';
// import 'package:digital_onboarding/features/check_port_in/domain/repositories/mnp_status_repository.dart';
// import 'package:digital_onboarding/features/check_port_in/domain/usecases/check_mnp_status_usecase.dart';
// import 'package:digital_onboarding/features/check_port_in/presentation/check_port_in_status/check_port_in_status_screen_viewmodel.dart';
// import 'package:digital_onboarding/features/register/data/data_source/initialization_data_source.dart';
// import 'package:digital_onboarding/features/register/data/data_source/package_tag_data_source.dart';
// import 'package:digital_onboarding/features/register/data/data_source/register_data_source.dart';
// import 'package:digital_onboarding/features/register/data/data_source/user_data_source.dart';
// import 'package:digital_onboarding/features/register/data/data_source/wise_ai_ekyc_data_source.dart';
// import 'package:digital_onboarding/features/register/data/repositories/dob_repository_impl.dart';
// import 'package:digital_onboarding/features/register/data/repositories/wise_ai_ekyc_repository_impl.dart';
// import 'package:digital_onboarding/features/register/domain/repositories/dob_repository.dart';
// import 'package:digital_onboarding/features/register/domain/repositories/wise_ai_ekyc_repository.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/confirm_detail_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/create_transaction_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/get_authenticate_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/get_scanned_caller_id_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/get_selected_id_type_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/get_selection_list_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/get_user_form_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/start_registration_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/perform_military_ekyc_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/perform_ekyc_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/perform_mykas_ekyc_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/perform_mypr_ekyc_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/perform_passport_ekyc_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/port_in_registration_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/save_address_details_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/save_ekyc_and_form_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/submit_new_activation_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/submit_port_in_activation_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/update_confirm_mobile_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/update_ekyc_result_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/update_id_type_usecase.dart';
// import 'package:digital_onboarding/features/register/domain/usecases/verify_package_tag_usecase.dart';
// import 'package:digital_onboarding/features/register/presentation/capture_id_guidelines/capture_id_guidelines_page_viewmodel.dart';
// import 'package:digital_onboarding/features/register/presentation/confirm_mobile_number/confirm_mobile_number_page_viewmodel.dart';
// import 'package:digital_onboarding/features/register/presentation/customer_details/customer_details_page_viewmodel.dart';
// import 'package:digital_onboarding/features/register/presentation/easy_step/easy_step_screen_viewmodel.dart';
// import 'package:digital_onboarding/features/register/presentation/port_in_details/port_in_details_page_viewmodel.dart';
// import 'package:digital_onboarding/features/register/presentation/registration/registration_screen_viewmodel.dart';
// import 'package:digital_onboarding/features/register/presentation/scan_agent_qr_code/scan_agent_qr_code_screen_viewmodel.dart';
// import 'package:digital_onboarding/features/register/presentation/select_identification/select_identification_page_viewmodel.dart';
// import 'package:digital_onboarding/features/register/presentation/sim_example/sim_package_viewmodel.dart';
// import 'package:digital_onboarding/main/app_config.dart';
// import 'package:digital_onboarding/main/dob_app_controller.dart';
// import 'package:digital_onboarding/utils/authenticate_service.dart';
// import 'package:digital_onboarding/utils/scan_qr_code_helper.dart';
// import 'package:wise_ai_ekyc/wise_ai_ekyc.dart';
//
// part 'user_data_source.dart';
// part 'helpers.dart';
// part 'repositories.dart';
// part 'viewmodels.dart';
//
// final GetIt helpers = GetIt.asNewInstance();
// final GetIt dataSources = GetIt.asNewInstance();
// final GetIt repositories = GetIt.asNewInstance();
// final GetIt viewModels = GetIt.asNewInstance();
//
// void injectDependencies(AppConfig appConfig, DobAppController controller) {
//   _injectHelpers(appConfig, controller);
//   _injectDataSources();
//   _injectRepositories();
//   _injectViewModels();
// }
//
// void resetAllDependencies() {
//   helpers.reset(dispose: false);
//   dataSources.reset(dispose: false);
//   repositories.reset(dispose: false);
//   viewModels.reset(dispose: false);
// }
