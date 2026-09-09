import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: AlignmentGeometry.centerRight,
        child: Text(
          'Forgot Password?',
          style: TextStyles.medium14.copyWith(color: AppColors.orangeBase),
        ),
      ),
    );
  }
}
