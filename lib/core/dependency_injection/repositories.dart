import 'package:digital_onboarding/data/repositories/app_data_repository_impl.dart';
import 'package:digital_onboarding/data/repositories/register_repository_impl.dart';
import 'package:digital_onboarding/domain/repositories/app_data_repository.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt repositories = GetIt.asNewInstance();

void injectRepositories() {
  repositories.registerFactory<AppDataRepository>(
    () => AppDataRepositoryImpl(),
  );

  repositories.registerFactory<RegisterRepository>(
    () => RegisterRepositoryImpl(),
  );
}
