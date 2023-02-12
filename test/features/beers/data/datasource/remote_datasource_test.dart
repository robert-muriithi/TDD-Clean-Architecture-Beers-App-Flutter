
import 'package:beers_flutter/features/beers/data/datasources/remote/beers_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late MockDioClient mockDioClient;
  late BeersRemoteDataSourceImpl beersRemoteDataSourceImpl;

  setUp(() {
    mockDioClient = MockDioClient();
    beersRemoteDataSourceImpl = BeersRemoteDataSourceImpl(dio: mockDioClient);
  });

}