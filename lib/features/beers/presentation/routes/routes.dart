import 'package:flutter/cupertino.dart';

import '../../domain/model/beers.dart';
import '../pages/beer_details_page.dart';
import '../pages/beers_page.dart';

class Routes {
  static const String beers = '/';
  static const String beerDetails = '/beer_details';

  static const initialRoute = beers;

  static final Map<String, WidgetBuilder> routes = {
    beers: (context) => BeersPage(),
    beerDetails: (context) => BeerDetailsPage(
          beer: ModalRoute.of(context)!.settings.arguments as Beers,
        )
  };
}
