import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:floor/floor.dart';

class BoilVolumeTypeConverter extends TypeConverter<BoilVolume, String>{
  @override
  BoilVolume decode(String databaseValue) {
    final List<String> results = databaseValue.split(',');
    return BoilVolume(
      value: double.parse(results[0]),
      unit: results[1],
    );
  }

  @override
  String encode(BoilVolume value) {
    final String result = '${value.value},${value.unit}';
    return result;
  }
}