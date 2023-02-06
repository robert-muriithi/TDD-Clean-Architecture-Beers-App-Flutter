import 'package:beers_flutter/core/error/exception.dart';
import 'package:beers_flutter/core/utils/constants.dart';
import 'package:beers_flutter/features/beers/data/model/beers_response.dart';

import '../../../domain/model/beers.dart';
import 'package:dio/dio.dart';

abstract class BeersRemoteDataSource {
  Future<List<Beers>> getBeers();
  Future<Beers> getBeerById(int id);
}

class BeersRemoteDataSourceImpl implements BeersRemoteDataSource {
  final dio = Dio();

  @override
  Future<Beers> getBeerById(int id) async {
    try{
      final result = await dio.get('${Constants.kBaseUrl}/beers/$id');
      final beer = result.data;
      return BeersModel.fromJson(beer);
    }catch (e) {
      throw ServerException("Can't get beer by id");
    }
  }

  @override
  Future<List<Beers>> getBeers() async{
    final response = await dio.get('${Constants.kBaseUrl}/beers');
    final beers = response.data;
    return beers.map((e) => BeersModel.fromJson(e)).toList();
  }

}