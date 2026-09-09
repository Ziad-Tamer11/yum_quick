import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yum_quick/core/utils/app_colors.dart';

class TextStyles {
  static TextStyle bold24 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: AppColors.primaryFont,
  );

  static TextStyle semiBold24 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: AppColors.primaryFont,
  );

  static TextStyle medium24 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: AppColors.primaryFont,
  );

  static TextStyle bold28 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.bold,
    fontSize: 28,
    color: AppColors.secondaryFont,
  );

  static TextStyle medium14 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.primaryFont,
  );

  static TextStyle light14 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w300,
    fontSize: 14,
    height: 1,
    color: const Color(0xFF252525),
  );

  static TextStyle bold17 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: AppColors.primaryFont,
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
    color: AppColors.primaryFont,
  );

  static TextStyle medium20 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: AppColors.primaryFont,
  );

  static TextStyle regular20 = GoogleFonts.leagueSpartan(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: AppColors.primaryFont,
  );
}
