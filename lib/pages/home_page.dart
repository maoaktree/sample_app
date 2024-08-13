import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: DefaultTabController(
            length: myTabs.length,
            child: Column(
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

                const SizedBox(
                  height: 25,
                ),

                // SWIFT DISPLAY

                const SizedBox(
                  height: 24,
                ),

                // tab bar
                TabBar(tabs: myTabs),

                // tab bar view
                Expanded(
                  child: TabBarView(
                    children: [
                      // vegan page
                      //VeganTab(),

                      // meat page
                      //MeatTab(),

                      //fruits page
                      FruitsTab(),

                      // milk page
                      //MilkTab(),

                      //fish page
                      // FishTab(),
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
