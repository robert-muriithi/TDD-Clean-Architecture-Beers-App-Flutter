import 'package:floor/floor.dart';

import '../entity/beers_entity.dart';

@dao
abstract class BeersDao {
  @Query('SELECT * FROM beers')
  Future<List<BeersEntity>> getBeers();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertBeers(List<BeersEntity> beer);

  @delete
  Future<void> deleteBeer();
}