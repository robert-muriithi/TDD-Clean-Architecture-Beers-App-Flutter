import 'package:equatable/equatable.dart';

import '../../data/datasources/local/entity/beers_entity.dart';

class Beers extends Equatable {
  final int id;
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
    /*required this.method,
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
    /*method,
    ingredients,*/
    foodPairing,
    brewersTips,
    contributedBy,
  ];

  BeersEntity  toEntity() {
    return BeersEntity(
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

/*  factory Beers.fromJson(Map<String, dynamic> json) {
    return Beers(
      id: json['id'],
      name: json['name'],
      tagline: json['tagline'],
      firstBrewed: json['first_brewed'],
      description: json['description'],
      imageUrl: json['image_url'],
      abv: json['abv'],
      ibu: json['ibu'],
      targetFg: json['target_fg'],
      targetOg: json['target_og'],
      ebc: json['ebc'],
      srm: json['srm'],
      ph: json['ph'],
      attenuationLevel: json['attenuation_level'],
      volume: Volume.fromJson(json['volume']),
      boilVolume: BoilVolume.fromJson(json['boil_volume']),
      method: Method.fromJson(json['method']),
      ingredients: Ingredients.fromJson(json['ingredients']),
      foodPairing: List<String>.from(json['food_pairing'].map((x) => x)),
      brewersTips: json['brewers_tips'],
      contributedBy: json['contributed_by'],
    );
  }*/

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
/*
  factory Volume.fromJson(Map<String, dynamic> json) {
    return Volume(
      value: json['value'] as double,
      unit: json['unit'] as String,
    );
  }*/
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
/*
  factory BoilVolume.fromJson(Map<String, dynamic> json) {
    return BoilVolume(
      value: json['value'] as double,
      unit: json['unit'] as String,
    );
  }*/
}


class Method extends Equatable {
  final List<MashTemp> mashTemp;
  final Fermentation fermentation;
  final String? twist;

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

/*  factory Method.fromJson(Map<String, dynamic> json) {
    return Method(
      mashTemp: MashTemp.fromJson(json['mash_temp'] as Map<String, dynamic>),
      fermentation: Fermentation.fromJson(json['fermentation'] as Map<String, dynamic>),
      twist: json['twist'] as String,
    );
  }*/
}

class MashTemp extends Equatable {
  final Temp temp;
  final int? duration;

  const MashTemp({
    required this.temp,
    required this.duration,
  });

  @override
  List<Object?> get props => [
    temp,
    duration,
  ];
/*
  factory MashTemp.fromJson(Map<String, dynamic> json) {
    return MashTemp(
      temp: json['temp'] as double,
      duration: json['duration'] as int,
    );
  }*/
}

class Temp extends Equatable {
  final double value;
  final String unit;

  const Temp({
    required this.value,
    required this.unit,
  });

  @override
  List<Object?> get props =>
      [
        value,
        unit,
      ];
}

class Fermentation extends Equatable {
  final Temp temp;

  const Fermentation({
    required this.temp,
  });

  @override
  List<Object?> get props => [
    temp,
  ];

/*  factory Fermentation.fromJson(Map<String, dynamic> json) {
    return Fermentation(
      temp: json['temp'] as double,
    );
  }*/
}

class Ingredients extends Equatable {
  final List<Malt> malt;
  final List<Hops> hops;
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

 /* factory Ingredients.fromJson(Map<String, dynamic> json) {
    return Ingredients(
      malt: Malt.fromJson(json['malt'] as Map<String, dynamic>),
      hops: Hops.fromJson(json['hops'] as Map<String, dynamic>),
      yeast: json['yeast'] as String,
    );
  }*/
}

class Malt extends Equatable {
  final String name;
  final Amount amount;

  const Malt({
    required this.name,
    required this.amount,
  });

  @override
  List<Object?> get props => [
    name,
    amount,
  ];

/*  factory Malt.fromJson(Map<String, dynamic> json) {
    return Malt(
      name: json['name'] as String,
      amount: json['amount'] as double,
    );
  }*/
}

class Hops extends Equatable {
  final String name;
  final Amount amount;
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
/*
  factory Hops.fromJson(Map<String, dynamic> json) {
    return Hops(
      name: json['name'] as String,
      amount: json['amount'] as double,
      add: json['add'] as String,
      attribute: json['attribute'] as String,
    );
  }*/
}

class Amount extends Equatable {
  final double value;
  final String unit;

  const Amount({
    required this.value,
    required this.unit,
  });

  @override
  List<Object?> get props =>
      [
        value,
        unit,
      ];
}



