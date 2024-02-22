import 'package:get_it/get_it.dart';
import 'package:ghack_app/core/services/shared_prefrences.dart';
import 'package:ghack_app/data/data_source/remote_data_source.dart';
import 'package:ghack_app/data/network/network_info.dart';
import 'package:ghack_app/data/repository/repository.dart';
import 'package:ghack_app/domain/repository/repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  Future<void> init() async {
    // Shared prefrences
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
    getIt.registerLazySingleton<AppPrefernces>(() => AppPrefernces(getIt()));

    // Remote Data Source
    getIt.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());

    // Network info
    getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(InternetConnectionChecker()));

    // Repository
    getIt.registerLazySingleton<Repository>(() => RepositoryImpl(getIt(), getIt()));
  }
}
