import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/services/shared_preferences_singleton.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'appLogo',
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeOutBack,
          builder: (context, value, child) {
            return Transform.scale(
              scale: value,
              child: Opacity(opacity: value.clamp(0.0, 1.0), child: child),
            );
          },
          child: SvgPicture.asset(Assets.imagesLogo1),
        ),
      ),
    );
  }

  void executeNavigation() {
    Future.delayed(const Duration(milliseconds: 2200), () {
      if (!mounted) return;

      if (FirebaseAuth.instance.currentUser != null) {
        context.go(AppRouter.kMainViewView);
        return;
      }

      final hasSeenOnboarding = Prefs.getBool(kIsOnboardingSeen);
      if (hasSeenOnboarding) {
        context.pushReplacement(AppRouter.kWelcomeSplashView);
      } else {
        context.pushReplacement(AppRouter.kOnboardingView);
      }
    });
  }
}
