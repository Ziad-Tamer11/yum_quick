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
              'Browse hundreds of restaurants and discover fresh, delicious meals ready to order in just a few taps.',
          isVisible: true,
          pageController: pageController,
        ),
        PageViewItem(
          backgroundImage: Assets.imagesOnboarding2,
          icon: Assets.imagesIcon2,
          title: 'Easy Payment',
          subTitle:
              'Choose the payment method that suits you best and check out safely in one quick, secure step.',
          isVisible: true,
          pageController: pageController,
        ),
        PageViewItem(
          backgroundImage: Assets.imagesOnboarding3,
          icon: Assets.imagesIcon3,
          title: 'Fast Delivery',
          subTitle:
              'Track your order live from the kitchen to your door and know exactly when your food will arrive.',
          isVisible: false,
          pageController: pageController,
        ),
      ],
    );
  }
}
