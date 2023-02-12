import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../model/beers.dart';

abstract class BeersRepository {
  Future<Either<Failure, List<Beers>>> getBeers();
  /*Future<Either<Failure, Beers>> getBeerByName(int id);*/
}