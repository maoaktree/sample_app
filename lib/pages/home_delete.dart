import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_app/tab/fish_tab.dart';
import 'package:sample_app/tab/meat_tab.dart';
import 'package:sample_app/tab/milk_tab.dart';
import 'package:sample_app/tab/vegan_tab.dart';
import 'package:sample_app/util/my_tab.dart';
import 'package:sample_app/tab/fruits_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// my tabs
  List<Widget> myTabs = const [
// vegan tab
    MyTab(
      iconPath: 'lib/images/vegan.png',
    ),

// meat tab
    MyTab(
      iconPath: 'lib/images/chicken.png',
    ),

// fruits tab
    MyTab(
      iconPath: 'lib/images/fruits.png',
    ),

// milk tab
    MyTab(
      iconPath: 'lib/images/milk.png',
    ),

// fish tab
    MyTab(
      iconPath: 'lib/images/fish.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: DefaultTabController(
            length: myTabs.length,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
// Title for TabBar
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

                // tab bar
                TabBar(indicatorColor: Colors.green, tabs: myTabs),

                // tab bar view
                Expanded(
                  child: TabBarView(
                    children: [
                      // vegan page
                      VeganTab(),

                      // meat page
                      MeatTab(),

                      //fruits page
                      FruitsTab(),

                      // milk page
                      MilkTab(),

                      //fish page
                      FishTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
