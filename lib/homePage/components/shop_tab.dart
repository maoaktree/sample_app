import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/util/theme.dart';

class ShopByCategory extends StatelessWidget {
  final void Function(int) onCategorySelected;
  final int selectedIndex;

  const ShopByCategory(
      {super.key,
      required this.onCategorySelected,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(
            'Shop by Category',
            style: AppTextStyles.headerTitle,
          ),
        ),

        // Horizontal Scrollable List
        Container(
          height: 120,
          padding: const EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/vegan.png',
                  title: 'Vegan',
                  index: 0,
                ),
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/chicken.png',
                  title: 'Meat',
                  index: 1,
                ),
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/fruits.png',
                  title: 'Fruits',
                  index: 2,
                ),
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/milk.png',
                  title: 'Milk',
                  index: 3,
                ),
                _buildCategoryIcon(
                  context,
                  iconPath: 'lib/images/fish.png',
                  title: 'Fish',
                  index: 4,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryIcon(BuildContext context,
      {required String iconPath, required String title, required int index}) {
    final bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () {
        if (kDebugMode) {
          print('Category tapped: $title');
        }
        onCategorySelected(index); //call the callback index tab
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: isSelected ? Colors.grey[200] : Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      isSelected
                          ? Colors.transparent
                          : Colors.grey.withOpacity(0.3),
                      BlendMode.srcATop,
                    ),
                    child: Image.asset(iconPath),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: AppTextStyles.headerSubtitle.copyWith(
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
