import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/favorite_widget.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/price_widget.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/rating_widget.dart';

class RecommendItem extends StatelessWidget {
  const RecommendItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159,
      height: 140,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesRecommend),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
              children: [RatingWidget(), FavoriteWidget()],
            ),
          ),
        ],
      ),
    );
  }
}
