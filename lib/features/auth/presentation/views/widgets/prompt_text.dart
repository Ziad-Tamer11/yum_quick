import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class PromptText extends StatelessWidget {
  const PromptText({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account? ",
            style: TextStyles.light14.copyWith(color: AppColors.primaryFont),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: 'Sign Up',
            style: TextStyles.light14.copyWith(color: AppColors.orangeBase),
          ),
        ],
      ),
    );
  }
}
