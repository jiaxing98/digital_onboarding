// part of '_dependency_injection.dart';
//
// void _injectHelpers(AppConfig appConfig, DobAppController controller) {
// // ! configs
//   helpers.registerSingleton<AppConfig>(appConfig);
//   helpers.registerSingleton<DobAppController>(controller);
//
//   // ! helpers
//   helpers.registerSingleton<AuthenticateHelper>(
//     AuthenticateHelper(),
//   );
//   helpers.registerLazySingleton<ScanQrCodeHelper>(
//     () => ScanQrCodeHelper(),
//   );
//   helpers.registerFactory<ImageCompressHelper>(() => ImageCompressHelperImpl());
//
//   // ! interceptors
//   helpers.registerSingleton<AuthenticateInterceptor>(
//     AuthenticateInterceptor(
//       utils.https,
//       appConfig,
//       helpers.get<AuthenticateHelper>(),
//     ),
//   );
//
//   // ! wise ai ekyc
//   helpers.registerLazySingleton<WiseAiEkyc>(
//     () => WiseAiEkyc(config: helpers.get<AppConfig>().wiseAIConfig),
//   );
// }
