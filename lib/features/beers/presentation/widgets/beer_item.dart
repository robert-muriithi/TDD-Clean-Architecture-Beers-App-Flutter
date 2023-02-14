import 'package:beers_flutter/features/beers/domain/model/beers.dart';
import 'package:beers_flutter/features/beers/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BeerItem extends StatelessWidget {
   BeerItem({Key? key, required this.beer}) : super(key: key);
  final Beers beer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.0),
      onTap: (){
          Navigator.pushNamed(
              context,
              Routes.beerDetails,
              arguments: beer
          );
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown,
                      ),
                      child: Text(beer.id.toString(), style: const TextStyle(color: Colors.white)),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.brown.withOpacity(0.2)
                      ),
                      child: Text(beer.firstBrewed),
                    ),

                  ],
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: CachedNetworkImage(
                      imageUrl: beer.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(beer.name, maxLines: 1,)
                ),
              ],
            ),
      ),
    );
  }
}
