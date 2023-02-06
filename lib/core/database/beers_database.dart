import 'package:floor/floor.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../features/beers/data/datasources/local/converters/boil_volume_converters.dart';
import '../../features/beers/data/datasources/local/converters/food_pairings_type_converters.dart';
import '../../features/beers/data/datasources/local/converters/volume_type_converters.dart';
import '../../features/beers/data/datasources/local/dao/beers_dao.dart';
import '../../features/beers/data/datasources/local/entity/beers_entity.dart';

part 'beers_database.g.dart'; // the generated code will be there

@TypeConverters([VolumeTypeConverter, BoilVolumeTypeConverter, FoodPairingsTypeConverter])
@Database(version: 1, entities: [BeersEntity])
abstract class BeersDatabase extends FloorDatabase {
  BeersDao get beersDao;
}