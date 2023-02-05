import 'package:equatable/equatable.dart';

class Beers extends Equatable {

  final String id;
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
  final Method method;
  final Ingredients ingredients;
  final List<String> foodPairing;
  final String brewersTips;
  final String contributedBy;

  const Beers({
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
    required this.method,
    required this.ingredients,
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
    method,
    ingredients,
    foodPairing,
    brewersTips,
    contributedBy,
  ];

}


class Volume extends Equatable {
  final double value;
  final String unit;

  const Volume({
    required this.value,
    required this.unit,
  });

  @override
  List<Object?> get props => [
    value,
    unit,
  ];
}

class BoilVolume extends Equatable {
  final double value;
  final String unit;

  const BoilVolume({
    required this.value,
    required this.unit,
  });

  @override
  List<Object?> get props => [
    value,
    unit,
  ];
}


class Method extends Equatable {
  final MashTemp mashTemp;
  final Fermentation fermentation;
  final String twist;

  const Method({
    required this.mashTemp,
    required this.fermentation,
    required this.twist,
  });

  @override
  List<Object?> get props => [
    mashTemp,
    fermentation,
    twist,
  ];
}

class MashTemp extends Equatable {
  final double temp;
  final int duration;

  const MashTemp({
    required this.temp,
    required this.duration,
  });

  @override
  List<Object?> get props => [
    temp,
    duration,
  ];
}

class Fermentation extends Equatable {
  final double temp;

  const Fermentation({
    required this.temp,
  });

  @override
  List<Object?> get props => [
    temp,
  ];
}

class Ingredients extends Equatable {
  final Malt malt;
  final Hops hops;
  final String yeast;

  const Ingredients({
    required this.malt,
    required this.hops,
    required this.yeast,
  });

  @override
  List<Object?> get props => [
    malt,
    hops,
    yeast,
  ];
}

class Malt extends Equatable {
  final String name;
  final double amount;

  const Malt({
    required this.name,
    required this.amount,
  });

  @override
  List<Object?> get props => [
    name,
    amount,
  ];
}

class Hops extends Equatable {
  final String name;
  final double amount;
  final String add;
  final String attribute;

  const Hops({
    required this.name,
    required this.amount,
    required this.add,
    required this.attribute,
  });

  @override
  List<Object?> get props => [
    name,
    amount,
    add,
    attribute,
  ];
}



