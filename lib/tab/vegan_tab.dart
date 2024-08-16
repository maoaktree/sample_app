import 'package:flutter/material.dart';
import 'package:sample_app/util/fruits_tile.dart';

class VeganTab extends StatelessWidget {
  // list of fruits
  List fruitsOnSale = [
// [fruitsType, fruitsPrice, fruitsColor, imageName]

    ["Orange", "3", Colors.orange, "lib/images/orange.png"],
    ["Broccoli", "5", Colors.green, "lib/images/orange.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: fruitsOnSale.length,
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
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
