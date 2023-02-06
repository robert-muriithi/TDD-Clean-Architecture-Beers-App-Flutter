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
/*  method: Method(
      mashTemp: [
        MashTemp(temp: Temp(value: 1.0, unit: 'Unit 1'), duration: 1)
      ],
      fermentation: Fermentation(temp: Temp(value: 1.0, unit: 'Unit 1')),
      twist: 'Twist 1'),
  ingredients: Ingredients(
      malt: [
        Malt(name: 'Name 1', amount: Amount(value: 1.0, unit: 'Unit 1'))
      ],
      hops: [
        Hops(
            name: 'Name 1',
            amount: Amount(value: 1.0, unit: 'Unit 1'),
            add: 'Add 1',
            attribute: 'Attribute 1')
      ],
      yeast: 'Some yeast'),*/
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
 /* method: Method(
      mashTemp: [
        MashTemp(temp: Temp(value: 1.0, unit: 'Unit 1'), duration: 1)
      ],
      fermentation: Fermentation(temp: Temp(value: 12.2, unit: 'Unit 1')),
      twist: 'Twist 1'),*/
  /*ingredients: Ingredients(
      malt: [
        Malt(name: 'Name 1', amount: Amount(value: 1.0, unit: 'Unit 1'))
      ],
      hops: [
        Hops(
            name: 'Name 1',
            amount: Amount(value: 1.0, unit: 'Unit 1'),
            add: 'Add 1',
            attribute: 'Attribute 1')
      ],
      yeast: 'Some yeast'),*/
  foodPairing: ['Food Pairing 1', 'Food Pairing 2'],
  brewersTips: 'Brewers Tips 1',
  contributedBy: 'Contributed By 1',
);

/*var beer = Beer(
    id: 55,
    name: "Amarillo - IPA Is Dead",
    tagline: "Single Hop India Pale Ale.",
    firstBrewed: "01/2013",
    description: "Citrus fruit. Lots of citrus fruit. Think blood orange, orange zest and grapefruit, tangerine and lemon; the fruit is balanced by floral notes in the most classic of new wave IPA hops. Amarillo adds a zesty, pithy character that sits beautifully alongside hints of toffee and honeycomb.",
    imageUrl: "https://images.punkapi.com/v2/55.png",
    abv: 7.2,
    ibu: 70,
    targetFg: 1012,
    targetOg: 1067,
    ebc: 30,
    srm: 15,
    ph: 4.4,
    attenuationLevel: 82.1,
    volume: Volume(value: 20, unit: "litres"),
    boilVolume: Volume(value: 25, unit: "litres"),
    method: Method(
        mashTemp: [
          MashTemp(temp: Temp(value: 65, unit: "celsius"), duration: null)
        ],
        fermentation: Fermentation(temp: Temp(value: 19, unit: "celsius")),
        twist: null
    ),
    ingredients: Ingredients(
        malt: [
          Malt(name: "Extra Pale", amount: Amount(value: 4.88, unit: "kilograms")),
          Malt(name: "Caramalt", amount: Amount(value: 0.31, unit: "kilograms")),
          Malt(name: "Dark Crystal", amount: Amount(value: 0.06, unit: "kilograms"))
        ],
        hops: [
          Hop(
              name: "Amarillo",
              amount: Amount(value: 20, unit: "grams"),
              add: "start",
              attribute: "bitter"),
          Hops(
              name: "Amarillo",
              amount: Amount(value: 25, unit: "grams"),
              add: "middle",
              attribute: "flavour"),
          Hop(
              name: "Amarillo",
              amount: Amount(value: 37.5, unit: "grams"),
              add: "end",
              attribute: "flavour"),
          Hop(
              name: "Amarillo",
              amount: Amount(value: 250, unit: "grams"),
              add: "dry hop",
              attribute: "aroma")
        ],
        yeast: "Wyeast 1056 - American Ale™"
    ),
    foodPairing: [
      "Bratwurst sausage with spicy mustard",
      "Fried American bacon with chilli flakes added to the top",
      "Dark chocolate chip cookies"
    ],
    brewersTips: "Use the freshest hops for the most impact. It seems obvious but in a single hop beer, you want the hops to be at their best.",
    contributedBy: "Sam Mason <samjbmason>"
);*/
