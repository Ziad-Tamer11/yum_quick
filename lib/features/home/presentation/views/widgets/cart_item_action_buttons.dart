import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/cart_item_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        CartItemActionButton(
          icon: Icons.remove,
          color: AppColors.orangeLight,
          onTap: () {},
        ),
        Text('1', textAlign: TextAlign.center, style: TextStyles.regular15),
        CartItemActionButton(
          icon: Icons.add,
          color: AppColors.orangeBase,
          onTap: () {},
        ),
      ],
    );
  }
}
