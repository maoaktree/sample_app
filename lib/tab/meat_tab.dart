import 'package:flutter/material.dart';
import 'package:sample_app/util/fruits_tile.dart';

class MeatTab extends StatelessWidget {
  // list of fruits
  List meatsOnSale = [
// [meatsType, meatsPrice, meatsColor, imageName]

    [
      "Hamburguer",
      "12",
      Colors.red,
      "lib/images/hamburguer.png",
      'Meat',
      '4.9'
    ],
    ["Chicken", "9", Colors.pink, "lib/images/chicken2.png", 'Meat', '5.0'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: meatsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return FruitsTile(
          fruitsType: meatsOnSale[index][0],
          fruitsPrice: meatsOnSale[index][1],
          fruitsColor: meatsOnSale[index][2],
          imageName: meatsOnSale[index][3],
          productType: meatsOnSale[index][4],
          itemRating: meatsOnSale[index][5],
        );
      },
    );
  }
}
