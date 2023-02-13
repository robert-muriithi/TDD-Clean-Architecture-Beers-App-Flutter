import 'package:beers_flutter/core/error/exception.dart';
import 'package:beers_flutter/core/error/failure.dart';
import 'package:beers_flutter/features/beers/data/datasources/local/entity/beers_entity.dart';
import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:beers_flutter/features/beers/domain/repository/beers_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';

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
  Future<Either<Failure, List<Beers>>> getBeers() async {
    final log = Logger();
    if(await networkInfo.isConnected){
      try{
        final remoteData = await remoteDataSource.getBeers();
        ////////////////! remoteData.map((e) => BeersEntity.fromDomain(e)).toList();
        List<BeersEntity> beerEntity = remoteData.map((e) => BeersEntity.toBeers(e)).toList();
        localDataSource.deleteBeers();
        localDataSource.insertBeers(beerEntity);

        return Right(remoteData);
      } on ServerException catch (exception) {
        log.d('remoteData ${exception.message}');
        return  Left(ServerFailure(exception.message));
      }
    }else {
      try {
        final localBeerData = await localDataSource.getBeers();
        return Right(localBeerData);
      } on DatabaseException catch (exception) {
        return Left(DatabaseFailure(exception.message));
      }
    }
  }

}