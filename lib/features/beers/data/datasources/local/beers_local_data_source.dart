import 'package:beers_flutter/core/database/beers_database.dart';

import '../../../../../core/error/exception.dart';
import '../../../domain/model/beers.dart';
import 'entity/beers_entity.dart';

abstract class BeersLocalDataSource {
  Future<List<Beers>> getBeers();
  Future<void> insertBeers(List<BeersEntity> beers);
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
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<bool> insertBeers(List<BeersEntity> beers) {
    try{
      final beersDao = database.beersDao;
     // final result = beersDao.insertBeers(beers.map((e) => e.toEntity()).toList());
      beersDao.insertBeers(beers);
      return Future.value(true);
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<void> deleteBeers() async {
    try{
      final beersDao = database.beersDao;
      final result = await beersDao.deleteAllBeers();
      return result;
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

}