import 'package:digital_onboarding/core/dependency_injection/viewmodels.dart';
import 'package:digital_onboarding/presentation/_viewmodels/app_data_viewmodel.dart';
import 'package:digital_onboarding/presentation/capture_id_guidelines_page.dart';
import 'package:digital_onboarding/presentation/landing_page.dart';
import 'package:digital_onboarding/presentation/select_identification_page.dart';
import 'package:digital_onboarding/presentation/select_identification_page_viewmodel.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  initialLocation: Pages.home,
  routes: <RouteBase>[
    GoRoute(
      path: Pages.home,
      name: Pages.home,
      builder: (context, state) {
        return const LandingPage();
      },
    ),
    GoRoute(
      path: Pages.selectId,
      name: Pages.selectId,
      builder: (context, state) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(
              value: context.read<AppDataVM>(),
            ),
            ChangeNotifierProvider(
              create: (_) => viewModels.get<SelectIdentificationPageVM>(),
            ),
          ],
          child: const SelectIdentificationPage(),
        );
      },
    ),
    GoRoute(
      path: Pages.guidelines,
      name: Pages.guidelines,
      builder: (context, state) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(
              value: context.read<AppDataVM>(),
            ),
            ChangeNotifierProvider(
              create: (_) => viewModels.get<SelectIdentificationPageVM>(),
            ),
          ],
          child: CaptureIdGuidelinesPage(),
        );
      },
    ),
  ],
);

sealed class Pages {
  static const home = '/';
  static const selectId = '/selectId';
  static const guidelines = '/guidelines';
}
