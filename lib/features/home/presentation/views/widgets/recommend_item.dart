import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/favorite_widget.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/price_widget.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/rating_widget.dart';

class RecommendItem extends StatefulWidget {
  const RecommendItem({super.key});

  @override
  State<RecommendItem> createState() => _RecommendItemState();
}

class _RecommendItemState extends State<RecommendItem> {
  var isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 159 / 140,
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
                      RatingWidget(),
                      FavoriteWidget(
                        isFavorite: isFavorite,
                        onTap: () => setState(() => isFavorite = !isFavorite),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 11),
        Text('Bean and vegetable burger', style: TextStyles.medium16),
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
      ],
    );
  }
}
