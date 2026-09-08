import 'package:flutter/material.dart';
import 'package:yum_quick/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(children: [Expanded(child: OnboardingPageView())]),
    );
  }
}
