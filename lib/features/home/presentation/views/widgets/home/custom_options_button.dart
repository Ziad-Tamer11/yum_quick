import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomOptionsButton extends StatelessWidget {
  const CustomOptionsButton({super.key, required this.image, this.onTap});
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: ShapeDecoration(
          color: const Color(0xFFF5F5F5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: SvgPicture.asset(image, fit: BoxFit.scaleDown),
      ),
    );
  }
}
