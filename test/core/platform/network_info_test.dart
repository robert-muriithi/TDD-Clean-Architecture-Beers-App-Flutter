import 'dart:math';

import 'package:beers_flutter/core/platform/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mocktail/mocktail.dart';

import '../../fixture/beers.dart';

class MockInternetConnectionChecker extends Mock implements InternetConnectionChecker {}

void main() {
  late NetworkInfoImpl networkInfoImpl;
  late MockInternetConnectionChecker mockInternetConnectionChecker;

  setUp(() {
    mockInternetConnectionChecker = MockInternetConnectionChecker();
    networkInfoImpl = NetworkInfoImpl(mockInternetConnectionChecker);
  });

  group('isConnected', () { 
    test('should forward the call to internetConnectionChecker.hasConnection', () async {
      //arrange
      when(() => mockInternetConnectionChecker.hasConnection).thenAnswer((_) async  => tHasConnectionFuture);
      //act
      final result = await networkInfoImpl.isConnected;
      //assert
      verify(() => mockInternetConnectionChecker.hasConnection);
      expect(result, true);
    });
  });

}
