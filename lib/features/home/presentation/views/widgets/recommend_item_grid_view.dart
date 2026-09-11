import 'package:flutter/material.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/recommend_item.dart';

class RecommendItemGridView extends StatelessWidget {
  const RecommendItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final itemWidth =
        (MediaQuery.of(context).size.width - kHorizontalPadding * 2 - 7) / 2;

    return Wrap(
      spacing: 7,
      runSpacing: 26,
      children: List.generate(
        6,
        (index) => SizedBox(width: itemWidth, child: const RecommendItem()),
      ),
    );
  }
}
