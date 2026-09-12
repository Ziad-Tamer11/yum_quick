import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/widgets/custom_button.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/item_cartsection.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/price_Section.dart';

class FilledCartViewBody extends StatelessWidget {
  const FilledCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ItemCartSection(),
            const SizedBox(height: 40),
            PriceSection(),
            const SizedBox(height: 82),
            CustomButton(
              title: 'Checkout',
              onPressed: () {},
              backgroundColor: AppColors.yellowBase,
              titleColor: AppColors.red,
            ),
            const SizedBox(height: 82),
          ],
        ),
      ),
    );
  }
}
