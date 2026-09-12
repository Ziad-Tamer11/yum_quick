import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/best_seller_list_view.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Best Seller', style: TextStyles.medium20),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Row(
                spacing: 11,
                children: [
                  Text('View All', style: TextStyles.semiBold12),
                  SvgPicture.asset(Assets.imagesNextIconArrow),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        BestSellerListView(),
      ],
    );
  }
}
