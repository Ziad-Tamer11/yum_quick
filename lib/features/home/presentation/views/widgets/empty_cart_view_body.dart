import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class EmptyCartViewBody extends StatelessWidget {
  const EmptyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Your cart is empty',
          style: TextStyles.medium20.copyWith(color: AppColors.secondaryFont),
        ),
        const SizedBox(height: 160),
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: SizedBox(
            width: 113,
            height: 113,
            child: CircleAvatar(
              backgroundColor: AppColors.orangeLight,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: AppColors.orangeBase,
                child: Icon(
                  Icons.add_rounded,
                  color: AppColors.orangeLight,
                  size: 70,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Text(
            'Want to add something?',
            textAlign: TextAlign.center,
            style: TextStyles.bold24.copyWith(
              color: AppColors.white,
              height: 1.08,
            ),
          ),
        ),
      ],
    );
  }
}
