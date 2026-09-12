import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.medium20.copyWith(color: AppColors.white),
        ),
        Spacer(),
        Text(
          '\$$value',
          style: TextStyles.medium20.copyWith(color: AppColors.secondaryFont),
        ),
      ],
    );
  }
}
