import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.onPressed, required this.title});
  final VoidCallback? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 133,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.orangeBase,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(width: 1, color: AppColors.orangeBase),
          ),
        ),
        onPressed: onPressed,
        child: Text(title, style: TextStyles.medium17),
      ),
    );
  }
}
