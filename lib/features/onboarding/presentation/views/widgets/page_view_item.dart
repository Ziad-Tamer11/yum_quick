import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.backgroundImage,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.isVisible,
    required this.pageController,
  });
  final String backgroundImage, icon, title, subTitle;
  final bool isVisible;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(backgroundImage, fit: BoxFit.cover)),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.40,
            decoration: ShapeDecoration(
              color: const Color(0xFFF8F8F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 23),
                SvgPicture.asset(icon),
                const SizedBox(height: 21),
                Text(title, style: TextStyles.onboardingTitle),
                const SizedBox(height: 19),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    subTitle,
                    textAlign: TextAlign.center,
                    style: TextStyles.medium14.copyWith(
                      color: AppColors.primaryFont,
                      height: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Positioned(
            right: 35,
            top: 21,
            child: GestureDetector(
              onTap: () {
                pageController.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              child: Row(
                spacing: 7,
                children: [
                  Text(
                    'Skip',
                    style: TextStyles.semiBold15.copyWith(
                      color: AppColors.orangeBase,
                    ),
                  ),
                  SvgPicture.asset(Assets.imagesNextIconArrow),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
