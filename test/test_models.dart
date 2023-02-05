import 'package:beers_flutter/features/beers/domain/model/beers.dart';

// Test beers model
const tBeers = Beers(
  id: '1',
  name: 'Beer 1',
  tagline: 'Tagline 1',
  firstBrewed: 'First Brewed 1',
  description: 'Description 1',
  imageUrl: 'Image Url 1',
  abv: 1.0,
  ibu: 1.0,
  targetFg: 1.0,
  targetOg: 1.0,
  ebc: 1.0,
  srm: 1.0,
  ph: 1.0,
  attenuationLevel: 1.0,
  volume: Volume(value: 1.0, unit: 'Unit 1'),
  boilVolume: BoilVolume(value: 1.0, unit: 'Unit 1'),
  method: Method(
      mashTemp: MashTemp(temp: 54.8, duration: 1),
      fermentation: Fermentation(temp: 6.7),
      twist: 'Twist 1'),
  ingredients: Ingredients(
      malt: Malt(name: 'Some malt', amount: 12.6),
      hops: Hops(
          name: 'Some name',
          amount: 12.4,
          add: 'Something',
          attribute: 'Something'),
      yeast: 'Some yeast'),
  foodPairing: ['Food Pairing 1', 'Food Pairing 2'],
  brewersTips: 'Brewers Tips 1',
  contributedBy: 'Contributed By 1',
);
