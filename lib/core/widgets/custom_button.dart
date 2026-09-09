import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
    this.backgroundColor = AppColors.orangeBase,
    this.titleColor = AppColors.white,
  });
  final String title;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 207,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        child: Text(
          title,
          style: TextStyles.medium24.copyWith(color: titleColor),
        ),
      ),
    );
  }
}
