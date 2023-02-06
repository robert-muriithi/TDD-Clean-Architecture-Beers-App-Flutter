import 'package:beers_flutter/features/beers/domain/model/beers.dart';

class BeersModel extends Beers {
  const BeersModel({
    required int id,
    required String name,
    required String tagline,
    required String firstBrewed,
    required String description,
    required String imageUrl,
    required double abv,
    required double ibu,
    required double targetFg,
    required double targetOg,
    required double ebc,
    required double srm,
    required double ph,
    required double attenuationLevel,
    required Volume volume,
    required BoilVolume boilVolume,
/*    required Method method,
    required Ingredients ingredients,*/
    required List<String> foodPairing,
    required String brewersTips,
    required String contributedBy,
  }) : super(
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


  factory BeersModel.fromJson(Map<String, dynamic> json) {
    return BeersModel(
      id: json['id'],
      name: json['name'] as String,
      tagline: json['tagline'] as String,
      firstBrewed: json['first_brewed'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
      abv: (json['abv'] as num).toDouble(),
      ibu: (json['ibu'] as num).toDouble(),
      targetFg: (json['target_fg'] as num).toDouble(),
      targetOg: (json['target_og'] as num).toDouble(),
      ebc: (json['ebc'] as num).toDouble(),
      srm: (json['srm'] as num).toDouble(),
      ph: (json['ph'] as num).toDouble(),
      attenuationLevel: (json['attenuation_level'] as num).toDouble(),
      volume: VolumeModel.fromJson(json['volume'] as Map<String, dynamic>),
      boilVolume: BoilVolumeModel.fromJson(json['boil_volume'] as Map<String, dynamic>),
      /*method: MethodModel.fromJson(json['method'] as Map<String, dynamic>),
      ingredients: IngredientsModel.fromJson(json['ingredients'] as Map<String, dynamic>),*/
      foodPairing: (json['food_pairing'] as List<dynamic>).map((e) => e as String).toList(),
      brewersTips: json['brewers_tips'] as String,
      contributedBy: json['contributed_by'] as String,
    );
  }

}

class VolumeModel extends Volume {
  const VolumeModel({
    required double value,
    required String unit,
  }) : super(
    value: value,
    unit: unit,
  );

  factory VolumeModel.fromJson(Map<String, dynamic> json) {
    return VolumeModel(
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );
  }
}

class BoilVolumeModel extends BoilVolume {
  const BoilVolumeModel({
    required double value,
    required String unit,
  }) : super(
    value: value,
    unit: unit,
  );

  factory BoilVolumeModel.fromJson(Map<String, dynamic> json) {
    return BoilVolumeModel(
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );
  }
}

class MethodModel extends Method {
  const MethodModel({
    required List<MashTemp> mashTemp,
    required Fermentation fermentation,
    required String? twist,
  }) : super(
    mashTemp: mashTemp,
    fermentation: fermentation,
    twist: twist,
  );

  factory MethodModel.fromJson(Map<String, dynamic> json) {
    return MethodModel(
      mashTemp: (json['mash_temp'] as List<dynamic>).map((e) => MashTempModel.fromJson(e as Map<String, dynamic>)).toList(),
      fermentation: FermentationModel.fromJson(json['fermentation'] as Map<String, dynamic>),
      twist: json['twist'] as String?,
    );
  }
}

class MashTempModel extends MashTemp {
  const MashTempModel({
    required TempModel temp,
    required int? duration,
  }) : super(
    temp: temp,
    duration: duration,
  );

  factory MashTempModel.fromJson(Map<String, dynamic> json) {
    return MashTempModel(
      temp: TempModel.fromJson(json['temp'] as Map<String, dynamic>),
      duration: json['duration'] as int?,
    );
  }
}

class TempModel extends Temp {
  const TempModel({
    required double value,
    required String unit,
  }) : super(
    value: value,
    unit: unit,
  );

  factory TempModel.fromJson(Map<String, dynamic> json) {
    return TempModel(
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );
  }
}

class FermentationModel extends Fermentation {
  const FermentationModel({
    required TempModel temp,
  }) : super(
    temp: temp,
  );

  factory FermentationModel.fromJson(Map<String, dynamic> json) {
    return FermentationModel(
      temp: TempModel.fromJson(json['temp'] as Map<String, dynamic>),
    );
  }
}

class IngredientsModel extends Ingredients {
  const IngredientsModel({
    required List<Malt> malt,
    required List<Hops> hops,
    required String yeast,
  }) : super(
    malt: malt,
    hops: hops,
    yeast: yeast,
  );

  factory IngredientsModel.fromJson(Map<String, dynamic> json) {
    return IngredientsModel(
      malt: (json['malt'] as List<dynamic>).map((e) => MaltModel.fromJson(e as Map<String, dynamic>)).toList(),
      hops: (json['hops'] as List<dynamic>).map((e) => HopsModel.fromJson(e as Map<String, dynamic>)).toList(),
      yeast: json['yeast'] as String,
    );
  }
}

class MaltModel extends Malt {
  const MaltModel({
    required String name,
    required AmountModel amount,
  }) : super(
    name: name,
    amount: amount,
  );

  factory MaltModel.fromJson(Map<String, dynamic> json) {
    return MaltModel(
      name: json['name'] as String,
      amount: AmountModel.fromJson(json['amount'] as Map<String, dynamic>),
    );
  }
}

class HopsModel extends Hops {
  const HopsModel({
    required String name,
    required AmountModel amount,
    required String add,
    required String attribute,
  }) : super(
    name: name,
    amount: amount,
    add: add,
    attribute: attribute,
  );

  factory HopsModel.fromJson(Map<String, dynamic> json) {
    return HopsModel(
      name: json['name'] as String,
      amount: AmountModel.fromJson(json['amount'] as Map<String, dynamic>),
      add: json['add'] as String,
      attribute: json['attribute'] as String,
    );
  }
}

class AmountModel extends Amount {
  const AmountModel({
    required double value,
    required String unit,
  }) : super(
    value: value,
    unit: unit,
  );

  factory AmountModel.fromJson(Map<String, dynamic> json) {
    return AmountModel(
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );
  }
}





