import 'package:beers_flutter/core/database/beers_database.dart';
import 'package:beers_flutter/core/platform/network_info.dart';
import 'package:beers_flutter/features/beers/data/datasources/local/beers_local_data_source.dart';
import 'package:beers_flutter/features/beers/data/datasources/remote/beers_remote_data_source.dart';
import 'package:beers_flutter/features/beers/data/repository/beers_repository_impl.dart';
import 'package:beers_flutter/features/beers/domain/repository/beers_repository.dart';
import 'package:beers_flutter/features/beers/presentation/bloc/beers_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'features/beers/domain/usecase/get_beers_usecase.dart';

//Service Locator
final sl = GetIt.instance;

Future<void> init () async {
  initFeatures();

  initCore();
  await initExternal();
}

void initFeatures() {
  //Bloc
  sl.registerFactory(() => BeersBloc(sl()));

  //Use case
  sl.registerLazySingleton(() => GetBeersUseCase(sl()));

  //Repository
  sl.registerLazySingleton<BeersRepository>(() =>
      BeersRepositoryImpl(
          remoteDataSource: sl(),
          localDataSource: sl(),
          networkInfo: sl()
      )
  );

  //Data source
  sl.registerLazySingleton<BeersRemoteDataSource>(() => BeersRemoteDataSourceImpl(dio: sl()));
  sl.registerLazySingleton<BeersLocalDataSource>(() => BeersLocalDataSourceImpl(sl()));
  
}

void initCore() {
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}

Future<void> initExternal() async{
  //Dio
  sl.registerLazySingleton(() => Dio());
  
  //Network info
  sl.registerLazySingleton(() => InternetConnectionChecker());

  //Database
  final database = await $FloorBeersDatabase
  .databaseBuilder('app_database.db')
  .build();

  sl.registerFactory(() => database);
}