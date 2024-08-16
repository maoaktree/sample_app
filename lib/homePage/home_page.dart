import 'package:flutter/material.dart';
import 'package:sample_app/homePage/components/header.dart';
import 'package:sample_app/homePage/components/initial_cards.dart';
import 'package:sample_app/homePage/components/nav_bar.dart';
import 'package:sample_app/homePage/components/promo_banner.dart';
import 'package:sample_app/homePage/components/shop_tab.dart';
import 'package:sample_app/tab/fish_tab.dart';
import 'package:sample_app/tab/fruits_tab.dart';
import 'package:sample_app/tab/meat_tab.dart';
import 'package:sample_app/tab/milk_tab.dart';
import 'package:sample_app/tab/vegan_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this); // tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onCategorySelected(int index) {
    _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Header(),
                    const SizedBox(height: 10),
                    const InitialCards(),
                    const PromoBanner(),
                    const SizedBox(height: 15),
                    ShopByCategory(
                      onCategorySelected: _onCategorySelected,
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
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
            // Expanded(
            //   child: ShopTab(),
            // ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const NavBar(),
    );
  }
}
