import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_app/tab/fish_tab.dart';
import 'package:sample_app/tab/meat_tab.dart';
import 'package:sample_app/tab/milk_tab.dart';
import 'package:sample_app/tab/vegan_tab.dart';
import 'package:sample_app/util/button.dart';
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
                // home row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Delivery",
                          style: GoogleFonts.nunito(
                            color: Colors.blueGrey,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Araraquara, Sp',
                          style: GoogleFonts.nunito(
                            color: Colors.blueGrey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    // account button
                    IconButton(
                      icon: Image.asset(
                        'lib/images/user.png',
                        height: 42,
                        width: 42,
                      ),
                      onPressed: () {
                        // account informations
                      },
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                // buttons

                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(83, 227, 158, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                // ORDER AGAIN
                                Column(
                                  children: [
                                    Text(
                                      'ORDER \nAGAIN',
                                      style: GoogleFonts.nunito(
                                          color: Colors.blueGrey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),

                                const SizedBox(width: 24),

                                Image.asset(
                                  'lib/images/bag.png',
                                  width: 42,
                                  height: 42,
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 25,
                          ),

                          // LOCAL SHOP
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(83, 227, 158, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'LOCAL \nSHOP',
                                      style: GoogleFonts.nunito(
                                          color: Colors.blueGrey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 24),
                                Image.asset(
                                  'lib/images/shop.png',
                                  width: 42,
                                  height: 42,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                // PROMO BANNER
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          // promo message
                          const Text('FRESH AVOCADO UP TO 15% OFF'),

                          const SizedBox(height: 20),

                          // shop now button
                          MyButton(
                            text: "Shop Now",
                            buttonColor: Colors.blueGrey,
                            onTap: () {
                              // go to  promo page
                              Navigator.pushNamed(context, '/detailpage');
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

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
