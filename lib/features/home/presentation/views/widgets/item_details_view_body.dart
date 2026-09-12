import 'package:flutter/material.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/core/widgets/custom_body_container.dart';
import 'package:yum_quick/core/widgets/custom_divider.dart';
import 'package:yum_quick/core/widgets/custom_item_details_app_bar.dart';
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
