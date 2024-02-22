import 'package:get_it/get_it.dart';
import 'package:ghack_app/data/data_source/remote_data_source.dart';
import 'package:ghack_app/data/network/network_info.dart';
import 'package:ghack_app/data/repository/repository.dart';
import 'package:ghack_app/domain/repository/repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  Future<void> init() async {
    // Remote Data Source
    getIt.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());

    // Network info
    getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(InternetConnectionChecker()));

    // Repository
    getIt.registerLazySingleton<Repository>(() => RepositoryImpl(getIt(), getIt()));
  }
}
