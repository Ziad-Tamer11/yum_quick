import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 323 / 128,
      child: FittedBox(
        fit: BoxFit.fill,
        child: SizedBox(
          width: 323,
          height: 128,
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AppColors.orangeBase,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Stack(
              children: [
                Positioned(right: 0, child: Image.asset(Assets.imagesOffer)),
                Positioned(
                  left: 100,
                  child: SvgPicture.asset(Assets.imagesOfferDecoration2),
                ),
                Positioned(
                  bottom: 0,
                  child: SvgPicture.asset(Assets.imagesOfferDecoration1),
                ),
                Positioned(
                  left: 16,
                  top: 30,
                  child: Text(
                    'Experience our\ndelicious new dish',
                    textAlign: TextAlign.center,
                    style: TextStyles.regular16.copyWith(height: 0),
                  ),
                ),
                Positioned(
                  left: 14,
                  bottom: 24,
                  child: Text('30% OFF', style: TextStyles.bold32),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
