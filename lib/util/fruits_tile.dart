import 'package:flutter/material.dart';

class FruitsTile extends StatelessWidget {
  final String fruitsType;
  final String fruitsPrice;
  final fruitsColor;
  final String imageName;

  final double borderRadius = 12;

  const FruitsTile({
    super.key,
    required this.fruitsType,
    required this.fruitsPrice,
    required this.fruitsColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: fruitsColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 36.0, vertical: 16.0),
                child: Image.asset(imageName),
              ),
            ),

            // fruits type
            Text(
              fruitsType,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Fruits',
              style: TextStyle(color: Colors.grey[600]),
            ),

            const SizedBox(height: 12),

            // star icon + add button
            Row(
              children: [
                // star icon
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),

                const SizedBox(width: 8),

                //plus button
                Icon(
                  Icons.add,
                  color: Colors.grey[800],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
