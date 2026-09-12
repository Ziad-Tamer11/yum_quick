import 'package:flutter/material.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/core/widgets/custom_body_container.dart';
import 'package:yum_quick/core/widgets/custom_divider.dart';
import 'package:yum_quick/core/widgets/custom_item_details_app_bar.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/additional_item_section.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/item_details_action_buttons.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomItemDetailsAppBar(),
        CustomBodyContainer(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(
                right: kHorizontalPadding,
                left: kHorizontalPadding,
                top: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 224,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.imagesItemDetails),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        '\$50.00',
                        style: TextStyles.bold24.copyWith(
                          color: AppColors.orangeBase,
                        ),
                      ),
                      Spacer(),
                      ItemDetailsActionButtons(),
                    ],
                  ),
                  CustomDivider(),
                  const SizedBox(height: 18),
                  Text(
                    'Tortilla Chips With Toppins',
                    style: TextStyles.regular16.copyWith(
                      color: AppColors.primaryFont,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
                    style: TextStyles.light16,
                  ),
                  const SizedBox(height: 29),
                  AdditionalItemSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
