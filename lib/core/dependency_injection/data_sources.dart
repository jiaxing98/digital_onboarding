// part of '_dependency_injection.dart';
//
// void _injectDataSources() {
//   // ! check_port_in
//   dataSources.registerFactory<MnpStatusDataSource>(
//     () => MnpStatusDataSourceImpl(
//       utils.https,
//       helpers.get<AppConfig>(),
//     ),
//   );
//
//   // ! register
//   dataSources.registerFactory<InitializationDataSource>(
//     () => InitializationDataSourceImpl(
//       utils.https,
//       helpers.get<AppConfig>(),
//       helpers.get<AuthenticateHelper>(),
//     ),
//   );
//   dataSources.registerFactory<PackageTagDataSource>(
//     () => PackageTagDataSourceImpl(
//       utils.https,
//       helpers.get<AppConfig>(),
//     ),
//   );
//   dataSources.registerFactory<RegisterDataSource>(
//     () => RegisterDataSourceImpl(
//       utils.https,
//       helpers.get<AppConfig>(),
//     ),
//   );
//   dataSources.registerFactory<WiseAiEkycDataSource>(
//     () => WiseAiEkycDataSourceImpl(
//       helpers.get<WiseAiEkyc>(),
//     ),
//   );
// }
