import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/core/widgets/custom_divider.dart';
import 'package:yum_quick/core/widgets/item_action_buttons.dart';

class ItemCartSection extends StatelessWidget {
  const ItemCartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'You have 2  items in the cart',
          style: TextStyles.medium20.copyWith(color: AppColors.secondaryFont),
        ),
        const SizedBox(height: 26),
        ItemCartListView(),
      ],
    );
  }
}

class ItemCartListView extends StatelessWidget {
  const ItemCartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return ItemCart();
      },
    );
  }
}

class ItemCart extends StatelessWidget {
  const ItemCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(Assets.imagesItemCart),
            const SizedBox(width: 10),
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Strawberry \nShake', style: TextStyles.medium15),
                Text(
                  '\$20.00',
                  style: TextStyles.light14.copyWith(
                    color: AppColors.secondaryFont,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '29/11/24',
                  style: TextStyles.medium13.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: 5),
                Text(
                  '15:00',
                  style: TextStyles.medium13.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: 8),
                ItemActionButtons(
                  textStyle: TextStyles.regular13,
                  width: 14,
                  height: 14,
                  spacing: 5,
                  iconSize: 14,
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  iconColor: AppColors.orangeBase,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        CustomDivider(),
        const SizedBox(height: 16),
      ],
    );
  }
}
