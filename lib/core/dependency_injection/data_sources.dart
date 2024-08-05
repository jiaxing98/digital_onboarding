import 'package:digital_onboarding/data/data_sources/app_data_data_source.dart';
import 'package:digital_onboarding/data/data_sources/register_data_source.dart';
import 'package:digital_onboarding/data/data_sources/user_data_source.dart';
import 'package:get_it/get_it.dart';

final GetIt dataSources = GetIt.asNewInstance();

void injectDataSources() {
  dataSources.registerSingleton<AppDataDataSource>(
    AppDataDataSourceImpl(),
  );

  dataSources.registerSingleton<RegisterDataSource>(
    RegisterDataSourceImpl(),
  );

  dataSources.registerSingleton<UserDataSource>(
    UserDataSourceImpl(),
  );
}
