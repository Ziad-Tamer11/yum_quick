import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/widgets/item_action_button.dart';

class ItemActionButtons extends StatefulWidget {
  const ItemActionButtons({
    super.key,
    required this.textStyle,
    required this.width,
    required this.height,
    this.iconSize,
    required this.spacing,
  });
  final TextStyle textStyle;
  final double width, height;
  final double? iconSize;
  final double spacing;
  @override
  State<ItemActionButtons> createState() => _ItemActionButtonsState();
}

class _ItemActionButtonsState extends State<ItemActionButtons> {
  static const _maxQuantity = 10;

  var quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: widget.spacing,
      children: [
        ItemActionButton(
          iconSize: widget.iconSize,
          icon: Icons.remove,
          color: quantity > 1 ? AppColors.orangeBase : AppColors.orangeLight,
          onTap: () {
            if (quantity > 1) setState(() => quantity--);
          },
          width: widget.width,
          height: widget.height,
        ),
        Text('$quantity', textAlign: TextAlign.center, style: widget.textStyle),
        ItemActionButton(
          iconSize: widget.iconSize,
          icon: Icons.add,
          color: quantity < _maxQuantity
              ? AppColors.orangeBase
              : AppColors.orangeLight,
          onTap: () {
            if (quantity < _maxQuantity) setState(() => quantity++);
          },
          width: widget.width,
          height: widget.height,
        ),
      ],
    );
  }
}
