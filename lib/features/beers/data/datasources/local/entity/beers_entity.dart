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
  final List<String> foodPairing;
  final String brewersTips;
  final String contributedBy;

  const BeersEntity( {
    required this.id,
    required this.name,
    required this.tagline,
    required this.firstBrewed,
    required this.description,
    required this.imageUrl,
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
      foodPairing: foodPairing,
      brewersTips: brewersTips,
      contributedBy: contributedBy,
    );
  }

  factory BeersEntity.toBeers(Beers beer) {
    return BeersEntity(
      id: beer.id,
      name: beer.name,
      imageUrl: beer.imageUrl,
        tagline: beer.tagline,
      firstBrewed: beer.firstBrewed,
      description: beer.description,
      foodPairing: beer.foodPairing,
      brewersTips: beer.brewersTips,
      contributedBy: beer.contributedBy,
    );
  }

}