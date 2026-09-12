import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/home/price_widget.dart';

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
          child: PriceWidget(),
        ),
      ),
    );
  }
}
