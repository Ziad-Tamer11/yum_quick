import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/features/onboarding/presentation/views/widgets/page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          backgroundImage: Assets.imagesOnboarding1,
          icon: Assets.imagesIcon1,
          title: 'Order for Food',
          subTitle:
              'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
          isVisible: pageController.page!.round() == 0,
        ),
        PageViewItem(
          backgroundImage: Assets.imagesOnboarding2,
          icon: Assets.imagesIcon2,
          title: 'Easy Payment',
          subTitle:
              'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
          isVisible: pageController.page!.round() == 1,
        ),
        PageViewItem(
          backgroundImage: Assets.imagesOnboarding3,
          icon: Assets.imagesIcon3,
          title: 'Fast Delivery',
          subTitle:
              'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
          isVisible: pageController.page!.round() != 2,
        ),
      ],
    );
  }
}
