import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class PromptText extends StatelessWidget {
  const PromptText({
    super.key,
    this.onTap,
    required this.text1,
    required this.text2,
  });
  final void Function()? onTap;
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyles.light14.copyWith(color: AppColors.primaryFont),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: text2,
            style: TextStyles.light14.copyWith(color: AppColors.orangeBase),
          ),
        ],
      ),
    );
  }
}
