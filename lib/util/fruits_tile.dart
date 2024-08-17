import 'package:flutter/material.dart';

class FruitsTile extends StatelessWidget {
  final String fruitsType;
  final String fruitsPrice;
  final fruitsColor;
  final String imageName;
  final String productType;
  final String itemRating;

  final double borderRadius = 12;

  const FruitsTile(
      {super.key,
      required this.fruitsType,
      required this.fruitsPrice,
      required this.fruitsColor,
      required this.imageName,
      required this.productType,
      required this.itemRating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: fruitsColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: fruitsColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '\$$fruitsPrice',
                    style: TextStyle(
                        color: fruitsColor[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ],
            ),

            // fruits pictures
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                child: Image.asset(
                  imageName,
                  height: 140,
                ),
              ),
            ),

            // fruits type
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                fruitsType,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),

            // product type
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: SizedBox(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productType,
                      style: TextStyle(color: Colors.grey[600]),
                    ),

                    // star icon
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Text(itemRating),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
