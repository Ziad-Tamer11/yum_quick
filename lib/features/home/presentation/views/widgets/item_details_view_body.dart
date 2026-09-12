import 'package:flutter/material.dart';
import 'package:yum_quick/core/widgets/custom_item_details_app_bar.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CustomItemDetailsAppBar()]);
  }
}
