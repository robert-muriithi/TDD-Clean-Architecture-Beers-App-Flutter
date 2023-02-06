import 'package:beers_flutter/core/utils/constants.dart';
import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@Entity(tableName: Constants.kBeersTableName)
class BeersEntity extends Equatable {
  @primaryKey final int id;
  final String name;
  final String tagline;
  final String firstBrewed;
  final String description;
  final String imageUrl;
  final double abv;
  final double ibu;
  final double targetFg;
  final double targetOg;
  final double ebc;
  final double srm;
  final double ph;
  final double attenuationLevel;
  final Volume volume;
  final BoilVolume boilVolume;
  /*final Method method;
  final Ingredients ingredients;*/
  final List<String> foodPairing;
  final String brewersTips;
  final String contributedBy;

  const BeersEntity({
    required this.id,
    required this.name,
    required this.tagline,
    required this.firstBrewed,
    required this.description,
    required this.imageUrl,
    required this.abv,
    required this.ibu,
    required this.targetFg,
    required this.targetOg,
    required this.ebc,
    required this.srm,
    required this.ph,
    required this.attenuationLevel,
    required this.volume,
    required this.boilVolume,
   /* required this.method,
    required this.ingredients,*/
    required this.foodPairing,
    required this.brewersTips,
    required this.contributedBy,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    tagline,
    firstBrewed,
    description,
    imageUrl,
    abv,
    ibu,
    targetFg,
    targetOg,
    ebc,
    srm,
    ph,
    attenuationLevel,
    volume,
    boilVolume,
   /* method,
    ingredients,*/
    foodPairing,
    brewersTips,
    contributedBy,
  ];

 Beers toDomain() {
    return Beers(
      id: id,
      name: name,
      tagline: tagline,
      firstBrewed: firstBrewed,
      description: description,
      imageUrl: imageUrl,
      abv: abv,
      ibu: ibu,
      targetFg: targetFg,
      targetOg: targetOg,
      ebc: ebc,
      srm: srm,
      ph: ph,
      attenuationLevel: attenuationLevel,
      volume: volume,
      boilVolume: boilVolume,
      /*method: method,
      ingredients: ingredients,*/
      foodPairing: foodPairing,
      brewersTips: brewersTips,
      contributedBy: contributedBy,
    );
  }
}