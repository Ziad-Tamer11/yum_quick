import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/custom_side_sheet_app_bar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomSideSheetAppBar()]);
  }
}
