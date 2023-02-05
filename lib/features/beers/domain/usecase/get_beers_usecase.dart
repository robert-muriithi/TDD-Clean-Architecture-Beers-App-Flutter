
import 'package:beers_flutter/core/error/failure.dart';
import 'package:beers_flutter/core/usecase/usecase.dart';
import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:dartz/dartz.dart';
import '../repository/beers_repository.dart';


class GetBeersUseCase implements UseCase<List<Beers>, NoParams> {
  final BeersRepository beersRepository;
  GetBeersUseCase(this.beersRepository);

  @override
  Future<Either<Failure, List<Beers>>> call(NoParams params,) async {
    return await beersRepository.getBeers();
  }
}


