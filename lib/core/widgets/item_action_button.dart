import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';

class ItemActionButton extends StatelessWidget {
  const ItemActionButton({
    super.key,
    required this.icon,
    required this.color,
    required this.onTap,
    required this.width,
    required this.height,
    this.iconSize,
    this.iconColor,
  });
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final double width, height;
  final double? iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor ?? AppColors.secondaryFont,
          ),
        ),
      ),
    );
  }
}
