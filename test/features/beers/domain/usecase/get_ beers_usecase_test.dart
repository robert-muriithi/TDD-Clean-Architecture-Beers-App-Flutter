
import 'package:beers_flutter/core/usecase/usecase.dart';
import 'package:beers_flutter/features/beers/domain/repository/beers_repository.dart';
import 'package:beers_flutter/features/beers/domain/usecase/get_beers_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../../test_models.dart';

class MockGetBeers extends Mock implements BeersRepository {}

void main() {
  late GetBeersUseCase getBeersUseCase;
  late BeersRepository beersRepository;
  late NoParams noParams;

  setUp(() {
    beersRepository = MockGetBeers();
    getBeersUseCase = GetBeersUseCase(beersRepository);
    noParams = NoParams();
  });

  test('should get beers from the repository', () async {
    // arrange
    when(() => beersRepository.getBeers()).thenAnswer((_) async => const Right([tBeers]));
    // act
    final result = await getBeersUseCase(noParams);
    // assert
    expect(result, const Right([tBeers]));
    verify(() => beersRepository.getBeers());
    verifyNoMoreInteractions(beersRepository);
  });
}



