import 'package:beers_flutter/core/error/failure.dart';
import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:beers_flutter/features/beers/domain/repository/beers_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/platform/network_info.dart';
import '../datasources/local/beers_local_data_source.dart';
import '../datasources/remote/beers_remote_data_source.dart';

class BeersRepositoryImpl implements BeersRepository {
  final BeersLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final BeersRemoteDataSource remoteDataSource;
  BeersRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
});

  @override
  Future<Either<Failure, Beers>> getBeerByName(String name) {
    
  }

  @override
  Future<Either<Failure, List<Beers>>> getBeers() {

  }

}