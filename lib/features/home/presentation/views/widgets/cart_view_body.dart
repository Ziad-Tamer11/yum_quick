import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/custom_side_sheet_app_bar.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/empty_cart_view_body.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomSideSheetAppBar(), EmptyCartViewBody()]);
  }
}
