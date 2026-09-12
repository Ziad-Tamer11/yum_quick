import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/item_details/additional_item.dart';

class AdditionalItemSection extends StatelessWidget {
  const AdditionalItemSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Toppings',
          textAlign: TextAlign.center,
          style: TextStyles.medium20,
        ),
        const SizedBox(height: 17),
        AdditionalItem(title: 'Guacamole', value: '2.99'),
        const SizedBox(height: 16),
        AdditionalItem(title: 'Jalapeños', value: '3.99'),
        const SizedBox(height: 16),
        AdditionalItem(title: 'Ground Beef', value: '3.99'),
        const SizedBox(height: 16),
        AdditionalItem(title: 'Pico de Gallo', value: '2.99'),
      ],
    );
  }
}
