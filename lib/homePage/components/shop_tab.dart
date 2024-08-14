import 'package:flutter/material.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Text(
            'Shop by Category',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),

        // Horizontal Scrollable List
        Container(
          height: 120,
          padding: const EdgeInsets.only(left: 15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/vegan.png',
                  title: 'Vegan',
                ),
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/chicken.png',
                  title: 'Meat',
                ),
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/fruits.png',
                  title: 'Fruits',
                ),
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/milk.png',
                  title: 'Milk',
                ),
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/fish.png',
                  title: 'Fish',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryIcon(BuildContext context,
      {required String iconPath, required String title}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(iconPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
