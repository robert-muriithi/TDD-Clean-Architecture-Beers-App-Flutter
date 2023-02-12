

import 'package:beers_flutter/core/error/exception.dart';
import 'package:beers_flutter/core/error/failure.dart';
import 'package:beers_flutter/core/platform/network_info.dart';
import 'package:beers_flutter/features/beers/data/datasources/local/beers_local_data_source.dart';
import 'package:beers_flutter/features/beers/data/datasources/remote/beers_remote_data_source.dart';
import 'package:beers_flutter/features/beers/data/repository/beers_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/beers.dart';

class MockRemoteDataSource extends Mock implements BeersRemoteDataSource {}
class MockLocalDataSource extends Mock implements BeersLocalDataSource {}
class MockNetworkInfo extends Mock implements NetworkInfo {}

void main(){
  late MockRemoteDataSource beersRemoteDataSource;
  late MockLocalDataSource beersLocalDataSource;
  late MockNetworkInfo networkInfo;
  late BeersRepositoryImpl repository;

  setUp(() {
    beersRemoteDataSource = MockRemoteDataSource();
    beersLocalDataSource = MockLocalDataSource();
    networkInfo = MockNetworkInfo();
    repository = BeersRepositoryImpl(
        remoteDataSource: beersRemoteDataSource,
        localDataSource: beersLocalDataSource,
        networkInfo: networkInfo
    );
  });


  group('get beers', () {
    test('should check if device is online', () async {
      //arrange
      when(() => networkInfo.isConnected).thenAnswer((_) async =>  true);

      //act
      final result = await repository.getBeers();
      //assert
      verify(() => networkInfo.isConnected);
    });
    
    group('device is online', () {
      setUp((){
        when(() => networkInfo.isConnected).thenAnswer((_) async =>  true);
      });
      test('should return remote data when the call to remote data source is successful', () async {
        //arrange
        when(() => beersRemoteDataSource.getBeers()).thenAnswer((_) async => [tBeersDto]);
        //act
       final result =  await repository.getBeers();
        //assert
        verify(() => beersRemoteDataSource.getBeers());
        expect(result, const Right([tBeersDto]));
      });

      test('should cache data  locally when the call to remote data source is successful', () async {
        //arrange
        when(() => beersRemoteDataSource.getBeers()).thenAnswer((_) async => [tBeersDto]);
        //act
         await repository.getBeers();
        //assert
        verify(() => beersRemoteDataSource.getBeers());
        verify(() => beersLocalDataSource.insertBeers([tBeersEntity]));
      });

      test('should return server failure  when the call to remote data source is unsuccessful', () async {
        //arrange
        when(() => beersRemoteDataSource.getBeers()).thenThrow(ServerException(''));
        //act
        final result =  await repository.getBeers();
        //assert
        verify(() => beersRemoteDataSource.getBeers());
        verifyNoMoreInteractions(beersRemoteDataSource);
        expect(result, const Left(ServerFailure('')));
      });

    });

    group('device is offline', () {
      setUp((){
        when(() => networkInfo.isConnected).thenAnswer((_) async =>  false);
      });

      test('should return local data when the cache data is present', () async {
        //arrange
        when(() => beersLocalDataSource.getBeers()).thenAnswer((_) async => [tBeers]);
        //act
        final result =  await repository.getBeers();
        //assert
        verify(() => beersLocalDataSource.getBeers());
        verifyNoMoreInteractions(beersRemoteDataSource);
        expect(result, const Right([tBeersDto]));
      });

      test('should return local data failure the cache data is not present', () async {
        //arrange
        when(() => beersLocalDataSource.getBeers()).thenThrow(DatabaseException(''));
        //act
        final result =  await repository.getBeers();
        //assert
        verify(() => beersLocalDataSource.getBeers());
        verifyNoMoreInteractions(beersRemoteDataSource);
        expect(result, const Left(DatabaseFailure('')));
      });

    });
  });

}