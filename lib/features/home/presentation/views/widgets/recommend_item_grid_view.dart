import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/recommend_item.dart';

class RecommendItemGridView extends StatelessWidget {
  const RecommendItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        childAspectRatio: 159 / 140,
      ),
      itemBuilder: (context, index) => const RecommendItem(),
    );
  }
}
