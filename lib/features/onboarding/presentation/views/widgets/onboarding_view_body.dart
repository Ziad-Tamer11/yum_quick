import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_router.dart';
import 'package:yum_quick/core/widgets/custom_button.dart';
import 'package:yum_quick/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: OnboardingPageView(pageController: pageController),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              top: false,
              child: AnimatedBuilder(
                animation: pageController,
                builder: (context, _) {
                  final currentPage = pageController.hasClients
                      ? (pageController.page ?? 0).round()
                      : 0;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DotsIndicator(
                        dotsCount: 3,
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
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        title: currentPage == 2 ? 'Get Started' : 'Next',
                        onPressed: () {
                          if (currentPage == 2) {
                            context.pushReplacement(
                              AppRouter.kWelcomeSplashView,
                            );
                          } else {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
