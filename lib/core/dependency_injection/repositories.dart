import 'package:digital_onboarding/core/dependency_injection/data_sources.dart';
import 'package:digital_onboarding/data/data_sources/app_data_data_source.dart';
import 'package:digital_onboarding/data/data_sources/register_data_source.dart';
import 'package:digital_onboarding/data/data_sources/user_data_source.dart';
import 'package:digital_onboarding/data/repositories/app_data_repository_impl.dart';
import 'package:digital_onboarding/data/repositories/register_repository_impl.dart';
import 'package:digital_onboarding/data/repositories/user_repository_impl.dart';
import 'package:digital_onboarding/domain/repositories/app_data_repository.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';
import 'package:digital_onboarding/utils/ekyc_service.dart';
import 'package:get_it/get_it.dart';

final GetIt repositories = GetIt.asNewInstance();

void injectRepositories() {
  repositories.registerSingleton<AppDataRepository>(
    AppDataRepositoryImpl(dataSources.get<AppDataDataSource>()),
  );

  repositories.registerSingleton<UserRepository>(
    UserRepositoryImpl(
      dataSources.get<AppDataDataSource>(),
      dataSources.get<UserDataSource>(),
    ),
  );

  repositories.registerSingleton<RegisterRepository>(
    RegisterRepositoryImpl(
      dataSources.get<RegisterDataSource>(),
      repositories.get<UserRepository>(),
      EkycService(),
    ),
  );
}
