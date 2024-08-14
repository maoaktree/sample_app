import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_app/util/my_tab.dart';
import '../../tab/fish_tab.dart';
import '../../tab/fruits_tab.dart';
import '../../tab/meat_tab.dart';
import '../../tab/milk_tab.dart';
import '../../tab/vegan_tab.dart';

class ShopTab extends StatelessWidget {
  const ShopTab({super.key});

  // Tabs
  final List<Widget> myTabs = const [
    MyTab(iconPath: 'lib/images/vegan.png'),
    MyTab(iconPath: 'lib/images/chicken.png'),
    MyTab(iconPath: 'lib/images/fruits.png'),
    MyTab(iconPath: 'lib/images/milk.png'),
    MyTab(iconPath: 'lib/images/fish.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TabBar Title
          Text(
            'Shop by category',
            textAlign: TextAlign.left,
            style: GoogleFonts.nunito(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // TabBar
          TabBar(
            indicatorColor: Colors.green,
            tabs: myTabs,
          ),
          const SizedBox(height: 10),

          // TabBarView
          Expanded(
            child: TabBarView(
              children: [
                VeganTab(),
                MeatTab(),
                FruitsTab(),
                MilkTab(),
                FishTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
