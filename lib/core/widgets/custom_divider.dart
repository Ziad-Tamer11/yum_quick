import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.color = AppColors.divider});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Divider(color: color);
  }
}
