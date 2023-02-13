import 'package:flutter/material.dart';

import '../../domain/model/beers.dart';
import 'beer_item.dart';


class BeersListWidget extends StatelessWidget {
   BeersListWidget({Key? key, required this.beers}) : super(key: key);
  final List<Beers> beers;

  @override
  Widget build(BuildContext context) {
    if(beers.isEmpty) {
      return const Center(
        child: Text('No Beers found'),
      );
    }
    return GridView(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5
        ),
       children: [
         for (var beer in beers)
           BeerItem(beer: beer,)
       ]
    );

  }
}
