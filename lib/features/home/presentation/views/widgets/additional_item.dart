import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class AdditionalItem extends StatelessWidget {
  const AdditionalItem({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.light14.copyWith(color: AppColors.primaryFont),
        ),
        Spacer(),
        Text(
          '\$$value',
          style: TextStyles.light12.copyWith(color: AppColors.primaryFont),
        ),
        const SizedBox(width: 8),
        SvgPicture.asset(Assets.imagesCheckPoint),
      ],
    );
  }
}
