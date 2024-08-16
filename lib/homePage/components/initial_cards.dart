import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialCards extends StatelessWidget {
  const InitialCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ORDER AGAIN
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(83, 227, 158, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ORDER \nAGAIN',
                        style: GoogleFonts.nunito(
                            color: const Color.fromARGB(255, 6, 68, 99),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )
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
              height: 16,
            ),

            // LOCAL SHOP
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(83, 227, 158, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'LOCAL \nSHOP',
                        style: GoogleFonts.nunito(
                            color: const Color.fromARGB(255, 6, 68, 99),
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

        // PROMO BANNER
        // Container(
        //   decoration: BoxDecoration(
        //     color: Colors.green,
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   margin: const EdgeInsets.symmetric(horizontal: 25),
        //   padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        //   child: Row(
        //     children: [
        //       Column(
        //         children: [
        //           const Text('FRESH AVOCADO UP TO 15% OFF'),
        //           const SizedBox(height: 20),
        //           MyButton(
        //             text: "Shop Now",
        //             buttonColor: Colors.blueGrey,
        //             onTap: () {
        //               Navigator.pushNamed(context, '/detailpage');
        //             },
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
