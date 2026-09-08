import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:yum_quick/features/splash/presentation/view/splash_view.dart';

class AppRouter {
  static const kOnboardingView = '/onboarding';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kOnboardingView,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const OnboardingView(),
          transitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
    ],
  );
}
