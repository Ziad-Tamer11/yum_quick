import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/features/splash/presentation/view/widgets/welcome_splash_view_body.dart';

class WelcomeSplashView extends StatelessWidget {
  const WelcomeSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeBase,
      body: const WelcomeSplashViewBody(),
    );
  }
}
