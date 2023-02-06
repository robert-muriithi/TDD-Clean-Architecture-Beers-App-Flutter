import 'package:beers_flutter/core/database/beers_database.dart';

import '../../../../../core/error/exception.dart';
import '../../../domain/model/beers.dart';

abstract class BeersLocalDataSource {
  Future<List<Beers>> getBeers();
  Future<void> insertBeers(List<Beers> beers);
  Future<void> deleteBeers();
}

class BeersLocalDataSourceImpl implements BeersLocalDataSource {
  final BeersDatabase database;
  BeersLocalDataSourceImpl(this.database);

  @override
  Future<List<Beers>> getBeers() async {
    try{
      final beersDao = database.beersDao;
      final entity =  beersDao.getBeers();
      final result = entity.then((value) => value.map((e) => e.toDomain()).toList());
      return result;
    } catch (e) {
      throw DatabaseException("Can't get beers from database");
    }
  }

  @override
  Future<void> insertBeers(List<Beers> beers) {
    try{
      final beersDao = database.beersDao;
      final result = beersDao.insertBeers(beers.map((e) => e.toEntity()).toList());
      return result;
    } catch (e) {
      throw DatabaseException("Can't insert beers to database");
    }
  }

  @override
  Future<void> deleteBeers() {
    try{
      final beersDao = database.beersDao;
      final result = beersDao.deleteBeer();
      return result;
    } catch (e) {
      throw DatabaseException("Can't delete beers from database");
    }
  }

}