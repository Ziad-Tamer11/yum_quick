import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key, this.onTap1, this.onTap2});
  final void Function()? onTap1;
  final void Function()? onTap2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'By continuing, you agree to \n ',
            style: TextStyles.light12.copyWith(
              color: AppColors.primaryFont,
              fontSize: 14,
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap1,
            text: 'Terms of Use',
            style: TextStyles.medium12.copyWith(fontSize: 14),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyles.light12.copyWith(
              color: AppColors.primaryFont,
              fontSize: 14,
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap2,
            text: 'Privacy Policy.',
            style: TextStyles.medium12.copyWith(fontSize: 14),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
