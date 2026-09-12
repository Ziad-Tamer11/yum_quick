import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    this.backgroundColor = AppColors.orangeBase,
    this.textColor = AppColors.secondaryFont,
  });
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 4,
        children: [
          Text('5.0', style: TextStyles.regular12.copyWith(color: textColor)),
          SvgPicture.asset(Assets.imagesRating, width: 10, height: 10),
        ],
      ),
    );
  }
}
