import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.pop();
        },
        style: TextButton.styleFrom(
          backgroundColor: AppColors.orangeBase,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(width: 1, color: AppColors.orangeBase),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: .min,
          spacing: 14,
          children: [
            SvgPicture.asset(
              Assets.imagesCart2,
              color: AppColors.secondaryFont,
            ),
            Text(
              'Add to Cart',
              style: TextStyles.medium20.copyWith(
                color: Colors.white,
                height: 1.18,
                letterSpacing: -0.10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
