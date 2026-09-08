import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yum_quick/core/utils/app_colors.dart';

class TextStyles {
  static TextStyle bold24 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static TextStyle medium14 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
  static TextStyle bold17 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );

  static TextStyle onboardingTitle = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: AppColors.orangeBase,
  );

  static TextStyle semiBold15 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );
}
