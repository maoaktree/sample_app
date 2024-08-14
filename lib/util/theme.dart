import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color navyBlue = Color(0xFF003366);
  static const Color lightGreen = Color.fromRGBO(83, 227, 158, 1);
  static const Color promoGreen = Color(0xFF00FF00);
  static const Color darkGray = Color(0xFF4A4A4A);
}

class AppTextStyles {
  static TextStyle headerTitle = GoogleFonts.nunito(
    color: AppColors.navyBlue,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headerSubtitle = GoogleFonts.nunito(
    color: AppColors.navyBlue,
    fontSize: 12,
  );

  static TextStyle buttonText = GoogleFonts.nunito(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle detailText = GoogleFonts.nunito(
    color: AppColors.darkGray,
    fontSize: 12,
  );
}
