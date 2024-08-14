import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
        IconButton(
          icon: Image.asset(
            'lib/images/user.png',
            height: 42,
            width: 42,
          ),
          onPressed: () {
            // Ações do botão da conta
          },
        ),
      ],
    );
  }
}
