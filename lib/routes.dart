import 'package:digital_onboarding/core/dependency_injection/viewmodels.dart';
import 'package:digital_onboarding/presentation/_viewmodels/app_data_viewmodel.dart';
import 'package:digital_onboarding/presentation/landing_screen.dart';
import 'package:digital_onboarding/presentation/select_identification_page.dart';
import 'package:digital_onboarding/presentation/select_identification_page_viewmodel.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  initialLocation: Screen.home,
  routes: <RouteBase>[
    GoRoute(
      path: Screen.home,
      builder: (context, state) {
        return const LandingScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: Screen.register,
          name: Screen.register,
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
      ],
    ),
  ],
);

final class Screen {
  static const home = '/';
  static const register = 'register';
}
