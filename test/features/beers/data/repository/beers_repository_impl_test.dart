

import 'package:beers_flutter/core/platform/network_info.dart';
import 'package:beers_flutter/features/beers/data/datasources/local/beers_local_data_source.dart';
import 'package:beers_flutter/features/beers/data/datasources/remote/beers_remote_data_source.dart';
import 'package:beers_flutter/features/beers/data/repository/beers_repository_impl.dart';
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

  group('no internet connected', (){
    setUp(() {
      when(() => networkInfo.isConnected).thenAnswer((_) async => false);
      registerFallbackValue(tBeersDto);
    });

    group('get beers', () {
      test('should get beers from local data source when internet connection is not available', () {
        // arrange
        when(() => beersLocalDataSource.getBeers()).thenAnswer((_) async => [tBeersDto]);

        // act
        final result = repository.getBeers();

        // assert
        verify(() => beersLocalDataSource.getBeers());
      });
    });
  });

}