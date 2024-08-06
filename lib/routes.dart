import 'package:digital_onboarding/core/dependency_injection/viewmodels.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:digital_onboarding/presentation/_shared/pages/activation_failed_page.dart';
import 'package:digital_onboarding/presentation/_shared/pages/not_found_page.dart';
import 'package:digital_onboarding/presentation/capture_id_guidelines_page.dart';
import 'package:digital_onboarding/presentation/capture_id_guidelines_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/check_port_in_status_page.dart';
import 'package:digital_onboarding/presentation/check_port_in_status_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/customer_details_page.dart';
import 'package:digital_onboarding/presentation/customer_details_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/landing_page.dart';
import 'package:digital_onboarding/presentation/landing_page_viewmodel.dart';
import 'package:digital_onboarding/presentation/registration_success_page.dart';
import 'package:digital_onboarding/presentation/select_identification_page.dart';
import 'package:digital_onboarding/presentation/select_identification_page_viewmodel.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  initialLocation: Pages.home,
  errorBuilder: (ctx, state) {
    return const NotFoundPage();
  },
  routes: <RouteBase>[
    GoRoute(
      path: Pages.home,
      name: Pages.home,
      builder: (context, state) {
        return Provider(
          create: (ctx) => viewModels.get<LandingPageVM>(),
          child: const LandingPage(),
        );
      },
    ),
    GoRoute(
      path: Pages.selectId,
      name: Pages.selectId,
      builder: (context, state) {
        return Provider(
          create: (_) => viewModels.get<SelectIdentificationPageVM>(),
          child: const SelectIdentificationPage(),
        );
      },
    ),
    GoRoute(
      path: Pages.guidelines,
      name: Pages.guidelines,
      builder: (context, state) {
        return Provider(
          create: (_) => viewModels.get<CaptureIdGuidelinesPageVM>(),
          child: const CaptureIdGuidelinesPage(),
        );
      },
    ),
    GoRoute(
      path: Pages.form,
      name: Pages.form,
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => viewModels.get<CustomerDetailsPageVM>(),
          child: CustomerDetailsPage(
            ekycInfo: state.extra as EkycInfo,
          ),
        );
      },
    ),
    GoRoute(
      path: Pages.success,
      name: Pages.success,
      builder: (context, state) {
        final query = state.uri.queryParameters;
        return RegistrationSuccessPage(
          username: query["username"]!,
          registrationType: state.extra as RegistrationType,
        );
      },
    ),
    GoRoute(
      path: Pages.checkStatus,
      name: Pages.checkStatus,
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (ctx) => viewModels.get<CheckPortInStatusPageVM>(),
          child: CheckPortInStatusPage(),
        );
      },
    ),
    GoRoute(
      path: Pages.activationFailed,
      name: Pages.activationFailed,
      builder: (context, state) {
        return ActivationFailedPage(failure: state.extra as Failure);
      },
    ),
  ],
);

sealed class Pages {
  static const home = '/';
  static const selectId = '/selectId';
  static const guidelines = '/guidelines';
  static const form = '/form';
  static const success = '/success';
  static const checkStatus = '/checkStatus';

  // failure
  static const activationFailed = '/activationFailed';
}
