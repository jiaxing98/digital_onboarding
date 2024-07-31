// part of '_dependency_injection.dart';
//
// void _injectRepositories() {
//   // ! check_port_in
//   repositories.registerFactory<MnpStatusRepository>(
//     () => MnpStatusRepositoryImpl(
//       dataSources.get<MnpStatusDataSource>(),
//     ),
//   );
//
//   // ! register
//   repositories.registerFactory<DobRepository>(
//     () => DobRepositoryImpl(
//       dataSources.get<InitializationDataSource>(),
//       dataSources.get<UserDataSource>(),
//       dataSources.get<RegisterDataSource>(),
//       dataSources.get<PackageTagDataSource>(),
//     ),
//   );
//   repositories.registerFactory<WiseAiEkycRepository>(
//     () => WiseAiEkycRepositoryImpl(
//       dataSources.get<WiseAiEkycDataSource>(),
//     ),
//   );
// }
