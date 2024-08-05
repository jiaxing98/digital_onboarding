import 'package:digital_onboarding/core/dependency_injection/data_sources.dart';
import 'package:digital_onboarding/core/dependency_injection/repositories.dart';
import 'package:digital_onboarding/core/dependency_injection/viewmodels.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:digital_onboarding/utils/ut_responsive_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';

void main() {
  injectDependencies();
  runApp(const MyApp());
}

void injectDependencies() {
  injectDataSources();
  injectRepositories();
  injectViewModels();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      duration: Durations.medium4,
      reverseDuration: Durations.medium4,
      overlayColor: Colors.grey.withOpacity(0.8),
      useDefaultLoading: false,
      overlayWidgetBuilder: (_) {
        return const Center(
          child: SpinKitCubeGrid(color: Colors.red, size: 50.0),
        );
      },
      child: MaterialApp.router(
        title: 'Digital OnBoarding',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
        builder: (ctx, child) => UTResponsiveBreakpoints.builder(child: child!),
      ),
    );
  }
}
