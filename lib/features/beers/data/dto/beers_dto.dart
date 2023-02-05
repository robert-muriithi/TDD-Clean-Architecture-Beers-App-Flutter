import 'package:equatable/equatable.dart';

class BeersDto extends Equatable {

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
  final VolumeDto volume;
  final BoilVolumeDto boilVolume;
  final MethodDto method;
  final IngredientsDto ingredients;
  final List<String> foodPairing;
  final String brewersTips;
  final String contributedBy;

  const BeersDto({
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


class VolumeDto extends Equatable {
  final double value;
  final String unit;

  const VolumeDto({
    required this.value,
    required this.unit,
  });

  @override
  List<Object?> get props => [
    value,
    unit,
  ];
}

class BoilVolumeDto extends Equatable {
  final double value;
  final String unit;

  const BoilVolumeDto({
    required this.value,
    required this.unit,
  });

  @override
  List<Object?> get props => [
    value,
    unit,
  ];
}


class MethodDto extends Equatable {
  final MashTempDto mashTemp;
  final FermentationDto fermentation;
  final String twist;

  const MethodDto({
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

class MashTempDto extends Equatable {
  final double temp;
  final int duration;

  const MashTempDto({
    required this.temp,
    required this.duration,
  });

  @override
  List<Object?> get props => [
    temp,
    duration,
  ];
}

class FermentationDto extends Equatable {
  final double temp;

  const FermentationDto({
    required this.temp,
  });

  @override
  List<Object?> get props => [
    temp,
  ];
}

class IngredientsDto extends Equatable {
  final MaltDto malt;
  final HopsDto hops;
  final String yeast;

  const IngredientsDto({
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

class MaltDto extends Equatable {
  final String name;
  final double amount;

  const MaltDto({
    required this.name,
    required this.amount,
  });

  @override
  List<Object?> get props => [
    name,
    amount,
  ];
}

class HopsDto extends Equatable {
  final String name;
  final double amount;
  final String add;
  final String attribute;

  const HopsDto({
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



