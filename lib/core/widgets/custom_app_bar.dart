import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 37),
      child: Row(
        spacing: 116,
        children: [
          SvgPicture.asset(Assets.imagesBackIconArrow),
          Text('Log In', style: TextStyles.bold28),
        ],
      ),
    );
  }
}
