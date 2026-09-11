import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/recommend_item.dart';

class RecommendSection extends StatelessWidget {
  const RecommendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recommend', style: TextStyles.medium20),
        const SizedBox(height: 9),
        RecommendItem(),
      ],
    );
  }
}
