import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/custom_dashed_line.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/order_summary.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderSummary(title: 'Subtotal', value: '32.00'),
        const SizedBox(height: 26),
        OrderSummary(title: 'Delivery', value: '3.00'),
        const SizedBox(height: 21),
        CustomDashedLine(color: AppColors.orangeLight),
        const SizedBox(height: 19),
        OrderSummary(title: 'Total', value: '35.00'),
        const SizedBox(height: 82),
      ],
    );
  }
}
