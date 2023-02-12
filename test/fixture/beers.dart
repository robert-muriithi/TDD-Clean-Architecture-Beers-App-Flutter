import 'package:beers_flutter/features/beers/data/datasources/local/entity/beers_entity.dart';
import 'package:beers_flutter/features/beers/data/model/beers_response.dart';
import 'package:beers_flutter/features/beers/domain/model/beers.dart';

// Test beers model
const tBeers = Beers(
  id: 1,
  name: 'Beer 1',
  tagline: 'Tagline 1',
  firstBrewed: 'First Brewed 1',
  description: 'Description 1',
  imageUrl: 'Image Url 1',
  foodPairing: ['Food Pairing 1', 'Food Pairing 2'],
  brewersTips: 'Brewers Tips 1',
  contributedBy: 'Contributed By 1',
);


// Test beers model

const tBeersDto = BeersModel(
  id: 1,
  name: 'Beer 1',
  tagline: 'Tagline 1',
  firstBrewed: 'First Brewed 1',
  description: 'Description 1',
  imageUrl: 'Image Url 1',
  foodPairing: ['Food Pairing 1', 'Food Pairing 2'],
  brewersTips: 'Brewers Tips 1',
  contributedBy: 'Contributed By 1',
);

const tBeersEntity = BeersEntity(
  id: 1,
  name: 'Beer 1',
  tagline: 'Tagline 1',
  firstBrewed: 'First Brewed 1',
  description: 'Description 1',
  imageUrl: 'Image Url 1',
  foodPairing: ['Food Pairing 1', 'Food Pairing 2'],
  brewersTips: 'Brewers Tips 1',
  contributedBy: 'Contributed By 1',
);


final tHasConnectionFuture = Future.value(true);
final tHasNoConnectionFuture = Future.value(false);