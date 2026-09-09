import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: OnboardingPageView()),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // يمنع الـ Column من محاولة ياخد مساحة زيادة
                children: [
                  DotsIndicator(
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      activeColor: AppColors.orangeBase,
                      shape: CircleBorder(),
                    ),
                  ),
                  /* button */
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
