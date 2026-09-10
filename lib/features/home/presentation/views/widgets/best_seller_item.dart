import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width * 0.1824;

    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 71.68 / 108,
        child: Container(
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.imagesBestSeller),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19.12),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 13,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: ShapeDecoration(
                    color: AppColors.orangeBase,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                  ),
                  child: Text(
                    '\$103.01',
                    textAlign: TextAlign.center,
                    style: TextStyles.regular12.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
