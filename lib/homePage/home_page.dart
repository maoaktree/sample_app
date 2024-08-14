import 'package:flutter/material.dart';
import 'package:sample_app/homePage/components/header.dart';
import 'package:sample_app/homePage/components/initial_cards.dart';
import 'package:sample_app/homePage/components/nav_bar.dart';
import 'package:sample_app/homePage/components/shop_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Header(),
                      SizedBox(height: 10),
                      InitialCards(),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ShopTab(),
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: NavBar(),
    );
  }
}
