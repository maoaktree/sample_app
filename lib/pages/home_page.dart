import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
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
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        // ORDER AGAIN
                        Column(
                          children: [
                            Text(
                              'ORDER AGAIN',
                              style: GoogleFonts.nunito(
                                color: Colors.blueGrey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(width: 4),

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
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'LOCAL SHOP',
                              style: GoogleFonts.nunito(
                                color: Colors.blueGrey,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 4),
                        Image.asset(
                          'lib/images/bag.png',
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
      ),
    );
  }
}
