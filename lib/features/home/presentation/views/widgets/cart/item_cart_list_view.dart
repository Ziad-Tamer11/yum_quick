import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/cart/item_cart.dart';

class ItemCartListView extends StatelessWidget {
  const ItemCartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return ItemCart();
      },
    );
  }
}
