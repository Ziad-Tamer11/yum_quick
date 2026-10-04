import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/cart/item_cart_list_view.dart';

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
