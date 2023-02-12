import 'package:beers_flutter/core/error/failure.dart';
import 'package:beers_flutter/core/usecase/usecase.dart';
import 'package:beers_flutter/core/utils/constants.dart';
import 'package:beers_flutter/features/beers/domain/usecase/get_beers_usecase.dart';
import 'package:beers_flutter/features/beers/presentation/bloc/beers_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/beers.dart';

class MockGetBeersUseCase extends Mock implements GetBeersUseCase {}
class MockNoParams extends Mock implements NoParams {}
class MockFailure extends Mock implements Failure {}
class MockBeersEvent extends Mock implements BeersEvent {}

void main () {
  late MockGetBeersUseCase mockGetBeersUseCase;
  late MockNoParams mockNoParams;
  late BeersBloc beersBloc;

  setUp(() {
    mockGetBeersUseCase = MockGetBeersUseCase();
    beersBloc = BeersBloc(mockGetBeersUseCase);
    mockNoParams = MockNoParams();
    registerFallbackValue(tBeers);
  });
  
  test('initial state is InitialState', (){
    //assert
    expect(beersBloc.state, BeersInitial());
  });

  test('should return unexpected error if unexpected event is called', () {
    // arrange
    final expected = [
      const BeersError(message: Constants.UNEXPECTED_FAILURE_MESSAGE)
    ];

    // assert later
    expectLater(beersBloc.stream, emitsInOrder(expected));

    // act
    beersBloc.add(MockBeersEvent());
  });

  group('getBeersEvent', () {
    test('should emit a BeersLoading state when invoked', () async {
      //arrange
      when(() => mockGetBeersUseCase(MockNoParams()))
          .thenAnswer((_)  async => const Right([]));
      final expected = [
        BeersLoading()
      ];

      //assert later
      expectLater(beersBloc.stream, emitsInOrder(expected));

      //act
      beersBloc.add(GetBeersEvent());

    });

  });


}