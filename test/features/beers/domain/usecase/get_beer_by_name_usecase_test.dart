import 'package:beers_flutter/features/beers/domain/repository/beers_repository.dart';
import 'package:beers_flutter/features/beers/domain/usecase/get_beer_by_name_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/beers.dart';

class MockGetBeerByName extends Mock implements BeersRepository {}

void main(){
  late BeersRepository beersRepository;
  late GetBeerByNameUseCase getBeersByNameUseCase;

  setUp((){
    beersRepository = MockGetBeerByName();
    getBeersByNameUseCase = GetBeerByNameUseCase(beersRepository);
  });
  const String beerName = 'Balozi';

  test('should get beer by name from the beers repository', () async {
    //arrange
    when(() => beersRepository.getBeerByName(beerName)).thenAnswer((_) async => const Right(tBeers));

    //assert
    final result = await getBeersByNameUseCase(const Params(beerName));

    //act
    expect(result, const Right(tBeers));
    verify(() => beersRepository.getBeerByName(beerName));
    verifyNoMoreInteractions(beersRepository);
  });

}
