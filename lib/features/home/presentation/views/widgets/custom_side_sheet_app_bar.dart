import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/core/widgets/custom_divider.dart';

class CustomSideSheetAppBar extends StatelessWidget {
  const CustomSideSheetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 66),
        Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40.30,
              height: 40.30,
              decoration: ShapeDecoration(
                image: DecorationImage(image: AssetImage(Assets.imagesCart)),
                color: AppColors.secondaryFont,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Center(
                child: SvgPicture.asset(Assets.imagesCart, height: 28),
              ),
            ),
            Text(
              'Cart',
              style: TextStyles.bold24.copyWith(color: AppColors.secondaryFont),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: CustomDivider(color: AppColors.yellowBase),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
