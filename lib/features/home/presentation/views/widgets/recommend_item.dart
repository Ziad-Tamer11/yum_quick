import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_router.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/cart_item_action_buttons.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/favorite_widget.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/price_widget.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/rating_widget.dart';

class RecommendItem extends StatelessWidget {
  const RecommendItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 159 / 140,
          child: GestureDetector(
            onTap: () {
              context.push(AppRouter.kItemDetailsView);
            },
            child: Container(
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imagesRecommend),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  PriceWidget(),
                  Positioned(
                    top: 10,
                    left: 13,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 5,
                      children: [
                        RatingWidget(
                          backgroundColor: Colors.white,
                          textColor: AppColors.orangeBase,
                        ),
                        FavoriteWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 11),
        Text(
          'Bean and vegetable burger',
          style: TextStyles.medium16.copyWith(height: 0),
        ),
        const SizedBox(height: 3),
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
          style: TextStyles.light12.copyWith(
            color: AppColors.primaryFont,
            height: 0.98,
          ),
        ),
        const SizedBox(height: 13),
        Row(
          children: [
            Text(
              '\$15.00',
              style: TextStyles.medium20.copyWith(color: AppColors.orangeBase),
            ),
            const SizedBox(width: 9),
            CartItemActionButtons(),
            const SizedBox(width: 8),
            Container(
              width: 19,
              height: 19,
              decoration: ShapeDecoration(
                color: AppColors.orangeBase,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(3),
                child: Center(
                  child: SvgPicture.asset(
                    Assets.imagesCart,
                    colorFilter: const ColorFilter.mode(
                      AppColors.secondaryFont,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
