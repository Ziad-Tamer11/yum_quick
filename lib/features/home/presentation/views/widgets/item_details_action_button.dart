import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_colors.dart';

class ItemDetailsActionButton extends StatelessWidget {
  const ItemDetailsActionButton({
    super.key,
    required this.icon,
    required this.color,
    required this.onTap,
  });
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Container(
          width: 27,
          height: 27,
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Icon((icon), color: AppColors.secondaryFont),
        ),
      ),
    );
  }
}
