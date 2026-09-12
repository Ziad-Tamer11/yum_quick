import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/home/best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width * 0.1824;
    final itemHeight = itemWidth / (71.68 / 108);

    return SizedBox(
      height: itemHeight,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 12);
        },
        itemBuilder: (BuildContext context, int index) {
          return const BestSellerItem();
        },
      ),
    );
  }
}
