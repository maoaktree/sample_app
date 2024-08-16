import 'package:flutter/material.dart';
import 'package:sample_app/util/fruits_tile.dart';

class MeatTab extends StatelessWidget {
  // list of fruits
  List fruitsOnSale = [
// [fruitsType, fruitsPrice, fruitsColor, imageName]

    ["Grape", "9", Colors.purple, "lib/images/orange.png"],
    ["Blueberry", "6", Colors.blue, "lib/images/orange.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: fruitsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return FruitsTile(
          fruitsType: fruitsOnSale[index][0],
          fruitsPrice: fruitsOnSale[index][1],
          fruitsColor: fruitsOnSale[index][2],
          imageName: fruitsOnSale[index][3],
        );
      },
    );
  }
}
