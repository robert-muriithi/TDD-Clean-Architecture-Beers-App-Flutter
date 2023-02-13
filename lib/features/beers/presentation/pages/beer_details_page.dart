import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:flutter/material.dart';

class BeerDetailsPage extends StatelessWidget {
  final Beers beer;
  const BeerDetailsPage({Key? key, required this.beer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(beer.name),
      ),
      body: Column(
        children: [
          Container(
              height: 200,
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.grey.withOpacity(0.2),
              child: Expanded(child: Image.network(beer.imageUrl))
          ),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(beer.tagline)
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
               decoration: BoxDecoration(
                 color: Colors.brown.withOpacity(0.2),
                 borderRadius: BorderRadius.circular(5.0),
               ),
              padding: const EdgeInsets.all(10.0),
              child: Text(beer.description, textAlign: TextAlign.justify,)),
        ],
      ),
    );
  }
}
