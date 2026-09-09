import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.image, this.onTap});
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: ShapeDecoration(
          color: AppColors.orangeLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        child: SvgPicture.asset(image, fit: BoxFit.scaleDown),
      ),
    );
  }
}
