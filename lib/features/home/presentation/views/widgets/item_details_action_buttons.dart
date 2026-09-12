import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/item_details_action_button.dart';

class ItemDetailsActionButtons extends StatefulWidget {
  const ItemDetailsActionButtons({super.key});

  @override
  State<ItemDetailsActionButtons> createState() =>
      _ItemDetailsActionButtonsState();
}

class _ItemDetailsActionButtonsState extends State<ItemDetailsActionButtons> {
  static const _maxQuantity = 10;

  var quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        ItemDetailsActionButton(
          icon: Icons.remove,
          color: quantity > 1 ? AppColors.orangeBase : AppColors.orangeLight,
          onTap: () {
            if (quantity > 1) setState(() => quantity--);
          },
        ),
        Text(
          '$quantity',
          textAlign: TextAlign.center,
          style: TextStyles.regular24,
        ),
        ItemDetailsActionButton(
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
