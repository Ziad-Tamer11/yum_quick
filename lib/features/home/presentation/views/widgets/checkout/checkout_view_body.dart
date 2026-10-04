import 'package:flutter/material.dart';
import 'package:yum_quick/core/widgets/custom_app_bar.dart';
import 'package:yum_quick/core/widgets/custom_body_container.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/checkout/shipping_address_section.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .055),
        CustomAppBar(title: 'Confirm Order'),
        const SizedBox(height: 33),
        CustomBodyContainer(
          child: Column(
            children: [const SizedBox(height: 40), ShippingAddressSection()],
          ),
        ),
      ],
    );
  }
}
