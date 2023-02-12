import 'package:equatable/equatable.dart';

import '../../data/datasources/local/entity/beers_entity.dart';

class Beers extends Equatable {
  final int id;
  final String name;
  final String tagline;
  final String firstBrewed;
  final String description;
  final String imageUrl;
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

  BeersEntity  toEntity() {
    return BeersEntity(
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



