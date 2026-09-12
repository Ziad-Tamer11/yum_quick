import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/features/auth/presentation/views/login_view.dart';
import 'package:yum_quick/features/auth/presentation/views/sign_up_view.dart';
import 'package:yum_quick/features/home/presentation/views/home_view.dart';
import 'package:yum_quick/features/home/presentation/views/item_details_view.dart';
import 'package:yum_quick/features/home/presentation/views/main_view.dart';
import 'package:yum_quick/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:yum_quick/features/splash/presentation/view/splash_view.dart';
import 'package:yum_quick/features/splash/presentation/view/welcome_splash_view.dart';

class AppRouter {
  static const kOnboardingView = '/onboarding';
  static const kWelcomeSplashView = '/welcome';
  static const kLoginViewView = '/loginViewView';
  static const kSignUpViewView = '/signUpViewView';
  static const kHomeViewView = '/homeViewView';
  static const kMainViewView = '/mainViewView';
  static const kItemDetailsView = '/itemDetailsView';

  static CustomTransitionPage _slideFadePage(LocalKey key, Widget child) {
    return CustomTransitionPage(
      key: key,
      child: child,
      transitionDuration: const Duration(milliseconds: 400),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final slide =
            Tween<Offset>(
              begin: const Offset(0.08, 0),
              end: Offset.zero,
            ).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
            );
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(position: slide, child: child),
        );
      },
    );
  }

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kWelcomeSplashView,
        pageBuilder: (context, state) =>
            _slideFadePage(state.pageKey, const WelcomeSplashView()),
      ),
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
      GoRoute(
        path: kLoginViewView,
        pageBuilder: (context, state) =>
            _slideFadePage(state.pageKey, const LoginView()),
      ),
      GoRoute(
        path: kSignUpViewView,
        pageBuilder: (context, state) =>
            _slideFadePage(state.pageKey, const SignUpView()),
      ),
      GoRoute(
        path: kHomeViewView,
        pageBuilder: (context, state) =>
            _slideFadePage(state.pageKey, const HomeView()),
      ),
      GoRoute(
        path: kMainViewView,
        pageBuilder: (context, state) =>
            _slideFadePage(state.pageKey, const MainView()),
      ),
      GoRoute(
        path: kItemDetailsView,
        pageBuilder: (context, state) =>
            _slideFadePage(state.pageKey, const ItemDetailsView()),
      ),
    ],
  );
}
