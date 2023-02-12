import 'package:floor/floor.dart';

import '../../../../../../core/utils/constants.dart';
import '../entity/beers_entity.dart';

@dao
abstract class BeersDao {
  @Query('SELECT * FROM ${Constants.kBeersTableName}')
  Future<List<BeersEntity>> getBeers();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertBeers(List<BeersEntity> beer);

  @Query('DELETE FROM ${Constants.kBeersTableName}')
  Future<void> deleteAllBeers();
 }