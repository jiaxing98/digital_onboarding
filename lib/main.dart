import 'package:digital_onboarding/core/dependency_injection/repositories.dart';
import 'package:digital_onboarding/core/dependency_injection/viewmodels.dart';
import 'package:digital_onboarding/presentation/_viewmodels/app_data_viewmodel.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  injectDependencies();
  runApp(const MyApp());
}

void injectDependencies() {
  injectRepositories();
  injectViewModels();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => viewModels.get<AppDataVM>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Digital OnBoarding',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
