import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../model/beers.dart';
import '../repository/beers_repository.dart';

/*
class GetBeerByNameUseCase implements UseCase<Beers, Params> {
  final BeersRepository repository;

  GetBeerByNameUseCase(this.repository);

  @override
  Future<Either<Failure, Beers>> call(Params params) async {
    return await repository.getBeerByName(params.id);
  }
}

class Params extends Equatable {
  final int id;

  const Params(this.id);

  @override
  List<Object?> get props => [id];
}*/
