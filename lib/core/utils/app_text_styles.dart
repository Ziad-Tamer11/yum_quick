import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yum_quick/core/utils/app_colors.dart';

class TextStyles {
  static TextStyle bold24 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  static TextStyle medium24 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  static TextStyle medium14 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static TextStyle bold17 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.bold,
    fontSize: 17,
  );

  static TextStyle medium17 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: AppColors.white,
    height: 1.18,
    letterSpacing: -0.09,
  );

  static TextStyle onboardingTitle = GoogleFonts.inter(
    fontWeight: FontWeight.w900,
    fontSize: 24,
    color: AppColors.orangeBase,
  );

  static TextStyle semiBold15 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );
}
