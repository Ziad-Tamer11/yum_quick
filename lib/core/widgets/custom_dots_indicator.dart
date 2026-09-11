import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.pageController,
    required this.dotsCount,
  });

  final PageController pageController;
  final int dotsCount;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, _) {
        final currentPage = pageController.hasClients
            ? (pageController.page ?? 0).round()
            : 0;

        return DotsIndicator(
          dotsCount: dotsCount,
          position: currentPage.toDouble(),
          decorator: DotsDecorator(
            color: AppColors.yellowLight,
            activeColor: AppColors.orangeBase,
            size: const Size(20, 4),
            activeSize: const Size(20, 4),
            spacing: const EdgeInsets.symmetric(horizontal: 4),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            activeShape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
        );
      },
    );
  }
}
