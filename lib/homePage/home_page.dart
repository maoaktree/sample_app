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
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  int _selectedCategoryIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this); // tabs
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onCategorySelected(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
    _tabController.animateTo(index);
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(15.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const Header(),
                  const SizedBox(height: 10),
                  const InitialCards(),
                  const PromoBanner(),
                  const SizedBox(height: 15),
                  ShopByCategory(
                    onCategorySelected: _onCategorySelected,
                    selectedIndex: _selectedCategoryIndex,
                  ),
                ]),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.48,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    VeganTab(),
                    MeatTab(),
                    const FruitsTab(),
                    const MilkTab(),
                    const FishTab(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const NavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: _scrollToTop,
        backgroundColor: const Color.fromRGBO(83, 227, 158, 1).withOpacity(0.5),
        tooltip: 'Back to Top',
        shape: const CircleBorder(),
        mini: true,
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }
}
