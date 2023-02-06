import 'dart:convert';

import 'package:beers_flutter/features/beers/data/model/beers_response.dart';
import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../../fixture/beers.dart';
import '../../../../fixture/fixture_reader.dart';

void main(){

  test('should be a sub class of beers model', () async {
    expect(tBeersDto, isA<Beers>());
  });
  
  group('fromJson', () {
    test('should return a valid model when the JSON is correct', () async {
      //arrange
      final jsonMap = json.decode(fixture('beer.json'));
      // act
      final result = BeersModel.fromJson(jsonMap);
      // assert
      expect(result, isA<BeersModel>());
    });
  });
}