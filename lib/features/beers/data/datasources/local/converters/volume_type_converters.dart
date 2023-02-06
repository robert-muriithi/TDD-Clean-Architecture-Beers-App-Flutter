

import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:floor/floor.dart';

class VolumeTypeConverter extends TypeConverter<Volume, String>{
  @override
  Volume decode(String databaseValue) {
    final List<String> results = databaseValue.split(',');
    return Volume(
      value: double.parse(results[0]),
      unit: results[1],
    );
  }

  @override
  String encode(Volume value) {
    final String result = '${value.value},${value.unit}';
    return result;
  }
}