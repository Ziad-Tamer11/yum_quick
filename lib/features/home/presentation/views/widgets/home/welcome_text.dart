import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Good Morning', style: TextStyles.bold30),
        Text("Rise and shine! It's breakfast time", style: TextStyles.medium13),
      ],
    );
  }
}
