import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/item_cart.dart';

class FilledCartViewBody extends StatelessWidget {
  const FilledCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(children: [ItemCart(), const SizedBox(height: 60)]),
    );
  }
}
