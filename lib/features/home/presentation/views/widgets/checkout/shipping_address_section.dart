import 'package:flutter/material.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class ShippingAddressSection extends StatelessWidget {
  const ShippingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    //! This widget should display the shipping address not as a text field but as a text with an edit button next to it. The user should be able to edit the shipping address by clicking on the edit button. The text field should be displayed in a dialog box when the user clicks on the edit button. The dialog box should have a text field for the user to enter the new shipping address and a save button to save the new shipping address. The new shipping address should be displayed in the ShippingAddressSection widget after the user saves it.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 46),
          child: Text(
            'Shipping Address',
            style: TextStyles.bold24.copyWith(height: 1.08),
          ),
        ),
        const SizedBox(height: 23),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          height: 35,
          child: TextField(
            style: TextStyles.regular16.copyWith(color: AppColors.primaryFont),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF5CB58),
              hintText: '778 Locust View Drive Oaklanda, CA',
              hintStyle: TextStyles.regular16.copyWith(
                color: AppColors.primaryFont,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 13),
              border: buildOutlineInputBorder(),
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    );
  }
}
