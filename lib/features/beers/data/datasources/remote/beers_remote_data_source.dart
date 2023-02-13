import 'package:beers_flutter/core/error/exception.dart';
import 'package:beers_flutter/core/utils/constants.dart';
import 'package:beers_flutter/features/beers/data/model/beers_response.dart';
import 'package:logger/logger.dart';

import '../../../domain/model/beers.dart';
import 'package:dio/dio.dart';

abstract class BeersRemoteDataSource {
  Future<List<BeersModel>> getBeers();
/*  Future<Beers> getBeerById(int id);*/
}

class BeersRemoteDataSourceImpl implements BeersRemoteDataSource {
  final Dio dio;
  BeersRemoteDataSourceImpl({required this.dio});


  @override
  Future<List<BeersModel>> getBeers() async{
    final log = Logger();
    try{
      final result = await dio.get('${Constants.kBaseUrl}/beers');
      final beers = result.data as List;
      final data =  beers.map((e) => BeersModel.fromJson(e)).toList();
      return data;
    } catch (e) {
      throw ServerException(e.toString());
    }

  }
}