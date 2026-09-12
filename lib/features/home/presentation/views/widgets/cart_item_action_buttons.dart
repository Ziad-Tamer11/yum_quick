import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/cart_item_action_button.dart';

class CartItemActionButtons extends StatefulWidget {
  const CartItemActionButtons({super.key});

  @override
  State<CartItemActionButtons> createState() => _CartItemActionButtonsState();
}

class _CartItemActionButtonsState extends State<CartItemActionButtons> {
  static const _maxQuantity = 10;

  var quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        CartItemActionButton(
          icon: Icons.remove,
          color: quantity >= 1 ? AppColors.orangeBase : AppColors.orangeLight,
          onTap: () {
            if (quantity >= 1) setState(() => quantity--);
          },
        ),
        Text(
          '$quantity',
          textAlign: TextAlign.center,
          style: TextStyles.regular15,
        ),
        CartItemActionButton(
          icon: Icons.add,
          color: quantity < _maxQuantity
              ? AppColors.orangeBase
              : AppColors.orangeLight,
          onTap: () {
            if (quantity < _maxQuantity) setState(() => quantity++);
          },
        ),
      ],
    );
  }
}
