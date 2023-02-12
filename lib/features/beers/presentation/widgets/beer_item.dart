import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:flutter/material.dart';

class BeerItem extends StatelessWidget {
  const BeerItem({Key? key, required this.beer}) : super(key: key);
  final Beers beer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(child: Image.network(beer.imageUrl, fit: BoxFit.cover, ),
          ),
          Text(beer.name),
        ],
      ),
    );
  }
}
