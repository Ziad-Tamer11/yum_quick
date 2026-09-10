import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width * 0.126;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        spacing: 4,
        children: [
          SizedBox(
            width: itemWidth,
            child: AspectRatio(
              aspectRatio: 49 / 62,
              child: Container(
                decoration: ShapeDecoration(
                  color: AppColors.yellowLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: SvgPicture.asset(
                  Assets.imagesSnacks,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          Text(
            'Snacks',
            textAlign: TextAlign.center,
            style: TextStyles.regular12,
          ),
        ],
      ),
    );
  }
}
