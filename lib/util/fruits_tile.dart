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
                    '\s$fruitsPrice',
                    style: TextStyle(
                        color: fruitsColor[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ],
            ),

            // fruits pictures

            // fruits type

            // star icon + add button
          ],
        ),
      ),
    );
  }
}
