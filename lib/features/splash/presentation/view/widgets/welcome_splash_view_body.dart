import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_router.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/core/widgets/custom_button.dart';

class WelcomeSplashViewBody extends StatelessWidget {
  const WelcomeSplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.imagesLogo2),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 49),
          child: Text(
            textAlign: TextAlign.center,
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
            style: TextStyles.medium14.copyWith(color: AppColors.secondaryFont),
          ),
        ),
        const SizedBox(height: 43),
        CustomButton(
          title: 'Log In',
          titleColor: AppColors.orangeBase,
          onPressed: () {
            context.pushReplacement(AppRouter.kLoginViewView);
          },
          backgroundColor: AppColors.yellowBase,
        ),
        const SizedBox(height: 4),
        CustomButton(
          title: 'Sign Up',
          titleColor: AppColors.orangeBase,
          onPressed: () {
            context.pushReplacement(AppRouter.kSignUpViewView);
          },
          backgroundColor: AppColors.yellowLight,
        ),
      ],
    );
  }
}
