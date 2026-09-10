import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

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
      ],
    );
  }
}
