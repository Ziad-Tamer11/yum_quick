import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_images.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: SvgPicture.asset(Assets.imagesFavorite, width: 10, height: 10),
      ),
    );
  }
}
